import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
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
    _eventsStream = _createEventsStream();
  }

  final FutureOr<Socket> Function() _createSocketConnection;
  final Socket socket2;
  late final Stream<Event> _eventsStream;

  Stream<Event> get eventsStream => _eventsStream;

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

  Future<Point> getCursorPosition() async {
    final out = await _runCommand("j/cursorpos");
    final json = jsonDecode(out) as Map<String, dynamic>;
    return Point(json["x"] as int, json["y"] as int);
  }

  Future<T> getOption<T>(String option) async {
    final out = await _runCommand("j/getoption $option");
    final json = jsonDecode(out) as Map<String, dynamic>;
    if (T is int) {
      return json["int"] as T;
    } else if (T is double) {
      return json["float"] as T;
    } else if (T is String) {
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

  Future<dynamic> getVersion() async {
    final out = await _runCommand("j/version");
    throw UnimplementedError();
  }

  Future<dynamic> getDevices() async {
    final out = await _runCommand("j/devices");
    throw UnimplementedError();
  }

  Future<Client> getActiveWindow() async {
    final out = await _runCommand("j/activewindow");
    final json = jsonDecode(out) as Map<String, dynamic>;
    return Client.fromSocketJson(json);
  }

  Future<List<Client>> getClients() async {
    final out = await _runCommand("j/clients");
    final json = jsonDecode(out) as List<Map<String, dynamic>>;
    return json.map((e) => Client.fromSocketJson(e)).toList();
  }

  Future<List<Workspace>> getWorkspaces() async {
    final out = await _runCommand("j/workspaces");
    final json = jsonDecode(out) as List<Map<String, dynamic>>;
    return json.map((e) => Workspace.fromSocketJson(e)).toList();
  }

  Future<List<Monitor>> getMonitors() async {
    final out = await _runCommand("j/monitors");
    final json = jsonDecode(out) as List<Map<String, dynamic>>;
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
            address: int.parse(layerJson["address"] as String, radix: 16),
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

  Future<String> _runCommand(String command) async {
    final socket = await _createSocketConnection();
    socket.add(utf8.encode(command));
    String result = "";
    await for (final data in socket) {
      result += utf8.decode(data);
    }
    return result;
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
