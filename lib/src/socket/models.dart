import 'dart:math';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'models.g.dart';

class _EmptyRect implements JsonConverter<Rectangle, dynamic> {
  const _EmptyRect();

  @override
  Rectangle fromJson(dynamic _) {
    return Rectangle(0, 0, 0, 0);
  }

  @override
  dynamic toJson(Rectangle object) {
    throw UnimplementedError();
  }
}

class _WindowRefAddressNullableConverter implements JsonConverter<WindowRefAddress?, String> {
  const _WindowRefAddressNullableConverter();

  @override
  WindowRefAddress? fromJson(String json) {
    if (json == "0x0") {
      return null;
    }
    return WindowRefAddress.fromJson(json);
  }

  @override
  String toJson(WindowRefAddress? object) {
    throw UnimplementedError();
  }
}

class _RectConverter<T extends num> implements JsonConverter<Rectangle<T>, Map<String, dynamic>> {
  const _RectConverter();

  @override
  Rectangle<T> fromJson(Map<String, dynamic> json) {
    if (json.containsKey('x')) {
      return Rectangle<T>(
        json['x'] as T,
        json['y'] as T,
        json['width'] as T,
        json['height'] as T,
      );
    } else {
      return Rectangle<T>(
        json['at'][0] as T,
        json['at'][1] as T,
        json['size'][0] as T,
        json['size'][1] as T,
      );
    }
  }

  @override
  Map<String, dynamic> toJson(Rectangle<T> object) {
    return {
      'x': object.left,
      'y': object.top,
      'width': object.width,
      'height': object.height,
    };
  }
}

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

// TODO: workspacerefs move to freezed.
// TODO: update workspacerefs with upstream wiki

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

@freezed
abstract class MonitorRefDirection with _$MonitorRefDirection implements MonitorRef {
  const factory MonitorRefDirection({
    required Direction direction,
  }) = _MonitorRefDirection;
  const MonitorRefDirection._();

  factory MonitorRefDirection.fromJson(dynamic json) => throw UnimplementedError();

  @override
  String toString() => direction.name;
}

@freezed
abstract class MonitorRefID with _$MonitorRefID implements MonitorRef {
  const factory MonitorRefID({
    required int id,
  }) = _MonitorRefID;
  const MonitorRefID._();

  factory MonitorRefID.fromJson(int json) => MonitorRefID(id: json);

  @override
  String toString() => id.toString();
}

@freezed
abstract class MonitorRefName with _$MonitorRefName implements MonitorRef {
  const factory MonitorRefName({
    required String name,
  }) = _MonitorRefName;
  const MonitorRefName._();

  factory MonitorRefName.fromJson(dynamic json) => throw UnimplementedError();

  @override
  String toString() => name;
}

@freezed
abstract class MonitorRefCurrent with _$MonitorRefCurrent implements MonitorRef {
  const factory MonitorRefCurrent() = _MonitorRefCurrent;
  const MonitorRefCurrent._();

  factory MonitorRefCurrent.fromJson(Map<String, Object?> json) => _$MonitorRefCurrentFromJson(json);

  @override
  String toString() => "current";
}

@freezed
abstract class MonitorRefRelativeID with _$MonitorRefRelativeID implements MonitorRef {
  const factory MonitorRefRelativeID({
    required int id,
  }) = _MonitorRefRelativeID;
  const MonitorRefRelativeID._();

  factory MonitorRefRelativeID.fromJson(dynamic json) => throw UnimplementedError();

  @override
  String toString() => _numToStringWithSymbol(id);
}

// abstract class WindowRuleWindowRef {
//   @override
//   String toString();
// }
//
// class WindowRuleWindowRefTitle implements WindowRuleWindowRef {
//   final String title;
//
//   WindowRuleWindowRefTitle(this.title);
//
//   @override
//   String toString() => "title:$title";
// }
//
// class WindowRuleWindowRefClass implements WindowRuleWindowRef {
//   final String classRegex;
//
//   WindowRuleWindowRefClass(this.classRegex);
//
//   @override
//   String toString() => "class:$classRegex";
// }
//
// class WindowRuleWindowRefXWayland implements WindowRuleWindowRef {
//   final bool xWayland;
//
//   WindowRuleWindowRefXWayland(this.xWayland);
//
//   @override
//   String toString() => "xwayland ${xWayland ? "0" : "1"}";
// }
//
// class WindowRuleWindowRefFloating implements WindowRuleWindowRef {
//   final bool xWayland;
//
//   WindowRuleWindowRefXWayland(this.xWayland);
//
//   @override
//   String toString() => "xwayland ${xWayland ? "0" : "1"}";
// }

abstract class WindowRef {
  @override
  String toString() => throw UnimplementedError();
}

@freezed
abstract class WindowRefClass with _$WindowRefClass implements WindowRef {
  const factory WindowRefClass({
    required String classRegex,
  }) = _WindowRefClass;
  const WindowRefClass._();

  factory WindowRefClass.fromJson(dynamic json) => throw UnimplementedError();

  @override
  String toString() => "class:$classRegex";
}

@freezed
abstract class WindowRefInitialClass with _$WindowRefInitialClass implements WindowRef {
  const factory WindowRefInitialClass({
    required String classRegex,
  }) = _WindowRefInitialClass;
  const WindowRefInitialClass._();

  factory WindowRefInitialClass.fromJson(dynamic json) => throw UnimplementedError();

  @override
  String toString() => "initialclass:$classRegex";
}

@freezed
abstract class WindowRefTitle with _$WindowRefTitle implements WindowRef {
  const factory WindowRefTitle({
    required String titleRegex,
  }) = _WindowRefTitle;
  const WindowRefTitle._();

  factory WindowRefTitle.fromJson(dynamic json) => throw UnimplementedError();

  @override
  String toString() => "title:$titleRegex";
}

@freezed
abstract class WindowRefInitialTitle with _$WindowRefInitialTitle implements WindowRef {
  const factory WindowRefInitialTitle({
    required String titleRegex,
  }) = _WindowRefInitialTitle;
  const WindowRefInitialTitle._();

  factory WindowRefInitialTitle.fromJson(dynamic json) => throw UnimplementedError();

  @override
  String toString() => "initialtitle:$titleRegex";
}

@freezed
abstract class WindowRefPid with _$WindowRefPid implements WindowRef {
  const factory WindowRefPid({
    required int pid,
  }) = _WindowRefPid;
  const WindowRefPid._();

  factory WindowRefPid.fromJson(dynamic json) => WindowRefPid(pid: json as int);

  @override
  String toString() => "pid:$pid";
}

@freezed
abstract class WindowRefAddress with _$WindowRefAddress implements WindowRef {
  const factory WindowRefAddress({
    required int address,
  }) = _WindowRefAddress;
  const WindowRefAddress._();

  factory WindowRefAddress.fromJson(String json) => WindowRefAddress(
        address: int.parse(json.split("0x")[1], radix: 16),
      );

  @override
  String toString() => "address:0x${address.toRadixString(16)}";
}

@freezed
abstract class WindowRefActiveWindow with _$WindowRefActiveWindow implements WindowRef {
  const factory WindowRefActiveWindow() = _WindowRefActiveWindow;
  const WindowRefActiveWindow._();

  factory WindowRefActiveWindow.fromJson(String json) => throw UnimplementedError();

  @override
  String toString() => "activewindow";
}

@freezed
abstract class WindowRefFirstFloating with _$WindowRefFirstFloating implements WindowRef {
  const factory WindowRefFirstFloating() = _WindowRefFirstFloating;
  const WindowRefFirstFloating._();

  factory WindowRefFirstFloating.fromJson(String json) => throw UnimplementedError();

  @override
  String toString() => "floating";
}

@freezed
abstract class WindowRefFirstTiled with _$WindowRefFirstTiled implements WindowRef {
  const factory WindowRefFirstTiled() = _WindowRefFirstTiled;
  const WindowRefFirstTiled._();

  factory WindowRefFirstTiled.fromJson(String json) => throw UnimplementedError();

  @override
  String toString() => "tiled";
}

enum LayerSurfaceLevel {
  background,
  bottom,
  top,
  overlay,
}

enum TurnMode {
  on,
  off,
  toggle,
}

enum FullscreenState {
  @JsonValue("*")
  any,
  @JsonValue(0)
  none,
  @JsonValue(1)
  maximize,
  @JsonValue(2)
  fullscreen,
  @JsonValue(3)
  maximizeAndFullscreen,
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

@Freezed(toJson: false)
abstract class MonitorInfoReserved with _$MonitorInfoReserved {
  const factory MonitorInfoReserved({
    required int left,
    required int top,
    required int right,
    required int bottom,
  }) = _MonitorInfoReserved;

  factory MonitorInfoReserved.fromJson(List<dynamic> json) => MonitorInfoReserved(
        left: json[0] as int,
        top: json[1] as int,
        right: json[2] as int,
        bottom: json[3] as int,
      );
}

@Freezed(toJson: false)
abstract class MonitorInfoWorkspace with _$MonitorInfoWorkspace {
  const factory MonitorInfoWorkspace({
    // required WorkspaceRefID id, // TODO: move them to freezed and make tojson
    // required WorkspaceRefName name, // TODO: move them to freezed and make tojson
    required int id,
    required String name,
  }) = _MonitorInfoWorkspace;

  factory MonitorInfoWorkspace.fromJson(Map<String, Object?> json) => _$MonitorInfoWorkspaceFromJson(json);
}

@Freezed(toJson: false)
abstract class MonitorInfoMode with _$MonitorInfoMode {
  const factory MonitorInfoMode({
    required int width,
    required int height,
    required double refreshRate,
  }) = _MonitorInfoMode;

  factory MonitorInfoMode.fromJson(String json) => MonitorInfoMode(
        width: int.parse(json.split("x")[0]),
        height: int.parse(json.split("x")[1].split("@")[0]),
        refreshRate: double.parse(json.split("@")[1].split("Hz")[0]),
      );
}

@Freezed(toJson: false)
abstract class MonitorInfo with _$MonitorInfo {
  const factory MonitorInfo({
    required int id,
    required String name,
    required String description,
    required String model,
    required double refreshRate,
    @_EmptyRect() required Rectangle rect,
    required MonitorInfoWorkspace activeWorkspace,
    required MonitorInfoWorkspace specialWorkspace,
    required MonitorInfoReserved reserved,
    required double scale,
    required MonitorTransform transform,
    required bool focused,
    required bool dpmsStatus,
    required bool vrr,
    required bool activelyTearing,
    required bool disabled,
    required String currentFormat,
    required List<MonitorInfoMode> availableModes,
  }) = _MonitorInfo;

  factory MonitorInfo.fromJson(Map<String, Object?> json) => _$MonitorInfoFromJson(json).copyWith(
        rect: _RectConverter().fromJson(json),
      );
}

@Freezed(toJson: false)
abstract class WorkspaceInfo with _$WorkspaceInfo {
  const factory WorkspaceInfo({
    required int id,
    required String name,
    required String monitor,
    required int monitorID,
    @JsonKey(name: "hasfullscreen") required bool hasFullscreen,
    @JsonKey(name: "lastwindow") required WindowRefAddress lastWindow,
    @JsonKey(name: "lastwindowtitle") required String lastWindowTitle,
  }) = _WorkspaceInfo;

  factory WorkspaceInfo.fromJson(Map<String, Object?> json) => _$WorkspaceInfoFromJson(json);
}

typedef ClientInfoWorkspace = MonitorInfoWorkspace;

@Freezed(toJson: false)
abstract class ClientInfo with _$ClientInfo {
  const factory ClientInfo({
    required WindowRefAddress address,
    @_EmptyRect() required Rectangle rect,
    required bool mapped,
    required bool hidden,
    required ClientInfoWorkspace workspace,
    required bool floating,
    required bool pseudo,
    required MonitorRefID monitor,
    @JsonKey(name: "class") required String className,
    required String title,
    required String initialClass,
    required String initialTitle,
    required WindowRefPid pid,
    required bool xwayland,
    required bool pinned,
    required int fullscreen,
    required FullscreenState fullscreenClient,
    required List<WindowRefAddress> grouped,
    // TODO: tags, focusHistoryID, inhibitingIdle, xdgTag, xdgDescription
    @_WindowRefAddressNullableConverter() required WindowRefAddress? swallowing,
    required int focusHistoryID,
  }) = _ClientInfo;

  factory ClientInfo.fromJson(Map<String, Object?> json) => _$ClientInfoFromJson(json).copyWith(
        rect: _RectConverter().fromJson(json),
      );
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
  final int fullscreen;
  final FullscreenState fullscreenClient;

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
    required this.fullscreenClient,
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
        fullscreen = json["fullscreen"] as int,
        fullscreenClient = FullscreenState.values[json["fullscreenClient"]];
}

enum Corner {
  bottomLeft,
  bottomRight,
  topRight,
  topLeft,
}

enum AlterZOrder {
  top,
  bottom,
}

enum GroupLockStatus {
  lock,
  unlock,
  toggle,
}

abstract class Resize {
  const Resize();
  @override
  String toString() => throw UnimplementedError();
}

class ResizeSet extends Resize {
  final int width;
  final int height;

  const ResizeSet({
    required this.width,
    required this.height,
  });

  @override
  String toString() {
    return "exact $width $height";
  }
}

class ResizeAdd extends Resize {
  final int width;
  final int height;

  const ResizeAdd({
    required this.width,
    required this.height,
  });

  @override
  String toString() {
    return "$width $height";
  }
}

class ResizeFactor extends Resize {
  final double widthFactor;
  final double heightFactor;

  const ResizeFactor({
    required this.widthFactor,
    required this.heightFactor,
  });

  String toPercentage(double value) {
    return (value * 100).round().toString();
  }

  @override
  String toString() {
    return "${toPercentage(widthFactor)}% ${toPercentage(heightFactor)}%";
  }
}

class ResizeMonitorFactor extends Resize {
  final double widthFactor;
  final double heightFactor;

  const ResizeMonitorFactor({
    required this.widthFactor,
    required this.heightFactor,
  });

  String toPercentage(double value) {
    return (value * 100).round().toString();
  }

  @override
  String toString() {
    return "exact ${toPercentage(widthFactor)}% ${toPercentage(heightFactor)}%";
  }
}

enum Direction {
  left,
  right,
  up,
  down,
}

enum SuppressEventEvents {
  fullscreen,
  maximize,
  activate,
  activatefocus,
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

abstract class GroupOption {
  const GroupOption();
  @override
  String toString() => throw UnimplementedError();
}

class GroupOptionSet extends GroupOption {
  const GroupOptionSet({
    this.always = false,
  });

  final bool always;

  @override
  String toString() => "set ${always ? "always" : ""}";
}

class GroupOptionNew extends GroupOption {
  const GroupOptionNew();
  @override
  String toString() => "new";
}

class GroupOptionLock extends GroupOption {
  const GroupOptionLock({
    this.always = false,
  });

  final bool always;

  @override
  String toString() => "lock ${always ? "always" : ""}";
}

class GroupOptionBarred extends GroupOption {
  const GroupOptionBarred();
  @override
  String toString() => "barred";
}

class GroupOptionDeny extends GroupOption {
  const GroupOptionDeny();
  @override
  String toString() => "deny";
}

class GroupOptionInvade extends GroupOption {
  const GroupOptionInvade();
  @override
  String toString() => "invade";
}

class GroupOptionOverride extends GroupOption {
  const GroupOptionOverride({
    required this.options,
  });
  final List<GroupOption> options;
  @override
  String toString() => "override ${options.join(" ")}";
}

class GroupOptionUnset extends GroupOption {
  const GroupOptionUnset();
  @override
  String toString() => "unset";
}

class GradientColor {
  const GradientColor({
    required this.colors,
    required this.angle,
  });

  final List<int> colors;

  /// In radians
  final double angle;

  @override
  String toString() {
    return "bordercolor ${colors.map((c) => c.toRadixString(16)).join(" ")} ${(angle / (2 * pi) * 360).round()}deg";
  }
}

enum IdleInhibitMode {
  none,
  always,
  focus,
  fullscreen,
}

enum XRayRuleMode {
  off("0"),
  on("1"),
  unset("unset");

  const XRayRuleMode(this.value);
  final String value;
}

enum OutputBackend {
  wayland,
  x11,
  headless,
  auto,
}

enum NotifyIcon {
  warning,
  info,
  hint,
  error,
  confused,
  ok,
}

enum MonitorTransform {
  @JsonValue(0)
  normal,
  @JsonValue(1)
  rotate90,
  @JsonValue(3)
  rotate180,
  @JsonValue(4)
  rotate270,
  @JsonValue(5)
  flipped,
  @JsonValue(6)
  flippedRotate90,
  @JsonValue(7)
  flippedRotate180,
  @JsonValue(8)
  flippedRotate270,
}
