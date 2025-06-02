// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MonitorRefDirection _$MonitorRefDirectionFromJson(Map<String, dynamic> json) =>
    _MonitorRefDirection(
      direction: $enumDecode(_$DirectionEnumMap, json['direction']),
    );

Map<String, dynamic> _$MonitorRefDirectionToJson(
        _MonitorRefDirection instance) =>
    <String, dynamic>{
      'direction': _$DirectionEnumMap[instance.direction]!,
    };

const _$DirectionEnumMap = {
  Direction.left: 'left',
  Direction.right: 'right',
  Direction.up: 'up',
  Direction.down: 'down',
};

_MonitorRefID _$MonitorRefIDFromJson(Map<String, dynamic> json) =>
    _MonitorRefID(
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$MonitorRefIDToJson(_MonitorRefID instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_MonitorRefName _$MonitorRefNameFromJson(Map<String, dynamic> json) =>
    _MonitorRefName(
      name: json['name'] as String,
    );

Map<String, dynamic> _$MonitorRefNameToJson(_MonitorRefName instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_MonitorRefCurrent _$MonitorRefCurrentFromJson(Map<String, dynamic> json) =>
    _MonitorRefCurrent();

Map<String, dynamic> _$MonitorRefCurrentToJson(_MonitorRefCurrent instance) =>
    <String, dynamic>{};

_MonitorRefRelativeID _$MonitorRefRelativeIDFromJson(
        Map<String, dynamic> json) =>
    _MonitorRefRelativeID(
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$MonitorRefRelativeIDToJson(
        _MonitorRefRelativeID instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_WindowRefClass _$WindowRefClassFromJson(Map<String, dynamic> json) =>
    _WindowRefClass(
      classRegex: json['classRegex'] as String,
    );

Map<String, dynamic> _$WindowRefClassToJson(_WindowRefClass instance) =>
    <String, dynamic>{
      'classRegex': instance.classRegex,
    };

_WindowRefInitialClass _$WindowRefInitialClassFromJson(
        Map<String, dynamic> json) =>
    _WindowRefInitialClass(
      classRegex: json['classRegex'] as String,
    );

Map<String, dynamic> _$WindowRefInitialClassToJson(
        _WindowRefInitialClass instance) =>
    <String, dynamic>{
      'classRegex': instance.classRegex,
    };

_WindowRefTitle _$WindowRefTitleFromJson(Map<String, dynamic> json) =>
    _WindowRefTitle(
      titleRegex: json['titleRegex'] as String,
    );

Map<String, dynamic> _$WindowRefTitleToJson(_WindowRefTitle instance) =>
    <String, dynamic>{
      'titleRegex': instance.titleRegex,
    };

_WindowRefInitialTitle _$WindowRefInitialTitleFromJson(
        Map<String, dynamic> json) =>
    _WindowRefInitialTitle(
      titleRegex: json['titleRegex'] as String,
    );

Map<String, dynamic> _$WindowRefInitialTitleToJson(
        _WindowRefInitialTitle instance) =>
    <String, dynamic>{
      'titleRegex': instance.titleRegex,
    };

_WindowRefPid _$WindowRefPidFromJson(Map<String, dynamic> json) =>
    _WindowRefPid(
      pid: (json['pid'] as num).toInt(),
    );

Map<String, dynamic> _$WindowRefPidToJson(_WindowRefPid instance) =>
    <String, dynamic>{
      'pid': instance.pid,
    };

_WindowRefAddress _$WindowRefAddressFromJson(Map<String, dynamic> json) =>
    _WindowRefAddress(
      address: (json['address'] as num).toInt(),
    );

Map<String, dynamic> _$WindowRefAddressToJson(_WindowRefAddress instance) =>
    <String, dynamic>{
      'address': instance.address,
    };

_WindowRefActiveWindow _$WindowRefActiveWindowFromJson(
        Map<String, dynamic> json) =>
    _WindowRefActiveWindow();

Map<String, dynamic> _$WindowRefActiveWindowToJson(
        _WindowRefActiveWindow instance) =>
    <String, dynamic>{};

_WindowRefFirstFloating _$WindowRefFirstFloatingFromJson(
        Map<String, dynamic> json) =>
    _WindowRefFirstFloating();

Map<String, dynamic> _$WindowRefFirstFloatingToJson(
        _WindowRefFirstFloating instance) =>
    <String, dynamic>{};

_WindowRefFirstTiled _$WindowRefFirstTiledFromJson(Map<String, dynamic> json) =>
    _WindowRefFirstTiled();

Map<String, dynamic> _$WindowRefFirstTiledToJson(
        _WindowRefFirstTiled instance) =>
    <String, dynamic>{};

_MonitorInfoReserved _$MonitorInfoReservedFromJson(Map<String, dynamic> json) =>
    _MonitorInfoReserved(
      left: (json['left'] as num).toInt(),
      top: (json['top'] as num).toInt(),
      right: (json['right'] as num).toInt(),
      bottom: (json['bottom'] as num).toInt(),
    );

_MonitorInfoWorkspace _$MonitorInfoWorkspaceFromJson(
        Map<String, dynamic> json) =>
    _MonitorInfoWorkspace(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

_MonitorInfoMode _$MonitorInfoModeFromJson(Map<String, dynamic> json) =>
    _MonitorInfoMode(
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      refreshRate: (json['refreshRate'] as num).toDouble(),
    );

_MonitorInfo _$MonitorInfoFromJson(Map<String, dynamic> json) => _MonitorInfo(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      model: json['model'] as String,
      refreshRate: (json['refreshRate'] as num).toDouble(),
      rect: const _EmptyRect().fromJson(json['rect']),
      activeWorkspace: MonitorInfoWorkspace.fromJson(
          json['activeWorkspace'] as Map<String, dynamic>),
      specialWorkspace: MonitorInfoWorkspace.fromJson(
          json['specialWorkspace'] as Map<String, dynamic>),
      reserved: MonitorInfoReserved.fromJson(json['reserved'] as List<dynamic>),
      scale: (json['scale'] as num).toDouble(),
      transform: $enumDecode(_$MonitorTransformEnumMap, json['transform']),
      focused: json['focused'] as bool,
      dpmsStatus: json['dpmsStatus'] as bool,
      vrr: json['vrr'] as bool,
      activelyTearing: json['activelyTearing'] as bool,
      disabled: json['disabled'] as bool,
      currentFormat: json['currentFormat'] as String,
      availableModes: (json['availableModes'] as List<dynamic>)
          .map((e) => MonitorInfoMode.fromJson(e as String))
          .toList(),
    );

const _$MonitorTransformEnumMap = {
  MonitorTransform.normal: 0,
  MonitorTransform.rotate90: 1,
  MonitorTransform.rotate180: 3,
  MonitorTransform.rotate270: 4,
  MonitorTransform.flipped: 5,
  MonitorTransform.flippedRotate90: 6,
  MonitorTransform.flippedRotate180: 7,
  MonitorTransform.flippedRotate270: 8,
};

_WorkspaceInfo _$WorkspaceInfoFromJson(Map<String, dynamic> json) =>
    _WorkspaceInfo(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      monitor: json['monitor'] as String,
      monitorID: (json['monitorID'] as num).toInt(),
      hasFullscreen: json['hasfullscreen'] as bool,
      lastWindow: WindowRefAddress.fromJson(json['lastwindow'] as String),
      lastWindowTitle: json['lastwindowtitle'] as String,
    );

_ClientInfo _$ClientInfoFromJson(Map<String, dynamic> json) => _ClientInfo(
      address: WindowRefAddress.fromJson(json['address'] as String),
      rect: const _EmptyRect().fromJson(json['rect']),
      mapped: json['mapped'] as bool,
      hidden: json['hidden'] as bool,
      workspace: MonitorInfoWorkspace.fromJson(
          json['workspace'] as Map<String, dynamic>),
      floating: json['floating'] as bool,
      pseudo: json['pseudo'] as bool,
      monitor: MonitorRefID.fromJson((json['monitor'] as num).toInt()),
      className: json['class'] as String,
      title: json['title'] as String,
      initialClass: json['initialClass'] as String,
      initialTitle: json['initialTitle'] as String,
      pid: WindowRefPid.fromJson(json['pid']),
      xwayland: json['xwayland'] as bool,
      pinned: json['pinned'] as bool,
      fullscreen: (json['fullscreen'] as num).toInt(),
      fullscreenClient:
          $enumDecode(_$FullscreenStateEnumMap, json['fullscreenClient']),
      grouped: (json['grouped'] as List<dynamic>)
          .map((e) => WindowRefAddress.fromJson(e as String))
          .toList(),
      swallowing: _$JsonConverterFromJson<String, WindowRefAddress?>(
          json['swallowing'],
          const _WindowRefAddressNullableConverter().fromJson),
      focusHistoryID: (json['focusHistoryID'] as num).toInt(),
    );

const _$FullscreenStateEnumMap = {
  FullscreenState.any: '*',
  FullscreenState.none: 0,
  FullscreenState.maximize: 1,
  FullscreenState.fullscreen: 2,
  FullscreenState.maximizeAndFullscreen: 3,
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
