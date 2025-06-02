import 'package:hyprland_ipc/src/hyprland_ipc_base.dart';
import 'package:hyprland_ipc/src/socket/commands/commands.dart';

extension CommandRecords2<T1, T2> on (
  Command<T1>,
  Command<T2>,
) {
  Future<
      (
        T1,
        T2,
      )> run(HyprlandIPC hyprlandIPC) async {
    final command = await hyprlandIPC.runCommand(BatchCommand([
      $1,
      $2,
    ]));
    return (
      command.output[0].output as T1,
      command.output[1].output as T2,
    );
  }
  Future<
      (
        String,
        String,
      )> runRaw(HyprlandIPC hyprlandIPC) async {
    final command = await hyprlandIPC.runCommand(BatchCommand([
      $1,
      $2,
    ]));
    return (
      command.output[0].rawOutput,
      command.output[1].rawOutput,
    );
  }
  Future<
      (
        CommandOutput<T1>,
        CommandOutput<T2>,
      )> runCommands(HyprlandIPC hyprlandIPC) async {
    final command = await hyprlandIPC.runCommand(BatchCommand([
      $1,
      $2,
    ]));
    return (
      command.output[0].asType<T1>(),
      command.output[1].asType<T2>(),
    );
  }
}

extension CommandRecords3<T1, T2, T3> on (
  Command<T1>,
  Command<T2>,
  Command<T3>,
) {
  Future<
      (
        T1,
        T2,
        T3,
      )> run(HyprlandIPC hyprlandIPC) async {
    final command = await hyprlandIPC.runCommand(BatchCommand([
      $1,
      $2,
      $3,
    ]));
    return (
      command.output[0].output as T1,
      command.output[1].output as T2,
      command.output[2].output as T3,
    );
  }
  Future<
      (
        String,
        String,
        String,
      )> runRaw(HyprlandIPC hyprlandIPC) async {
    final command = await hyprlandIPC.runCommand(BatchCommand([
      $1,
      $2,
      $3,
    ]));
    return (
      command.output[0].rawOutput,
      command.output[1].rawOutput,
      command.output[2].rawOutput,
    );
  }
  Future<
      (
        CommandOutput<T1>,
        CommandOutput<T2>,
        CommandOutput<T3>,
      )> runCommands(HyprlandIPC hyprlandIPC) async {
    final command = await hyprlandIPC.runCommand(BatchCommand([
      $1,
      $2,
      $3,
    ]));
    return (
      command.output[0].asType<T1>(),
      command.output[1].asType<T2>(),
      command.output[2].asType<T3>(),
    );
  }
}

extension CommandRecords4<T1, T2, T3, T4> on (
  Command<T1>,
  Command<T2>,
  Command<T3>,
  Command<T4>,
) {
  Future<
      (
        T1,
        T2,
        T3,
        T4,
      )> run(HyprlandIPC hyprlandIPC) async {
    final command = await hyprlandIPC.runCommand(BatchCommand([
      $1,
      $2,
      $3,
      $4,
    ]));
    return (
      command.output[0].output as T1,
      command.output[1].output as T2,
      command.output[2].output as T3,
      command.output[3].output as T4,
    );
  }
  Future<
      (
        String,
        String,
        String,
        String,
      )> runRaw(HyprlandIPC hyprlandIPC) async {
    final command = await hyprlandIPC.runCommand(BatchCommand([
      $1,
      $2,
      $3,
      $4,
    ]));
    return (
      command.output[0].rawOutput,
      command.output[1].rawOutput,
      command.output[2].rawOutput,
      command.output[3].rawOutput,
    );
  }
  Future<
      (
        CommandOutput<T1>,
        CommandOutput<T2>,
        CommandOutput<T3>,
        CommandOutput<T4>,
      )> runCommands(HyprlandIPC hyprlandIPC) async {
    final command = await hyprlandIPC.runCommand(BatchCommand([
      $1,
      $2,
      $3,
      $4,
    ]));
    return (
      command.output[0].asType<T1>(),
      command.output[1].asType<T2>(),
      command.output[2].asType<T3>(),
      command.output[3].asType<T4>(),
    );
  }
}

extension CommandRecords5<T1, T2, T3, T4, T5> on (
  Command<T1>,
  Command<T2>,
  Command<T3>,
  Command<T4>,
  Command<T5>,
) {
  Future<
      (
        T1,
        T2,
        T3,
        T4,
        T5,
      )> run(HyprlandIPC hyprlandIPC) async {
    final command = await hyprlandIPC.runCommand(BatchCommand([
      $1,
      $2,
      $3,
      $4,
      $5,
    ]));
    return (
      command.output[0].output as T1,
      command.output[1].output as T2,
      command.output[2].output as T3,
      command.output[3].output as T4,
      command.output[4].output as T5,
    );
  }
  Future<
      (
        String,
        String,
        String,
        String,
        String,
      )> runRaw(HyprlandIPC hyprlandIPC) async {
    final command = await hyprlandIPC.runCommand(BatchCommand([
      $1,
      $2,
      $3,
      $4,
      $5,
    ]));
    return (
      command.output[0].rawOutput,
      command.output[1].rawOutput,
      command.output[2].rawOutput,
      command.output[3].rawOutput,
      command.output[4].rawOutput,
    );
  }
  Future<
      (
        CommandOutput<T1>,
        CommandOutput<T2>,
        CommandOutput<T3>,
        CommandOutput<T4>,
        CommandOutput<T5>,
      )> runCommands(HyprlandIPC hyprlandIPC) async {
    final command = await hyprlandIPC.runCommand(BatchCommand([
      $1,
      $2,
      $3,
      $4,
      $5,
    ]));
    return (
      command.output[0].asType<T1>(),
      command.output[1].asType<T2>(),
      command.output[2].asType<T3>(),
      command.output[3].asType<T4>(),
      command.output[4].asType<T5>(),
    );
  }
}

extension CommandRecords6<T1, T2, T3, T4, T5, T6> on (
  Command<T1>,
  Command<T2>,
  Command<T3>,
  Command<T4>,
  Command<T5>,
  Command<T6>,
) {
  Future<
      (
        T1,
        T2,
        T3,
        T4,
        T5,
        T6,
      )> run(HyprlandIPC hyprlandIPC) async {
    final command = await hyprlandIPC.runCommand(BatchCommand([
      $1,
      $2,
      $3,
      $4,
      $5,
      $6,
    ]));
    return (
      command.output[0].output as T1,
      command.output[1].output as T2,
      command.output[2].output as T3,
      command.output[3].output as T4,
      command.output[4].output as T5,
      command.output[5].output as T6,
    );
  }
  Future<
      (
        String,
        String,
        String,
        String,
        String,
        String,
      )> runRaw(HyprlandIPC hyprlandIPC) async {
    final command = await hyprlandIPC.runCommand(BatchCommand([
      $1,
      $2,
      $3,
      $4,
      $5,
      $6,
    ]));
    return (
      command.output[0].rawOutput,
      command.output[1].rawOutput,
      command.output[2].rawOutput,
      command.output[3].rawOutput,
      command.output[4].rawOutput,
      command.output[5].rawOutput,
    );
  }
  Future<
      (
        CommandOutput<T1>,
        CommandOutput<T2>,
        CommandOutput<T3>,
        CommandOutput<T4>,
        CommandOutput<T5>,
        CommandOutput<T6>,
      )> runCommands(HyprlandIPC hyprlandIPC) async {
    final command = await hyprlandIPC.runCommand(BatchCommand([
      $1,
      $2,
      $3,
      $4,
      $5,
      $6,
    ]));
    return (
      command.output[0].asType<T1>(),
      command.output[1].asType<T2>(),
      command.output[2].asType<T3>(),
      command.output[3].asType<T4>(),
      command.output[4].asType<T5>(),
      command.output[5].asType<T6>(),
    );
  }
}

extension CommandRecords7<T1, T2, T3, T4, T5, T6, T7> on (
  Command<T1>,
  Command<T2>,
  Command<T3>,
  Command<T4>,
  Command<T5>,
  Command<T6>,
  Command<T7>,
) {
  Future<
      (
        T1,
        T2,
        T3,
        T4,
        T5,
        T6,
        T7,
      )> run(HyprlandIPC hyprlandIPC) async {
    final command = await hyprlandIPC.runCommand(BatchCommand([
      $1,
      $2,
      $3,
      $4,
      $5,
      $6,
      $7,
    ]));
    return (
      command.output[0].output as T1,
      command.output[1].output as T2,
      command.output[2].output as T3,
      command.output[3].output as T4,
      command.output[4].output as T5,
      command.output[5].output as T6,
      command.output[6].output as T7,
    );
  }
  Future<
      (
        String,
        String,
        String,
        String,
        String,
        String,
        String,
      )> runRaw(HyprlandIPC hyprlandIPC) async {
    final command = await hyprlandIPC.runCommand(BatchCommand([
      $1,
      $2,
      $3,
      $4,
      $5,
      $6,
      $7,
    ]));
    return (
      command.output[0].rawOutput,
      command.output[1].rawOutput,
      command.output[2].rawOutput,
      command.output[3].rawOutput,
      command.output[4].rawOutput,
      command.output[5].rawOutput,
      command.output[6].rawOutput,
    );
  }
  Future<
      (
        CommandOutput<T1>,
        CommandOutput<T2>,
        CommandOutput<T3>,
        CommandOutput<T4>,
        CommandOutput<T5>,
        CommandOutput<T6>,
        CommandOutput<T7>,
      )> runCommands(HyprlandIPC hyprlandIPC) async {
    final command = await hyprlandIPC.runCommand(BatchCommand([
      $1,
      $2,
      $3,
      $4,
      $5,
      $6,
      $7,
    ]));
    return (
      command.output[0].asType<T1>(),
      command.output[1].asType<T2>(),
      command.output[2].asType<T3>(),
      command.output[3].asType<T4>(),
      command.output[4].asType<T5>(),
      command.output[5].asType<T6>(),
      command.output[6].asType<T7>(),
    );
  }
}

extension CommandRecords8<T1, T2, T3, T4, T5, T6, T7, T8> on (
  Command<T1>,
  Command<T2>,
  Command<T3>,
  Command<T4>,
  Command<T5>,
  Command<T6>,
  Command<T7>,
  Command<T8>,
) {
  Future<
      (
        T1,
        T2,
        T3,
        T4,
        T5,
        T6,
        T7,
        T8,
      )> run(HyprlandIPC hyprlandIPC) async {
    final command = await hyprlandIPC.runCommand(BatchCommand([
      $1,
      $2,
      $3,
      $4,
      $5,
      $6,
      $7,
      $8,
    ]));
    return (
      command.output[0].output as T1,
      command.output[1].output as T2,
      command.output[2].output as T3,
      command.output[3].output as T4,
      command.output[4].output as T5,
      command.output[5].output as T6,
      command.output[6].output as T7,
      command.output[7].output as T8,
    );
  }
  Future<
      (
        String,
        String,
        String,
        String,
        String,
        String,
        String,
        String,
      )> runRaw(HyprlandIPC hyprlandIPC) async {
    final command = await hyprlandIPC.runCommand(BatchCommand([
      $1,
      $2,
      $3,
      $4,
      $5,
      $6,
      $7,
      $8,
    ]));
    return (
      command.output[0].rawOutput,
      command.output[1].rawOutput,
      command.output[2].rawOutput,
      command.output[3].rawOutput,
      command.output[4].rawOutput,
      command.output[5].rawOutput,
      command.output[6].rawOutput,
      command.output[7].rawOutput,
    );
  }
  Future<
      (
        CommandOutput<T1>,
        CommandOutput<T2>,
        CommandOutput<T3>,
        CommandOutput<T4>,
        CommandOutput<T5>,
        CommandOutput<T6>,
        CommandOutput<T7>,
        CommandOutput<T8>,
      )> runCommands(HyprlandIPC hyprlandIPC) async {
    final command = await hyprlandIPC.runCommand(BatchCommand([
      $1,
      $2,
      $3,
      $4,
      $5,
      $6,
      $7,
      $8,
    ]));
    return (
      command.output[0].asType<T1>(),
      command.output[1].asType<T2>(),
      command.output[2].asType<T3>(),
      command.output[3].asType<T4>(),
      command.output[4].asType<T5>(),
      command.output[5].asType<T6>(),
      command.output[6].asType<T7>(),
      command.output[7].asType<T8>(),
    );
  }
}

extension CommandRecords9<T1, T2, T3, T4, T5, T6, T7, T8, T9> on (
  Command<T1>,
  Command<T2>,
  Command<T3>,
  Command<T4>,
  Command<T5>,
  Command<T6>,
  Command<T7>,
  Command<T8>,
  Command<T9>,
) {
  Future<
      (
        T1,
        T2,
        T3,
        T4,
        T5,
        T6,
        T7,
        T8,
        T9,
      )> run(HyprlandIPC hyprlandIPC) async {
    final command = await hyprlandIPC.runCommand(BatchCommand([
      $1,
      $2,
      $3,
      $4,
      $5,
      $6,
      $7,
      $8,
      $9,
    ]));
    return (
      command.output[0].output as T1,
      command.output[1].output as T2,
      command.output[2].output as T3,
      command.output[3].output as T4,
      command.output[4].output as T5,
      command.output[5].output as T6,
      command.output[6].output as T7,
      command.output[7].output as T8,
      command.output[8].output as T9,
    );
  }
  Future<
      (
        String,
        String,
        String,
        String,
        String,
        String,
        String,
        String,
        String,
      )> runRaw(HyprlandIPC hyprlandIPC) async {
    final command = await hyprlandIPC.runCommand(BatchCommand([
      $1,
      $2,
      $3,
      $4,
      $5,
      $6,
      $7,
      $8,
      $9,
    ]));
    return (
      command.output[0].rawOutput,
      command.output[1].rawOutput,
      command.output[2].rawOutput,
      command.output[3].rawOutput,
      command.output[4].rawOutput,
      command.output[5].rawOutput,
      command.output[6].rawOutput,
      command.output[7].rawOutput,
      command.output[8].rawOutput,
    );
  }
  Future<
      (
        CommandOutput<T1>,
        CommandOutput<T2>,
        CommandOutput<T3>,
        CommandOutput<T4>,
        CommandOutput<T5>,
        CommandOutput<T6>,
        CommandOutput<T7>,
        CommandOutput<T8>,
        CommandOutput<T9>,
      )> runCommands(HyprlandIPC hyprlandIPC) async {
    final command = await hyprlandIPC.runCommand(BatchCommand([
      $1,
      $2,
      $3,
      $4,
      $5,
      $6,
      $7,
      $8,
      $9,
    ]));
    return (
      command.output[0].asType<T1>(),
      command.output[1].asType<T2>(),
      command.output[2].asType<T3>(),
      command.output[3].asType<T4>(),
      command.output[4].asType<T5>(),
      command.output[5].asType<T6>(),
      command.output[6].asType<T7>(),
      command.output[7].asType<T8>(),
      command.output[8].asType<T9>(),
    );
  }
}

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
      (await hyprlandIPC.runCommand($1)).output,
    );
  }
  Future<
      (
        String,
      )> runRaw(HyprlandIPC hyprlandIPC) async {
    return (
      (await hyprlandIPC.runCommand($1)).rawOutput,
    );
  }
  Future<
      (
        CommandOutput<T1>,
      )> runCommands(HyprlandIPC hyprlandIPC) async {
    return (
      await hyprlandIPC.runCommand($1),
    );
  }
}