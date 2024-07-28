export 'package:hyprland_ipc/src/socket/commands/core.dart';
export 'package:hyprland_ipc/src/socket/commands/info.dart';
export 'package:hyprland_ipc/src/socket/commands/dispatchers.dart';
export 'package:hyprland_ipc/src/socket/commands/hyprctl.dart';

// class KillCommand extends Command<void> {
//   @override
//   Future<void> execute(HyprlandIPC ipc) async {
//     await ipc.runCommand("kill");
//   }
// }


// class GetClientsCommand extends Command<List<Client>> {
//   @override
//   Future<List<Client>> execute(HyprlandIPC ipc) async {
//     final out = await ipc.runCommand("j/clients");
//     final json = jsonDecode(out) as List;
//     return json.map((e) => Client.fromSocketJson(e)).toList();
//   }
// }

// class GetWorkspacesCommand extends Command<List<Workspace>> {
//   @override
//   Future<List<Workspace>> execute(HyprlandIPC ipc) async {
//     final out = await ipc.runCommand("j/workspaces");
//     final json = jsonDecode(out) as List;
//     return json.map((e) => Workspace.fromSocketJson(e)).toList();
//   }
// }

// class GetMonitorsCommand extends Command<List<Monitor>> {
//   @override
//   Future<List<Monitor>> execute(HyprlandIPC ipc) async {
//     final out = await ipc.runCommand("j/monitors");
//     final json = jsonDecode(out) as List;
//     return json.map((e) => Monitor.fromSocketJson(e)).toList();
//   }
// }

// class GetLayersCommand extends Command<List<LayerSurface>> {
//   @override
//   Future<List<LayerSurface>> execute(HyprlandIPC ipc) async {
//     final out = await ipc.runCommand("j/layers");
//     final json = jsonDecode(out) as Map<String, dynamic>;
//     final layers = <LayerSurface>[];

//     for (final String monitor in json.keys) {
//       for (final String levelIndex in json[monitor]["levels"].keys) {
//         for (final Map<String, dynamic> layerJson in json[monitor]["levels"]
//             [levelIndex]) {
//           layers.add(LayerSurface(
//             address: int.parse(
//               (layerJson["address"] as String).substring(2),
//               radix: 16,
//             ),
//             rect: Rectangle(
//               layerJson["x"] as int,
//               layerJson["y"] as int,
//               layerJson["w"] as int,
//               layerJson["h"] as int,
//             ),
//             namespace: layerJson["namespace"] as String,
//             level: LayerSurfaceLevel.values[int.parse(levelIndex)],
//             monitor: monitor,
//           ));
//         }
//       }
//     }

//     return layers;
//   }
// }
