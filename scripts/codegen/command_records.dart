import 'dart:io';

void generateCommandRecordsFile() {
  String generateSingleCommandRecords(int num) {
    // T1, T2
    final genericTypes = List.generate(num, (index) => "T${index + 1}").join(", ");

    // Command<T1>,
    // Command<T2>,
    final commands = List.generate(num, (index) => "  Command<T${index + 1}>,").join("\n");

    // T1,
    // T2,
    final genericTypesLines = List.generate(num, (index) => "        T${index + 1},").join("\n");

    // $1,
    // $2,
    final params = List.generate(num, (index) => "      \$${index + 1},").join("\n");

    // command.output[0] as T1,
    // command.output[1] as T2,
    final commandOutputs = List.generate(num, (index) => "      command.output[$index].output as T${index + 1},").join("\n");

    // String,
    // String,
    final stringTypesLines = List.generate(num, (index) => "        String,").join("\n");

    // command.output[0].rawOutput,
    // command.output[1].rawOutput,
    final commandRawOutputs = List.generate(num, (index) => "      command.output[$index].rawOutput,").join("\n");

    // CommandOutput<T1>,
    // CommandOutput<T2>,
    final commandOutputTypesLines = List.generate(num, (index) => "        CommandOutput<T${index+1}>,").join("\n");

    // command.output[0] as CommandOutput<T1>,
    // command.output[1] as CommandOutput<T2>,
    final commandOutputOutputs = List.generate(num, (index) => "      command.output[$index].asType<T${index+1}>(),").join("\n");

    return """
extension CommandRecords$num<$genericTypes> on (
$commands
) {
  Future<
      (
$genericTypesLines
      )> run(HyprlandIPC hyprlandIPC) async {
    final command = await hyprlandIPC.runCommand(BatchCommand([
$params
    ]));
    return (
$commandOutputs
    );
  }
  Future<
      (
$stringTypesLines
      )> runRaw(HyprlandIPC hyprlandIPC) async {
    final command = await hyprlandIPC.runCommand(BatchCommand([
$params
    ]));
    return (
$commandRawOutputs
    );
  }
  Future<
      (
$commandOutputTypesLines
      )> runCommands(HyprlandIPC hyprlandIPC) async {
    final command = await hyprlandIPC.runCommand(BatchCommand([
$params
    ]));
    return (
$commandOutputOutputs
    );
  }
}
"""
        .trim();
  }

  final content = StringBuffer();

  content.write("import 'package:hyprland_ipc/src/hyprland_ipc_base.dart';\n");
  content.write("import 'package:hyprland_ipc/src/socket/commands/commands.dart';\n");
  content.write("\n");

  for (var i = 2; i <= 9; i++) {
    content.write(generateSingleCommandRecords(i));
    content.write("\n\n");
  }

  content.write("""
extension CommandRunner<T1> on Command<T1> {
  Future<T1> run(HyprlandIPC hyprlandIPC) async {
    return (await hyprlandIPC.runCommand(this)).output;
  }
  Future<String> runRaw(HyprlandIPC hyprlandIPC) async {
    return (await hyprlandIPC.runCommand(this)).rawOutput;
  }
  Future<CommandOutput<T1>> runCommands(HyprlandIPC hyprlandIPC) async {
    return await hyprlandIPC.runCommand(this);
  }
}

extension CommandRecords1<T1> on (
  Command<T1>,
) {
  Future<
      (
        T1,
      )> run(HyprlandIPC hyprlandIPC) async {
    return (
      (await hyprlandIPC.runCommand(\$1)).output,
    );
  }
  Future<
      (
        String,
      )> runRaw(HyprlandIPC hyprlandIPC) async {
    return (
      (await hyprlandIPC.runCommand(\$1)).rawOutput,
    );
  }
  Future<
      (
        CommandOutput<T1>,
      )> runCommands(HyprlandIPC hyprlandIPC) async {
    return (
      await hyprlandIPC.runCommand(\$1),
    );
  }
}
  """
      .trim());

  File("./lib/src/socket/command_records.g.dart").writeAsStringSync(content.toString());
}
