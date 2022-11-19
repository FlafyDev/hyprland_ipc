import 'dart:math';

import 'package:hyprland_ipc/hyprland_ipc.dart';
import 'package:hyprland_ipc/src/socket/models.dart';
import 'package:hyprland_ipc/src/socket/window_rules.dart';

void main() async {
  final HyprlandIPC hyprlandIPC = await HyprlandIPC.fromInstance();

  final layers = await hyprlandIPC.getLayers();
  final activeWindow = await hyprlandIPC.getActiveWindow();
  final monitors = await hyprlandIPC.getMonitors();
  final workspaces = await hyprlandIPC.getWorkspaces();
  final clients = await hyprlandIPC.getClients();

  // hyprlandIPC.executeShellCommand(
  //   "foot",
  //   windowRules: [
  //     FloatWindowRule(),
  //     NoBlurWindowRule(),
  //     SizeWindowRule(Point(100, 100)),
  //     MoveWindowRule(Point(100, 100)),
  //     OpacityMultiplierWindowRule.split(active: 1, inactive: 0.5),
  //   ],
  // );

  print(
      "Layers:\n${layers.map((layer) => "- ${layer.namespace}, ${layer.level}").join("\n")}\n");
  print(
      "Active Window: ${activeWindow.className}, width: ${activeWindow.rect.width}");
  print("Monitors: ${monitors.map((monitor) => monitor.name).join(", ")}");
  print(
      "Active workspace: ${workspaces.firstWhere((workspace) => activeWindow.workspaceId == workspace.id).name}");
  print("Number of windows: ${clients.length}");
  print("Current splash: ${await hyprlandIPC.getSplash()}");

  await hyprlandIPC.reload(configOnly: true);
  print("reloaded config only");

  print(await hyprlandIPC.getOption<int>("decoration:rounding"));
  print(await hyprlandIPC.getOption<String>("input:kb_file"));

  print(
      "Cursor x: ${await hyprlandIPC.getCursorPosition().then((pos) => pos.x)}");

  final address = (clients..shuffle()).first.address;

  hyprlandIPC.focusWindow(WindowRefAddress(address));

  await hyprlandIPC.addWindowRules(
    WindowRefClass("qutebrowser"),
    windowRules: <DynamicWindowRule>[BorderColorWindowRule(x)],
  );

  hyprlandIPC.eventsStream.listen((event) {
    if (event is FullscreenEvent) {
      print("Fullscreen: ${event.fullscreen}");
    }
  });
}
