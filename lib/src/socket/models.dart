import 'dart:math';

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
  final double transform; // ??? int or double
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
        transform = json["transform"] as double,
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
  final String classs;
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
    required this.classs,
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
          (json["at"] as List<int>)[0],
          (json["at"] as List<int>)[1],
          (json["size"] as List<int>)[0],
          (json["size"] as List<int>)[1],
        ),
        workspaceId = json["workspace"]["id"] as int,
        workspaceName = json["workspace"]["name"] as String,
        floating = json["floating"] as bool,
        monitorId = json["monitor"] as int,
        classs = json["class"] as String,
        title = json["title"] as String,
        pid = json["pid"] as int,
        xwayland = json["xwayland"] as bool,
        pinned = json["pinned"] as bool,
        fullscreen = json["fullscreen"] as bool,
        fullscreenMode = FullscreenMode.values[json["fullscreenMode"] as int];
}
