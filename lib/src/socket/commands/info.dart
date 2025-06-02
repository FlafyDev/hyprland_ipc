import 'dart:convert';
import 'dart:math';

import 'package:hyprland_ipc/src/socket/commands/core.dart';
import 'package:hyprland_ipc/src/socket/models.dart';
import 'package:hyprland_ipc/src/socket/window_rules.dart';

class GetVersionCommand extends Command<HyprlandVersion> {
  @override
  String getCommand() => "j/version";

  @override
  HyprlandVersion processOutput(String rawOutput) {
    return HyprlandVersion.fromJson(jsonDecode(rawOutput));
  }
}

class GetMonitorsCommand extends Command<List<MonitorInfo>> {
  @override
  String getCommand() => "j/monitors";

  @override
  List<MonitorInfo> processOutput(String rawOutput) {
    final json = jsonDecode(rawOutput) as List<dynamic>;
    return json.map((e) => MonitorInfo.fromJson(e)).toList();
  }
}

class GetWorkspacesCommand extends Command<List<WorkspaceInfo>> {
  @override
  String getCommand() => "j/workspaces";

  @override
  List<WorkspaceInfo> processOutput(String rawOutput) {
    final json = jsonDecode(rawOutput) as List<dynamic>;
    return json.map((e) => WorkspaceInfo.fromJson(e)).toList();
  }
}

// Assuming there is always an active workspace
class GetActiveWorkspaceCommand extends Command<WorkspaceInfo> {
  @override
  String getCommand() => "j/activeworkspace";

  @override
  WorkspaceInfo processOutput(String rawOutput) {
    final json = jsonDecode(rawOutput) as Map<String, Object?>;
    return WorkspaceInfo.fromJson(json);
  }
}

// TODO: workspacerules - gets the list of defined workspace rules

class GetClientsCommand extends Command<List<ClientInfo>> {
  @override
  String getCommand() => "j/clients";

  @override
  List<ClientInfo> processOutput(String rawOutput) {
    final json = jsonDecode(rawOutput) as List<dynamic>;
    return json.map((e) => ClientInfo.fromJson(e)).toList();
  }
}

class GetActiveClientCommand extends Command<ClientInfo?> {
  @override
  String getCommand() => "j/activewindow";

  @override
  ClientInfo? processOutput(String rawOutput) {
    final json = jsonDecode(rawOutput) as Map<String, Object?>;
    if (json.keys.isEmpty) {
      return null;
    }
    return ClientInfo.fromJson(json);
  }
}

// TODO: devices - lists all connected keyboards and mice
// TODO: decorations [window] - lists all decorations and their info
// TODO: binds - lists all registered binds
// TODO: layers - lists all the layers

class GetSplashCommand extends OutputCommand {
  @override
  String getCommand() => "splash";
}

class GetOptionCommand<T> extends Command<T> {
  const GetOptionCommand(this.option);

  final String option;

  @override
  String getCommand() => "j/getoption $option";

  @override
  T processOutput(rawOutput) {
    final json = jsonDecode(rawOutput) as Map<String, dynamic>;
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
}

class GetCursorPositionCommand extends Command<Point> {
  const GetCursorPositionCommand();

  @override
  String getCommand() => "j/cursorpos";

  @override
  Point processOutput(String rawOutput) {
    final json = jsonDecode(rawOutput) as Map<String, dynamic>;
    return Point(json["x"] as int, json["y"] as int);
  }
}

// TODO: animations - gets the currently configured info about animations and beziers
// TODO: instances - lists all running instances of Hyprland with their info
// TODO: layouts - lists all layouts available (including from plugins)
// TODO: configerrors - lists all current config parsing errors
// TODO: rollinglog - prints tail of the log
// TODO: locked - prints whether the current session is locked.

