abstract class Event {
  Event();
  factory Event.fromString(String event) {
    final split = event.split(">>");
    final name = split.first;
    final List<String> args = split.length > 1 ? split[1].split(",") : [];
    switch (name) {
      case "workspace":
        return WorkspaceEvent.fromArgs(args);
      case "focusedmon":
        return FocusedMonitorEvent.fromArgs(args);
      case "activewindow":
        return ActiveWindowEvent.fromArgs(args);
      case "fullscreen":
        return FullscreenEvent.fromArgs(args);
      case "monitorremoved":
        return MonitorRemovedEvent.fromArgs(args);
      case "monitoradded":
        return MonitorAddedEvent.fromArgs(args);
      case "createworkspace":
        return CreateWorkspaceEvent.fromArgs(args);
      case "destroyworkspace":
        return DestroyWorkspaceEvent.fromArgs(args);
      case "moveworkspace":
        return MoveWorkspaceEvent.fromArgs(args);
      case "activelayout":
        return ActiveLayoutEvent.fromArgs(args);
      case "openwindow":
        return OpenWindowEvent.fromArgs(args);
      case "closewindow":
        return CloseWindowEvent.fromArgs(args);
      case "movewindow":
        return MoveWindowEvent.fromArgs(args);
      case "openlayer":
        return OpenLayerEvent.fromArgs(args);
      case "closelayer":
        return CloseLayerEvent.fromArgs(args);
      case "submap":
        return SubmapEvent.fromArgs(args);
      default:
        throw Exception("Unknown Hyprland event: \"$event\"");
    }
  }
}

class WorkspaceEvent implements Event {
  final String workspaceName;

  WorkspaceEvent({
    required this.workspaceName,
  });

  WorkspaceEvent.fromArgs(List<String> args) : workspaceName = args[0];
}

class FocusedMonitorEvent extends Event {
  final String monitorName;
  final String workspaceName;

  FocusedMonitorEvent({
    required this.monitorName,
    required this.workspaceName,
  });

  FocusedMonitorEvent.fromArgs(List<String> args)
      : monitorName = args[0],
        workspaceName = args[1];
}

class ActiveWindowEvent extends Event {
  final String windowClass;
  final String windowTitle;

  ActiveWindowEvent({
    required this.windowClass,
    required this.windowTitle,
  });

  ActiveWindowEvent.fromArgs(List<String> args)
      : windowClass = args[0],
        windowTitle = args[1];
}

class FullscreenEvent extends Event {
  final bool fullscreen;

  FullscreenEvent({
    required this.fullscreen,
  });

  FullscreenEvent.fromArgs(List<String> args) : fullscreen = args[0] == "1";
}

class MonitorRemovedEvent extends Event {
  final String monitorName;

  MonitorRemovedEvent({
    required this.monitorName,
  });

  MonitorRemovedEvent.fromArgs(List<String> args) : monitorName = args[0];
}

class MonitorAddedEvent extends Event {
  final String monitorName;

  MonitorAddedEvent({
    required this.monitorName,
  });

  MonitorAddedEvent.fromArgs(List<String> args) : monitorName = args[0];
}

class CreateWorkspaceEvent extends Event {
  final String workspaceName;

  CreateWorkspaceEvent({
    required this.workspaceName,
  });
  CreateWorkspaceEvent.fromArgs(List<String> args) : workspaceName = args[0];
}

class DestroyWorkspaceEvent extends Event {
  final String workspaceName;

  DestroyWorkspaceEvent({
    required this.workspaceName,
  });

  DestroyWorkspaceEvent.fromArgs(List<String> args) : workspaceName = args[0];
}

class MoveWorkspaceEvent extends Event {
  final String workspaceName;
  final String monitorName;

  MoveWorkspaceEvent({
    required this.workspaceName,
    required this.monitorName,
  });

  MoveWorkspaceEvent.fromArgs(List<String> args)
      : workspaceName = args[0],
        monitorName = args[1];
}

class ActiveLayoutEvent extends Event {
  final String keyboardName;
  final String layoutName;

  ActiveLayoutEvent({
    required this.keyboardName,
    required this.layoutName,
  });

  ActiveLayoutEvent.fromArgs(List<String> args)
      : keyboardName = args[0],
        layoutName = args[1];
}

class OpenWindowEvent extends Event {
  final int windowAddress;
  final String workspaceName;
  final String windowClass;
  final String windowTitle;

  OpenWindowEvent({
    required this.windowAddress,
    required this.workspaceName,
    required this.windowClass,
    required this.windowTitle,
  });

  OpenWindowEvent.fromArgs(List<String> args)
      : windowAddress = int.parse(args[0], radix: 16),
        workspaceName = args[1],
        windowClass = args[2],
        windowTitle = args[3];
}

class CloseWindowEvent extends Event {
  final int windowAddress;

  CloseWindowEvent({
    required this.windowAddress,
  });

  CloseWindowEvent.fromArgs(List<String> args)
      : windowAddress = int.parse(args[0], radix: 16);
}

class MoveWindowEvent extends Event {
  final int windowAddress;
  final String workspaceName;

  MoveWindowEvent({
    required this.windowAddress,
    required this.workspaceName,
  });

  MoveWindowEvent.fromArgs(List<String> args)
      : windowAddress = int.parse(args[0], radix: 16),
        workspaceName = args[1];
}

class OpenLayerEvent extends Event {
  final String namespace;

  OpenLayerEvent({
    required this.namespace,
  });

  OpenLayerEvent.fromArgs(List<String> args) : namespace = args[0];
}

class CloseLayerEvent extends Event {
  final String namespace;

  CloseLayerEvent({
    required this.namespace,
  });

  CloseLayerEvent.fromArgs(List<String> args) : namespace = args[0];
}

class SubmapEvent extends Event {
  final String submapName;

  SubmapEvent({
    required this.submapName,
  });

  SubmapEvent.fromArgs(List<String> args) : submapName = args[0];
}
