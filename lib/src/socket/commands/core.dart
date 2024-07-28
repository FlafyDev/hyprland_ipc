abstract class Command<T> {
  const Command();
  String getCommand();
  T processOutput(String rawOutput) {
    throw UnimplementedError();
  }

  CommandOutput<T> fromRawOutput(String rawOutput) {
    rawOutput = rawOutput.trim();
    return CommandOutput<T>(
      rawOutput: rawOutput,
      evalOutput: () => processOutput(rawOutput),
    );
  }
}

abstract class ActionCommand extends Command<void> {
  const ActionCommand();
  @override
  void processOutput(String rawOutput) {}
}

abstract class OutputCommand extends Command<String> {
  const OutputCommand();
  @override
  String processOutput(String rawOutput) => rawOutput;
}

class CommandOutput<T> {
  CommandOutput({
    required this.rawOutput,
    required T Function() evalOutput,
  }) : _evalOutput = evalOutput;

  CommandOutput<T1> asType<T1>() {
    return CommandOutput<T1>(
      rawOutput: rawOutput,
      evalOutput: () => output as T1,
    );
  }

  final String rawOutput;
  final T Function() _evalOutput;
  late final T output = _evalOutput();
}

class BatchCommand extends Command<List<CommandOutput<dynamic>>> {
  const BatchCommand(this.commands);

  final List<Command> commands;

  @override
  List<CommandOutput<dynamic>> processOutput(String rawOutput) {
    return rawOutput
        .split("\n\n\n")
        .asMap()
        .entries
        .map(
          (e) => commands[e.key].fromRawOutput(e.value),
        )
        .toList();
  }

  @override
  String getCommand() {
    return "[[BATCH]] ${commands.map((cmd) => cmd.getCommand()).join(';')}";
  }
}

class CustomCommand extends OutputCommand {
  const CustomCommand(this.command);
  final String command;

  @override
  String getCommand() => command;
}

