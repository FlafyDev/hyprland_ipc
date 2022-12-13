import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'socket/window_rules.dart';
import 'socket2/events.dart';
import 'socket/models.dart';

// TODO
// Finish all the unimplemented methods.
// Do dispatch and keyword
// Do hyprpaper
// Separate to files.
class HyprlandIPC {
  HyprlandIPC({
    required FutureOr<Socket> Function() createSocketConnection,
    required this.socket2,
  }) : _createSocketConnection = createSocketConnection {
    _eventsStream = _createEventsStream().asBroadcastStream();
  }

  final FutureOr<Socket> Function() _createSocketConnection;
  final Socket socket2;
  late final Stream<Event> _eventsStream;

  Stream<Event> get eventsStream => _eventsStream;

  Future<String> _runCommand(String command) async {
    final socket = await _createSocketConnection();
    socket.add(utf8.encode(command));
    String result = "";
    await for (final data in socket) {
      result += utf8.decode(data);
    }
    return result;
  }

  Stream<Event> _createEventsStream() async* {
    await for (final data in socket2) {
      final events = utf8
          .decode(data)
          .split("\n")
          .where((event) => event.trim().isNotEmpty);
      for (String event in events) {
        try {
          yield Event.fromString(event);
        } on Exception catch (e) {
          throw Exception(["Couldn't parse event: $event", e]);
        }
      }
    }
  }

  Future<void> keyword(String keyword, String arg) async {
    await _runCommand("keyword $keyword $arg");
  }

  String _boolToNum(bool b) => b ? "1" : "0";

  Future<void> addWindowRules({
    String? titleRegex,
    String? classRegex,
    bool? xwayland,
    bool? floating,
    bool? fullscreen,
    bool? pinned,
    required List<WindowRule> windowRules,
  }) async {
    final fields = [
      if (titleRegex != null) "title:$titleRegex",
      if (classRegex != null) "class:$classRegex",
      if (xwayland != null) "xwayland ${_boolToNum(xwayland)}",
      if (floating != null) "floating ${_boolToNum(floating)}",
      if (fullscreen != null) "fullscreen ${_boolToNum(fullscreen)}",
      if (pinned != null) "pinned ${_boolToNum(pinned)}",
    ].join(",");
    assert(fields.isNotEmpty);
    for (final rule in windowRules) {
      await _runCommand(
        "keyword windowrulev2 ${rule.convert()},$fields",
      );
      print("keyword windowrulev2 ${rule.convert()},$fields");
    }
  }

  Future<void> executeShellCommand(
    String command, {
    List<WindowRule>? windowRules,
  }) async {
    final compiledRules = windowRules?.map((rule) => rule.convert()).join(";");
    await _runCommand("dispatch exec [$compiledRules] $command ");
  }

  Future<void> passToWindow(WindowRef window) async {
    await _runCommand("dispatch pass $window");
  }

  Future<void> killActiveWindow() async {
    await _runCommand("dispatch killactive");
  }

  Future<void> closeWindow(WindowRef window) async {
    await _runCommand("dispatch closewindow $window");
  }

  Future<void> changeToWorkspace(WorkspaceRef workspace) async {
    await _runCommand("dispatch workspace $workspace");
  }

  Future<void> moveWindowToWorkspace({
    required WorkspaceRef workspace,
    WindowRef? window,
    bool switchWorkspace = true,
  }) async {
    final String dispatcher =
        switchWorkspace ? "movetoworkspace" : "movetoworkspacesilent";
    final String args =
        workspace.toString() + (window != null ? ",$window" : "");
    await _runCommand("dispatch $dispatcher $args");
  }

  Future<void> toggleFloating({WindowRef? window}) async {
    await _runCommand("dispatch togglefloating ${window?.toString() ?? ""}");
  }

  Future<void> toggleFullscreenActiveWindow(FullscreenMode mode) async {
    await _runCommand("dispatch fullscreen ${mode.name}");
  }

  Future<void> dpms(bool on, {MonitorRefName? monitorName}) async {
    await _runCommand(
      "dispatch dpms ${on ? "on" : "off"} ${monitorName?.name ?? ""}",
    );
  }

  Future<void> togglePseudoActiveWindow() async {
    await _runCommand("dispatch pseudo");
  }

  Future<void> pinActiveWindow() async {
    await _runCommand("dispatch pin");
  }

  Future<void> moveFocus(Direction direction) async {
    await _runCommand("dispatch movefocus ${direction.name}");
  }

  Future<void> moveActiveWindow(Direction direction) async {
    await _runCommand("dispatch movewindow ${direction.name}");
  }

  Future<void> moveActiveWindowToMonitor(MonitorRef monitor) async {
    await _runCommand("dispatch movewindow mon:$monitor");
  }

  Future<void> resizeWindowPixels(
    Point pixels, {
    WindowRef? window,
    bool relative = false,
  }) async {
    final cmd = window != null ? "resizewindowpixel" : "resizeactive";
    final resizeParam = "${relative ? "" : "exact "}${pixels.x} ${pixels.y}";
    final String args = resizeParam + (window != null ? ",$window" : "");
    await _runCommand("dispatch $cmd $args");
  }

  Future<void> moveWindowPixels(
    Point pixels, {
    WindowRef? window,
    bool relative = false,
  }) async {
    final cmd = window != null ? "movewindowpixel" : "moveactive";
    final resizeParam = "${relative ? "" : "exact "}${pixels.x} ${pixels.y}";
    final String args = resizeParam + (window != null ? ",$window" : "");
    await _runCommand("dispatch $cmd $args");
  }

  Future<void> cycleWindows({bool reverse = false}) async {
    await _runCommand("dispatch cyclenext ${reverse ? "prev" : ""}");
  }

  Future<void> swapWindows({bool reverse = false}) async {
    await _runCommand("dispatch swapnext ${reverse ? "prev" : ""}");
  }

  Future<void> focusWindow(WindowRef window) async {
    await _runCommand("dispatch focuswindow $window");
  }

  Future<void> focusMonitor(MonitorRef monitor) async {
    await _runCommand("dispatch focusmonitor $monitor");
  }

  Future<void> setSplitRatio(double ratio) async {
    await _runCommand("dispatch splitratio $ratio");
  }

  Future<void> toggleActiveWindowOpaque() async {
    await _runCommand("dispatch toggleopaque");
  }

  Future<void> moveCursorToCornerOfActiveWindow(Corner corner) async {
    await _runCommand("dispatch movecursortoconrner ${corner.index}");
  }

  Future<void> toggleActiveWorkspaceOption(WorkspaceOption option) async {
    await _runCommand("dispatch workspaceopt ${option.name}");
  }

  Future<void> exit() async {
    await _runCommand("dispatch exit");
  }

  Future<void> forceRendererReload() async {
    await _runCommand("dispatch forcerendererreload");
  }

  Future<void> moveWorkspaceToMonitor(MonitorRef monitor,
      {WorkspaceRef? workspace}) async {
    final args = (workspace != null ? "$workspace " : "") + monitor.toString();
    final cmd = workspace != null
        ? "moveworkspacetomonitor"
        : "movecurrentworkspacetomonitor";
    await _runCommand("dispatch $cmd $args");
  }

  Future<void> swapActiveWorkspaces(
      MonitorRef monitor1, MonitorRef monitor2) async {
    await _runCommand("dispatch swapactiveworkspaces $monitor1 $monitor2");
  }

  Future<void> bringActiveWindowToTop() async {
    await _runCommand("dispatch bringactivetotop");
  }

  Future<void> toggleSpecialWorkspace() async {
    await _runCommand("dispatch togglespecialworkspace");
  }

  Future<Point> getCursorPosition() async {
    final out = await _runCommand("j/cursorpos");
    final json = jsonDecode(out) as Map<String, dynamic>;
    return Point(json["x"] as int, json["y"] as int);
  }

  Future<T> getOption<T>(String option) async {
    final out = await _runCommand("j/getoption $option");
    final json = jsonDecode(out) as Map<String, dynamic>;
    if (T == int) {
      return json["int"] as T;
    } else if (T == double) {
      return json["float"] as T;
    } else if (T == String) {
      return json["str"] as T;
    } else {
      throw Exception("Unknown type $T");
    }
  }

  Future<void> setCursor() {
    throw UnimplementedError();
  }

  Future<void> reload({
    bool configOnly = false,
  }) {
    return _runCommand("reload${configOnly ? " config-only" : ""}");
  }

  Future<String> getSplash() async {
    return (await _runCommand("splash")).trim();
  }

  Future<void> kill() async {
    await _runCommand("kill");
  }

  Future<HyprlandVersion> getVersion() async {
    final out = await _runCommand("j/version");
    return HyprlandVersion.fromJson(jsonDecode(out));
  }

  Future<dynamic> getDevices() async {
    final out = await _runCommand("j/devices");
    return jsonDecode(out);
  }

  Future<Client> getActiveWindow() async {
    final out = await _runCommand("j/activewindow");
    final json = jsonDecode(out) as Map<String, dynamic>;
    return Client.fromSocketJson(json);
  }

  Future<List<Client>> getClients() async {
    final out = await _runCommand("j/clients");
    final json = jsonDecode(out) as List;
    return json.map((e) => Client.fromSocketJson(e)).toList();
  }

  Future<List<Workspace>> getWorkspaces() async {
    final out = await _runCommand("j/workspaces");
    final json = jsonDecode(out) as List;
    return json.map((e) => Workspace.fromSocketJson(e)).toList();
  }

  Future<List<Monitor>> getMonitors() async {
    final out = await _runCommand("j/monitors");
    final json = jsonDecode(out) as List;
    return json.map((e) => Monitor.fromSocketJson(e)).toList();
  }

  Future<List<LayerSurface>> getLayers() async {
    final out = await _runCommand("j/layers");
    final json = jsonDecode(out) as Map<String, dynamic>;
    final layers = <LayerSurface>[];

    for (final String monitor in json.keys) {
      for (final String levelIndex in json[monitor]["levels"].keys) {
        for (final Map<String, dynamic> layerJson in json[monitor]["levels"]
            [levelIndex]) {
          layers.add(LayerSurface(
            address: int.parse(
              (layerJson["address"] as String).substring(2),
              radix: 16,
            ),
            rect: Rectangle(
              layerJson["x"] as int,
              layerJson["y"] as int,
              layerJson["w"] as int,
              layerJson["h"] as int,
            ),
            namespace: layerJson["namespace"] as String,
            level: LayerSurfaceLevel.values[int.parse(levelIndex)],
            monitor: monitor,
          ));
        }
      }
    }

    return layers;
  }

  static Future<HyprlandIPC> fromInstance({String? instance}) async {
    instance = instance ?? Platform.environment["HYPRLAND_INSTANCE_SIGNATURE"];
    assert(instance != null);
    return HyprlandIPC(
      createSocketConnection: () async => await Socket.connect(
          InternetAddress(
            "/tmp/hypr/$instance/.socket.sock",
            type: InternetAddressType.unix,
          ),
          0),
      socket2: await Socket.connect(
          InternetAddress(
            "/tmp/hypr/$instance/.socket2.sock",
            type: InternetAddressType.unix,
          ),
          0),
    );
  }
}
