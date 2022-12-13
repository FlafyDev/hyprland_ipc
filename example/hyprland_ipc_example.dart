import 'dart:math';

import 'package:hyprland_ipc/hyprland_ipc.dart';
import 'package:color/color.dart';

void example1() async {
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

  // hyprlandIPC.focusWindow(WindowRefAddress(address));

  await hyprlandIPC.addWindowRules(
    classRegex: "qutebrowser",
    windowRules: <DynamicWindowRule>[
      // BorderColorWindowRule(int.parse("ffffffff", radix: 16)),
      // NoBorderWindowRule(),
    ],
  );

  Color currentColor = Color.rgb(0, 100, 200);

  bool rUp = true;
  bool bUp = true;
  bool gUp = true;

  await for (final _ in Stream.periodic(Duration(milliseconds: 100))) {
    // cycle through colors

    final RgbColor rgb = currentColor.toRgbColor();

    if (rgb.r >= 255 || rgb.r <= 0) rUp = !rUp;
    if (rgb.g >= 255 || rgb.g <= 0) gUp = !rUp;
    if (rgb.b >= 255 || rgb.b <= 0) bUp = !rUp;

    currentColor = Color.rgb(
      (rgb.r + 10 * (rUp ? 1 : -1)).clamp(0, 255),
      (rgb.g + 10 * (gUp ? 1 : -1)).clamp(0, 255),
      (rgb.b + 10 * (bUp ? 1 : -1)).clamp(0, 255),
    );
    print(currentColor);

    print("rgba(${currentColor.toHexColor().toString()}ff)");
    await hyprlandIPC.keyword("general:col.active_border",
        "rgba(${currentColor.toHexColor().toString()}ff)");
  }

  print("DONE");

  hyprlandIPC.eventsStream.listen((event) {
    if (event is FullscreenEvent) {
      print("Fullscreen: ${event.fullscreen}");
    }
  });
}

void topOnSelect() async {
  final hyprlandIPC = await HyprlandIPC.fromInstance();
  hyprlandIPC.eventsStream.listen((event) {
    if (event is ActiveWindowEvent) {
      hyprlandIPC.bringActiveWindowToTop();
    }
  });
}

double easeOutSine(double x) {
  return sin((x * pi) / 2);
}

void coolBorderAnimation() async {
  final hyprlandIPC = await HyprlandIPC.fromInstance();

  const startDeg = 155;
  const endDeg = 135 + 90;
  const seconds = 1;

  double secondsPassed = 0;
  await for (final _ in Stream.periodic(Duration(milliseconds: 50))) {
    secondsPassed += 0.05;
    final percent = secondsPassed / seconds;
    if (percent > 1) break;
    print(percent);
    final deg = startDeg + (endDeg - startDeg) * easeOutSine(percent);

    // for loop through col indexes

    // final deg = easeOutSine((DateTime.now().millisecondsSinceEpoch % 1000) / 1000) *
    //     (endDeg - startDeg) +
    //     startDeg;

    // final rgbHex = col.toRadixString(16).padLeft(2, "0") * 3;
    final rgbHex = Color.rgb(255, 255, 255).toHexColor().toString();
    final value =
        "rgba(${rgbHex}ff) rgba(00000000) rgba(00000000) rgba(00000000) rgba(00000000) rgba(00000000) rgba(00000000) rgba(${rgbHex}ff) ${deg}deg";
    print(value);
    await hyprlandIPC.keyword("general:col.active_border", value);
  }
}

void singleWindowGaps() async {
  final hyprlandIPC = await HyprlandIPC.fromInstance();
  final clients = await hyprlandIPC.getClients();
  final workspacesClients = <String, List<int>>{};

  void applyGaps(String workspaceName) {
    if (!workspacesClients.containsKey(workspaceName)) return;
    print("applying gaps to $workspaceName");
    hyprlandIPC.keyword("ws_gaps_out",
        "$workspaceName,${workspacesClients[workspaceName]!.length > 1 ? "" : 100}");
  }

  void addAddress(String workspaceName, int address) {
    if (workspacesClients.containsKey(workspaceName)) {
      workspacesClients[workspaceName]!.add(address);
    } else {
      workspacesClients[workspaceName] = [address];
    }
  }

  String? removeAddress(int address) {
    String? workName;
    workspacesClients.forEach((workspaceName, addresses) {
      if (workspacesClients[workspaceName]!.remove(address)) {
        workName = workspaceName;
      }
    });
    return workName;
  }

  for (final client in clients) {
    addAddress(client.workspaceName, client.address);
  }

  await for (final event in hyprlandIPC.eventsStream) {
    if (event is OpenWindowEvent) {
      addAddress(event.workspaceName, event.windowAddress);
      applyGaps(event.workspaceName);
      print("opened ${event.workspaceName}");
    } else if (event is CloseWindowEvent) {
      final workspaceName = removeAddress(event.windowAddress);
      if (workspaceName != null) {
        applyGaps(workspaceName);
      }
    } else if (event is MoveWindowEvent) {
      removeAddress(event.windowAddress);
      addAddress(event.workspaceName, event.windowAddress);
      applyGaps(event.workspaceName);
    } else if (event is WorkspaceEvent) {
      if (!workspacesClients.containsKey(event.workspaceName)) {
        workspacesClients[event.workspaceName] = [];
      }
      applyGaps(event.workspaceName);
    }
  }
}

void main() async {
  singleWindowGaps();
}
