import 'dart:math';

// abstract class Device {
//   abstract final int address;
// }
//
// class Mouse implements Device {
//   @override
//   final int address;
//   final String name;
//   final double defaultSpeed;
//
//   Mouse({
//     required this.address,
//     required this.name,
//     required this.defaultSpeed,
//   });
//
//   Mouse.fromSocketJson(Map<String, dynamic> json)
//       : address =
//             int.parse((json["address"] as String).substring(2), radix: 16),
//         name = json["name"] as String,
//         defaultSpeed = json["defaultSpeed"] as double;
// }
//
// class Keyboard implements Device {
//   @override
//   final int address;
//   final String name;
//   final String rules;
//   final String model;
//   final String layout;
//   final String variant;
//   final String options;
//   final String activeKeymap;
//   final String main;
//
//   Keyboard({
//     required this.address,
//     required this.name,
//     required this.rules,
//     required this.model,
//     required this.layout,
//     required this.variant,
//     required this.options,
//     required this.activeKeymap,
//     required this.main,
//   });
//
//   Keyboard.fromSocketJson(Map<String, dynamic> json)
//       : address =
//             int.parse((json["address"] as String).substring(2), radix: 16),
//         name = json["name"] as String,
//         rules = json["rules"] as String,
//         model = json["model"] as String,
//         layout = json["layout"] as String,
//         variant = json["variant"] as String,
//         options = json["options"] as String,
//         activeKeymap = json["active_keymap"] as String,
//         main = json["main"] as String;
// }
//
// class TabletPad implements Device {
//   @override
//   final int address;
//   final String type;
//   final int belongsToAddress;
//   final String belongsToName;
//
//   TabletPad({
//     required this.address,
//     required this.type,
//     required this.belongsToAddress,
//     required this.belongsToName,
//   });
//
//   TabletPad.fromSocketJson(Map<String, dynamic> json)
//       : address =
//             int.parse((json["address"] as String).substring(2), radix: 16),
//         type = json["type"] as String,
//         belongsToAddress = int.parse(
//             (json["belongsTo"]["address"] as String).substring(2),
//             radix: 16),
//         belongsToName = json["belongsTo"]["name"] as String;
// }
//
// class Tablet implements Device {
//   @override
//   final int address;
//   final String name;
//
//   Tablet({
//     required this.address,
//     required this.name,
//   });
//
//   Tablet.fromSocketJson(Map<String, dynamic> json)
//       : address =
//             int.parse((json["address"] as String).substring(2), radix: 16),
//         name = json["name"] as String;
// }

String _numToStringWithSymbol(num value) {
  return (value > 0 ? "+" : "") + value.toString();
}

abstract class WorkspaceRef {
  @override
  String toString();
}

class WorkspaceRefID implements WorkspaceRef {
  final String id;

  WorkspaceRefID(this.id);

  @override
  String toString() => id;
}

class WorkspaceRefRelativeID implements WorkspaceRef {
  final int id;

  WorkspaceRefRelativeID(this.id);

  @override
  String toString() => _numToStringWithSymbol(id);
}

class WorkspaceRefRelaiveIDOnMonitor implements WorkspaceRef {
  final int id;

  WorkspaceRefRelaiveIDOnMonitor(this.id);

  @override
  String toString() => "m${_numToStringWithSymbol(id)}";
}

class WorkspaceRefRelativeOpenWorkspace implements WorkspaceRef {
  final int id;

  WorkspaceRefRelativeOpenWorkspace(this.id);

  @override
  String toString() => "e${_numToStringWithSymbol(id)}";
}

class WorkspaceRefName implements WorkspaceRef {
  final String name;

  WorkspaceRefName(this.name);

  @override
  String toString() => "name:$name";
}

class WorkspaceRefPrevious implements WorkspaceRef {
  @override
  String toString() => "previous";
}

class WorkspaceRefSpecial implements WorkspaceRef {
  @override
  String toString() => "special";
}

abstract class MonitorRef {
  @override
  String toString();
}

class MonitorRefDirection implements MonitorRef {
  final Direction direction;

  MonitorRefDirection(this.direction);

  @override
  String toString() => direction.name;
}

class MonitorRefID implements MonitorRef {
  final String id;

  MonitorRefID(this.id);

  @override
  String toString() => id;
}

class MonitorRefName implements MonitorRef {
  final String name;

  MonitorRefName(this.name);

  @override
  String toString() => name;
}

class MonitorRefCurrent implements MonitorRef {
  @override
  String toString() => "current";
}

class MonitorRefRelativeID implements MonitorRef {
  final int id;

  MonitorRefRelativeID(this.id);

  @override
  String toString() => _numToStringWithSymbol(id);
}

abstract class WindowRef {
  @override
  String toString();
}

class WindowRefClass implements WindowRef {
  WindowRefClass(this.className);
  final String className;

  @override
  String toString() => className;
}

class WindowRefTitle implements WindowRef {
  WindowRefTitle(this.title);
  final String title;

  @override
  String toString() => "title:$title";
}

class WindowRefPid implements WindowRef {
  WindowRefPid(this.pid);
  final int pid;

  @override
  String toString() => "pid:$pid";
}

class WindowRefAddress implements WindowRef {
  WindowRefAddress(this.address);
  final int address;

  @override
  String toString() => "address:0x${address.toRadixString(16)}";
}

enum LayerSurfaceLevel {
  background,
  bottom,
  top,
  overlay,
}

enum FullscreenMode {
  full,
  maximized,
}

class LayerSurface {
  final int address;
  final Rectangle rect;
  final String namespace;
  final LayerSurfaceLevel level;
  final String monitor;

  LayerSurface({
    required this.address,
    required this.rect,
    required this.namespace,
    required this.level,
    required this.monitor,
  });
}

class Monitor {
  final int id;
  final String name;
  final String description;
  final Rectangle rect;
  final double refreshRate;
  final int activeWorkspaceId;
  final String activeWorkspaceName;
  final Rectangle reserved;
  final double scale;
  final int transform;
  final bool focused;
  final bool dpmsStatus;

  Monitor({
    required this.id,
    required this.name,
    required this.description,
    required this.rect,
    required this.refreshRate,
    required this.activeWorkspaceId,
    required this.activeWorkspaceName,
    required this.reserved,
    required this.scale,
    required this.transform,
    required this.focused,
    required this.dpmsStatus,
  });

  Monitor.fromSocketJson(Map<String, dynamic> json)
      : id = json["id"] as int,
        name = json["name"] as String,
        description = json["description"] as String,
        rect = Rectangle(
          json["x"] as int,
          json["y"] as int,
          json["width"] as int,
          json["height"] as int,
        ),
        refreshRate = json["refreshRate"] as double,
        activeWorkspaceId = json["activeWorkspace"]["id"] as int,
        activeWorkspaceName = json["activeWorkspace"]["name"] as String,
        reserved = Rectangle.fromPoints(
          Point(json["reserved"][0], json["reserved"][1]),
          Point(json["reserved"][2], json["reserved"][3]),
        ),
        scale = json["scale"] as double,
        transform = json["transform"] as int,
        focused = json["focused"] as bool,
        dpmsStatus = json["dpmsStatus"] as bool;
}

class Workspace {
  final int id;
  final String name;
  final String monitorName;
  final int windowsCount;
  final bool hasFullscreen;
  final int lastWindowAddress;
  final String lastWindowTitle;

  Workspace({
    required this.id,
    required this.name,
    required this.monitorName,
    required this.windowsCount,
    required this.hasFullscreen,
    required this.lastWindowAddress,
    required this.lastWindowTitle,
  });

  Workspace.fromSocketJson(Map<String, dynamic> json)
      : id = json["id"] as int,
        name = json["name"] as String,
        monitorName = json["monitor"] as String,
        windowsCount = json["windows"] as int,
        hasFullscreen = json["hasfullscreen"] as bool,
        lastWindowAddress = int.parse(
          (json["lastwindow"] as String).substring(2),
          radix: 16,
        ),
        lastWindowTitle = json["lastwindowtitle"];
}

class Client {
  final int address;
  final Rectangle rect;
  final int workspaceId;
  final String workspaceName;
  final bool floating;
  final int monitorId;
  final String className;
  final String title;
  final int pid;
  final bool xwayland;
  final bool pinned;
  final bool fullscreen;
  final FullscreenMode fullscreenMode;

  Client({
    required this.address,
    required this.rect,
    required this.workspaceId,
    required this.workspaceName,
    required this.floating,
    required this.monitorId,
    required this.className,
    required this.title,
    required this.pid,
    required this.xwayland,
    required this.pinned,
    required this.fullscreen,
    required this.fullscreenMode,
  });

  Client.fromSocketJson(Map<String, dynamic> json)
      : address = int.parse(
          (json["address"] as String).substring(2),
          radix: 16,
        ),
        rect = Rectangle(
          (json["at"] as List)[0],
          (json["at"] as List)[1],
          (json["size"] as List)[0],
          (json["size"] as List)[1],
        ),
        workspaceId = json["workspace"]["id"] as int,
        workspaceName = json["workspace"]["name"] as String,
        floating = json["floating"] as bool,
        monitorId = json["monitor"] as int,
        className = json["class"] as String,
        title = json["title"] as String,
        pid = json["pid"] as int,
        xwayland = json["xwayland"] as bool,
        pinned = json["pinned"] as bool,
        fullscreen = json["fullscreen"] as bool,
        fullscreenMode = FullscreenMode.values[json["fullscreenMode"] as int];
}

enum Corner {
  bottomLeft,
  bottomRight,
  topRight,
  topLeft,
}

enum WorkspaceOption {
  allFloat,
  allPseudo,
}

extension WorkspaceOptionExtension on WorkspaceOption {
  String get value {
    switch (this) {
      case WorkspaceOption.allFloat:
        return "allfloat";
      case WorkspaceOption.allPseudo:
        return "allpseudo";
    }
  }
}

enum Direction {
  left,
  right,
  up,
  down,
}

extension DirectionExtension on Direction {
  String get name {
    switch (this) {
      case Direction.left:
        return "l";
      case Direction.right:
        return "r";
      case Direction.up:
        return "u";
      case Direction.down:
        return "d";
    }
  }
}

class HyprlandVersion {
  final String branch;
  final String commit;
  final bool dirty;
  final String commitMessage;
  final List<String> flags;

  HyprlandVersion({
    required this.branch,
    required this.commit,
    required this.dirty,
    required this.commitMessage,
    required this.flags,
  });

  HyprlandVersion.fromJson(Map<String, dynamic> json)
      : branch = json['branch'],
        commit = json['commit'],
        dirty = json['dirty'],
        commitMessage = json['commit_message'],
        flags = List<String>.from(json['flags']);
}
