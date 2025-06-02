// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MonitorRefDirection {
  Direction get direction;

  /// Create a copy of MonitorRefDirection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MonitorRefDirectionCopyWith<MonitorRefDirection> get copyWith =>
      _$MonitorRefDirectionCopyWithImpl<MonitorRefDirection>(
          this as MonitorRefDirection, _$identity);

  /// Serializes this MonitorRefDirection to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MonitorRefDirection &&
            (identical(other.direction, direction) ||
                other.direction == direction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, direction);
}

/// @nodoc
abstract mixin class $MonitorRefDirectionCopyWith<$Res> {
  factory $MonitorRefDirectionCopyWith(
          MonitorRefDirection value, $Res Function(MonitorRefDirection) _then) =
      _$MonitorRefDirectionCopyWithImpl;
  @useResult
  $Res call({Direction direction});
}

/// @nodoc
class _$MonitorRefDirectionCopyWithImpl<$Res>
    implements $MonitorRefDirectionCopyWith<$Res> {
  _$MonitorRefDirectionCopyWithImpl(this._self, this._then);

  final MonitorRefDirection _self;
  final $Res Function(MonitorRefDirection) _then;

  /// Create a copy of MonitorRefDirection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = null,
  }) {
    return _then(_self.copyWith(
      direction: null == direction
          ? _self.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as Direction,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MonitorRefDirection extends MonitorRefDirection {
  const _MonitorRefDirection({required this.direction}) : super._();
  factory _MonitorRefDirection.fromJson(Map<String, dynamic> json) =>
      _$MonitorRefDirectionFromJson(json);

  @override
  final Direction direction;

  /// Create a copy of MonitorRefDirection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MonitorRefDirectionCopyWith<_MonitorRefDirection> get copyWith =>
      __$MonitorRefDirectionCopyWithImpl<_MonitorRefDirection>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MonitorRefDirectionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MonitorRefDirection &&
            (identical(other.direction, direction) ||
                other.direction == direction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, direction);
}

/// @nodoc
abstract mixin class _$MonitorRefDirectionCopyWith<$Res>
    implements $MonitorRefDirectionCopyWith<$Res> {
  factory _$MonitorRefDirectionCopyWith(_MonitorRefDirection value,
          $Res Function(_MonitorRefDirection) _then) =
      __$MonitorRefDirectionCopyWithImpl;
  @override
  @useResult
  $Res call({Direction direction});
}

/// @nodoc
class __$MonitorRefDirectionCopyWithImpl<$Res>
    implements _$MonitorRefDirectionCopyWith<$Res> {
  __$MonitorRefDirectionCopyWithImpl(this._self, this._then);

  final _MonitorRefDirection _self;
  final $Res Function(_MonitorRefDirection) _then;

  /// Create a copy of MonitorRefDirection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? direction = null,
  }) {
    return _then(_MonitorRefDirection(
      direction: null == direction
          ? _self.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as Direction,
    ));
  }
}

/// @nodoc
mixin _$MonitorRefID {
  int get id;

  /// Create a copy of MonitorRefID
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MonitorRefIDCopyWith<MonitorRefID> get copyWith =>
      _$MonitorRefIDCopyWithImpl<MonitorRefID>(
          this as MonitorRefID, _$identity);

  /// Serializes this MonitorRefID to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MonitorRefID &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);
}

/// @nodoc
abstract mixin class $MonitorRefIDCopyWith<$Res> {
  factory $MonitorRefIDCopyWith(
          MonitorRefID value, $Res Function(MonitorRefID) _then) =
      _$MonitorRefIDCopyWithImpl;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$MonitorRefIDCopyWithImpl<$Res> implements $MonitorRefIDCopyWith<$Res> {
  _$MonitorRefIDCopyWithImpl(this._self, this._then);

  final MonitorRefID _self;
  final $Res Function(MonitorRefID) _then;

  /// Create a copy of MonitorRefID
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MonitorRefID extends MonitorRefID {
  const _MonitorRefID({required this.id}) : super._();
  factory _MonitorRefID.fromJson(Map<String, dynamic> json) =>
      _$MonitorRefIDFromJson(json);

  @override
  final int id;

  /// Create a copy of MonitorRefID
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MonitorRefIDCopyWith<_MonitorRefID> get copyWith =>
      __$MonitorRefIDCopyWithImpl<_MonitorRefID>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MonitorRefIDToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MonitorRefID &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);
}

/// @nodoc
abstract mixin class _$MonitorRefIDCopyWith<$Res>
    implements $MonitorRefIDCopyWith<$Res> {
  factory _$MonitorRefIDCopyWith(
          _MonitorRefID value, $Res Function(_MonitorRefID) _then) =
      __$MonitorRefIDCopyWithImpl;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$MonitorRefIDCopyWithImpl<$Res>
    implements _$MonitorRefIDCopyWith<$Res> {
  __$MonitorRefIDCopyWithImpl(this._self, this._then);

  final _MonitorRefID _self;
  final $Res Function(_MonitorRefID) _then;

  /// Create a copy of MonitorRefID
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(_MonitorRefID(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$MonitorRefName {
  String get name;

  /// Create a copy of MonitorRefName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MonitorRefNameCopyWith<MonitorRefName> get copyWith =>
      _$MonitorRefNameCopyWithImpl<MonitorRefName>(
          this as MonitorRefName, _$identity);

  /// Serializes this MonitorRefName to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MonitorRefName &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);
}

/// @nodoc
abstract mixin class $MonitorRefNameCopyWith<$Res> {
  factory $MonitorRefNameCopyWith(
          MonitorRefName value, $Res Function(MonitorRefName) _then) =
      _$MonitorRefNameCopyWithImpl;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$MonitorRefNameCopyWithImpl<$Res>
    implements $MonitorRefNameCopyWith<$Res> {
  _$MonitorRefNameCopyWithImpl(this._self, this._then);

  final MonitorRefName _self;
  final $Res Function(MonitorRefName) _then;

  /// Create a copy of MonitorRefName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MonitorRefName extends MonitorRefName {
  const _MonitorRefName({required this.name}) : super._();
  factory _MonitorRefName.fromJson(Map<String, dynamic> json) =>
      _$MonitorRefNameFromJson(json);

  @override
  final String name;

  /// Create a copy of MonitorRefName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MonitorRefNameCopyWith<_MonitorRefName> get copyWith =>
      __$MonitorRefNameCopyWithImpl<_MonitorRefName>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MonitorRefNameToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MonitorRefName &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);
}

/// @nodoc
abstract mixin class _$MonitorRefNameCopyWith<$Res>
    implements $MonitorRefNameCopyWith<$Res> {
  factory _$MonitorRefNameCopyWith(
          _MonitorRefName value, $Res Function(_MonitorRefName) _then) =
      __$MonitorRefNameCopyWithImpl;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$MonitorRefNameCopyWithImpl<$Res>
    implements _$MonitorRefNameCopyWith<$Res> {
  __$MonitorRefNameCopyWithImpl(this._self, this._then);

  final _MonitorRefName _self;
  final $Res Function(_MonitorRefName) _then;

  /// Create a copy of MonitorRefName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
  }) {
    return _then(_MonitorRefName(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$MonitorRefCurrent {
  /// Serializes this MonitorRefCurrent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MonitorRefCurrent);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;
}

/// @nodoc
class $MonitorRefCurrentCopyWith<$Res> {
  $MonitorRefCurrentCopyWith(
      MonitorRefCurrent _, $Res Function(MonitorRefCurrent) __);
}

/// @nodoc
@JsonSerializable()
class _MonitorRefCurrent extends MonitorRefCurrent {
  const _MonitorRefCurrent() : super._();
  factory _MonitorRefCurrent.fromJson(Map<String, dynamic> json) =>
      _$MonitorRefCurrentFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    return _$MonitorRefCurrentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _MonitorRefCurrent);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;
}

/// @nodoc
mixin _$MonitorRefRelativeID {
  int get id;

  /// Create a copy of MonitorRefRelativeID
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MonitorRefRelativeIDCopyWith<MonitorRefRelativeID> get copyWith =>
      _$MonitorRefRelativeIDCopyWithImpl<MonitorRefRelativeID>(
          this as MonitorRefRelativeID, _$identity);

  /// Serializes this MonitorRefRelativeID to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MonitorRefRelativeID &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);
}

/// @nodoc
abstract mixin class $MonitorRefRelativeIDCopyWith<$Res> {
  factory $MonitorRefRelativeIDCopyWith(MonitorRefRelativeID value,
          $Res Function(MonitorRefRelativeID) _then) =
      _$MonitorRefRelativeIDCopyWithImpl;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$MonitorRefRelativeIDCopyWithImpl<$Res>
    implements $MonitorRefRelativeIDCopyWith<$Res> {
  _$MonitorRefRelativeIDCopyWithImpl(this._self, this._then);

  final MonitorRefRelativeID _self;
  final $Res Function(MonitorRefRelativeID) _then;

  /// Create a copy of MonitorRefRelativeID
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MonitorRefRelativeID extends MonitorRefRelativeID {
  const _MonitorRefRelativeID({required this.id}) : super._();
  factory _MonitorRefRelativeID.fromJson(Map<String, dynamic> json) =>
      _$MonitorRefRelativeIDFromJson(json);

  @override
  final int id;

  /// Create a copy of MonitorRefRelativeID
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MonitorRefRelativeIDCopyWith<_MonitorRefRelativeID> get copyWith =>
      __$MonitorRefRelativeIDCopyWithImpl<_MonitorRefRelativeID>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MonitorRefRelativeIDToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MonitorRefRelativeID &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);
}

/// @nodoc
abstract mixin class _$MonitorRefRelativeIDCopyWith<$Res>
    implements $MonitorRefRelativeIDCopyWith<$Res> {
  factory _$MonitorRefRelativeIDCopyWith(_MonitorRefRelativeID value,
          $Res Function(_MonitorRefRelativeID) _then) =
      __$MonitorRefRelativeIDCopyWithImpl;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$MonitorRefRelativeIDCopyWithImpl<$Res>
    implements _$MonitorRefRelativeIDCopyWith<$Res> {
  __$MonitorRefRelativeIDCopyWithImpl(this._self, this._then);

  final _MonitorRefRelativeID _self;
  final $Res Function(_MonitorRefRelativeID) _then;

  /// Create a copy of MonitorRefRelativeID
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(_MonitorRefRelativeID(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$WindowRefClass {
  String get classRegex;

  /// Create a copy of WindowRefClass
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WindowRefClassCopyWith<WindowRefClass> get copyWith =>
      _$WindowRefClassCopyWithImpl<WindowRefClass>(
          this as WindowRefClass, _$identity);

  /// Serializes this WindowRefClass to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WindowRefClass &&
            (identical(other.classRegex, classRegex) ||
                other.classRegex == classRegex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, classRegex);
}

/// @nodoc
abstract mixin class $WindowRefClassCopyWith<$Res> {
  factory $WindowRefClassCopyWith(
          WindowRefClass value, $Res Function(WindowRefClass) _then) =
      _$WindowRefClassCopyWithImpl;
  @useResult
  $Res call({String classRegex});
}

/// @nodoc
class _$WindowRefClassCopyWithImpl<$Res>
    implements $WindowRefClassCopyWith<$Res> {
  _$WindowRefClassCopyWithImpl(this._self, this._then);

  final WindowRefClass _self;
  final $Res Function(WindowRefClass) _then;

  /// Create a copy of WindowRefClass
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classRegex = null,
  }) {
    return _then(_self.copyWith(
      classRegex: null == classRegex
          ? _self.classRegex
          : classRegex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _WindowRefClass extends WindowRefClass {
  const _WindowRefClass({required this.classRegex}) : super._();
  factory _WindowRefClass.fromJson(Map<String, dynamic> json) =>
      _$WindowRefClassFromJson(json);

  @override
  final String classRegex;

  /// Create a copy of WindowRefClass
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WindowRefClassCopyWith<_WindowRefClass> get copyWith =>
      __$WindowRefClassCopyWithImpl<_WindowRefClass>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WindowRefClassToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WindowRefClass &&
            (identical(other.classRegex, classRegex) ||
                other.classRegex == classRegex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, classRegex);
}

/// @nodoc
abstract mixin class _$WindowRefClassCopyWith<$Res>
    implements $WindowRefClassCopyWith<$Res> {
  factory _$WindowRefClassCopyWith(
          _WindowRefClass value, $Res Function(_WindowRefClass) _then) =
      __$WindowRefClassCopyWithImpl;
  @override
  @useResult
  $Res call({String classRegex});
}

/// @nodoc
class __$WindowRefClassCopyWithImpl<$Res>
    implements _$WindowRefClassCopyWith<$Res> {
  __$WindowRefClassCopyWithImpl(this._self, this._then);

  final _WindowRefClass _self;
  final $Res Function(_WindowRefClass) _then;

  /// Create a copy of WindowRefClass
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? classRegex = null,
  }) {
    return _then(_WindowRefClass(
      classRegex: null == classRegex
          ? _self.classRegex
          : classRegex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$WindowRefInitialClass {
  String get classRegex;

  /// Create a copy of WindowRefInitialClass
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WindowRefInitialClassCopyWith<WindowRefInitialClass> get copyWith =>
      _$WindowRefInitialClassCopyWithImpl<WindowRefInitialClass>(
          this as WindowRefInitialClass, _$identity);

  /// Serializes this WindowRefInitialClass to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WindowRefInitialClass &&
            (identical(other.classRegex, classRegex) ||
                other.classRegex == classRegex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, classRegex);
}

/// @nodoc
abstract mixin class $WindowRefInitialClassCopyWith<$Res> {
  factory $WindowRefInitialClassCopyWith(WindowRefInitialClass value,
          $Res Function(WindowRefInitialClass) _then) =
      _$WindowRefInitialClassCopyWithImpl;
  @useResult
  $Res call({String classRegex});
}

/// @nodoc
class _$WindowRefInitialClassCopyWithImpl<$Res>
    implements $WindowRefInitialClassCopyWith<$Res> {
  _$WindowRefInitialClassCopyWithImpl(this._self, this._then);

  final WindowRefInitialClass _self;
  final $Res Function(WindowRefInitialClass) _then;

  /// Create a copy of WindowRefInitialClass
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classRegex = null,
  }) {
    return _then(_self.copyWith(
      classRegex: null == classRegex
          ? _self.classRegex
          : classRegex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _WindowRefInitialClass extends WindowRefInitialClass {
  const _WindowRefInitialClass({required this.classRegex}) : super._();
  factory _WindowRefInitialClass.fromJson(Map<String, dynamic> json) =>
      _$WindowRefInitialClassFromJson(json);

  @override
  final String classRegex;

  /// Create a copy of WindowRefInitialClass
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WindowRefInitialClassCopyWith<_WindowRefInitialClass> get copyWith =>
      __$WindowRefInitialClassCopyWithImpl<_WindowRefInitialClass>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WindowRefInitialClassToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WindowRefInitialClass &&
            (identical(other.classRegex, classRegex) ||
                other.classRegex == classRegex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, classRegex);
}

/// @nodoc
abstract mixin class _$WindowRefInitialClassCopyWith<$Res>
    implements $WindowRefInitialClassCopyWith<$Res> {
  factory _$WindowRefInitialClassCopyWith(_WindowRefInitialClass value,
          $Res Function(_WindowRefInitialClass) _then) =
      __$WindowRefInitialClassCopyWithImpl;
  @override
  @useResult
  $Res call({String classRegex});
}

/// @nodoc
class __$WindowRefInitialClassCopyWithImpl<$Res>
    implements _$WindowRefInitialClassCopyWith<$Res> {
  __$WindowRefInitialClassCopyWithImpl(this._self, this._then);

  final _WindowRefInitialClass _self;
  final $Res Function(_WindowRefInitialClass) _then;

  /// Create a copy of WindowRefInitialClass
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? classRegex = null,
  }) {
    return _then(_WindowRefInitialClass(
      classRegex: null == classRegex
          ? _self.classRegex
          : classRegex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$WindowRefTitle {
  String get titleRegex;

  /// Create a copy of WindowRefTitle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WindowRefTitleCopyWith<WindowRefTitle> get copyWith =>
      _$WindowRefTitleCopyWithImpl<WindowRefTitle>(
          this as WindowRefTitle, _$identity);

  /// Serializes this WindowRefTitle to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WindowRefTitle &&
            (identical(other.titleRegex, titleRegex) ||
                other.titleRegex == titleRegex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, titleRegex);
}

/// @nodoc
abstract mixin class $WindowRefTitleCopyWith<$Res> {
  factory $WindowRefTitleCopyWith(
          WindowRefTitle value, $Res Function(WindowRefTitle) _then) =
      _$WindowRefTitleCopyWithImpl;
  @useResult
  $Res call({String titleRegex});
}

/// @nodoc
class _$WindowRefTitleCopyWithImpl<$Res>
    implements $WindowRefTitleCopyWith<$Res> {
  _$WindowRefTitleCopyWithImpl(this._self, this._then);

  final WindowRefTitle _self;
  final $Res Function(WindowRefTitle) _then;

  /// Create a copy of WindowRefTitle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titleRegex = null,
  }) {
    return _then(_self.copyWith(
      titleRegex: null == titleRegex
          ? _self.titleRegex
          : titleRegex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _WindowRefTitle extends WindowRefTitle {
  const _WindowRefTitle({required this.titleRegex}) : super._();
  factory _WindowRefTitle.fromJson(Map<String, dynamic> json) =>
      _$WindowRefTitleFromJson(json);

  @override
  final String titleRegex;

  /// Create a copy of WindowRefTitle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WindowRefTitleCopyWith<_WindowRefTitle> get copyWith =>
      __$WindowRefTitleCopyWithImpl<_WindowRefTitle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WindowRefTitleToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WindowRefTitle &&
            (identical(other.titleRegex, titleRegex) ||
                other.titleRegex == titleRegex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, titleRegex);
}

/// @nodoc
abstract mixin class _$WindowRefTitleCopyWith<$Res>
    implements $WindowRefTitleCopyWith<$Res> {
  factory _$WindowRefTitleCopyWith(
          _WindowRefTitle value, $Res Function(_WindowRefTitle) _then) =
      __$WindowRefTitleCopyWithImpl;
  @override
  @useResult
  $Res call({String titleRegex});
}

/// @nodoc
class __$WindowRefTitleCopyWithImpl<$Res>
    implements _$WindowRefTitleCopyWith<$Res> {
  __$WindowRefTitleCopyWithImpl(this._self, this._then);

  final _WindowRefTitle _self;
  final $Res Function(_WindowRefTitle) _then;

  /// Create a copy of WindowRefTitle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? titleRegex = null,
  }) {
    return _then(_WindowRefTitle(
      titleRegex: null == titleRegex
          ? _self.titleRegex
          : titleRegex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$WindowRefInitialTitle {
  String get titleRegex;

  /// Create a copy of WindowRefInitialTitle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WindowRefInitialTitleCopyWith<WindowRefInitialTitle> get copyWith =>
      _$WindowRefInitialTitleCopyWithImpl<WindowRefInitialTitle>(
          this as WindowRefInitialTitle, _$identity);

  /// Serializes this WindowRefInitialTitle to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WindowRefInitialTitle &&
            (identical(other.titleRegex, titleRegex) ||
                other.titleRegex == titleRegex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, titleRegex);
}

/// @nodoc
abstract mixin class $WindowRefInitialTitleCopyWith<$Res> {
  factory $WindowRefInitialTitleCopyWith(WindowRefInitialTitle value,
          $Res Function(WindowRefInitialTitle) _then) =
      _$WindowRefInitialTitleCopyWithImpl;
  @useResult
  $Res call({String titleRegex});
}

/// @nodoc
class _$WindowRefInitialTitleCopyWithImpl<$Res>
    implements $WindowRefInitialTitleCopyWith<$Res> {
  _$WindowRefInitialTitleCopyWithImpl(this._self, this._then);

  final WindowRefInitialTitle _self;
  final $Res Function(WindowRefInitialTitle) _then;

  /// Create a copy of WindowRefInitialTitle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titleRegex = null,
  }) {
    return _then(_self.copyWith(
      titleRegex: null == titleRegex
          ? _self.titleRegex
          : titleRegex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _WindowRefInitialTitle extends WindowRefInitialTitle {
  const _WindowRefInitialTitle({required this.titleRegex}) : super._();
  factory _WindowRefInitialTitle.fromJson(Map<String, dynamic> json) =>
      _$WindowRefInitialTitleFromJson(json);

  @override
  final String titleRegex;

  /// Create a copy of WindowRefInitialTitle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WindowRefInitialTitleCopyWith<_WindowRefInitialTitle> get copyWith =>
      __$WindowRefInitialTitleCopyWithImpl<_WindowRefInitialTitle>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WindowRefInitialTitleToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WindowRefInitialTitle &&
            (identical(other.titleRegex, titleRegex) ||
                other.titleRegex == titleRegex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, titleRegex);
}

/// @nodoc
abstract mixin class _$WindowRefInitialTitleCopyWith<$Res>
    implements $WindowRefInitialTitleCopyWith<$Res> {
  factory _$WindowRefInitialTitleCopyWith(_WindowRefInitialTitle value,
          $Res Function(_WindowRefInitialTitle) _then) =
      __$WindowRefInitialTitleCopyWithImpl;
  @override
  @useResult
  $Res call({String titleRegex});
}

/// @nodoc
class __$WindowRefInitialTitleCopyWithImpl<$Res>
    implements _$WindowRefInitialTitleCopyWith<$Res> {
  __$WindowRefInitialTitleCopyWithImpl(this._self, this._then);

  final _WindowRefInitialTitle _self;
  final $Res Function(_WindowRefInitialTitle) _then;

  /// Create a copy of WindowRefInitialTitle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? titleRegex = null,
  }) {
    return _then(_WindowRefInitialTitle(
      titleRegex: null == titleRegex
          ? _self.titleRegex
          : titleRegex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$WindowRefPid {
  int get pid;

  /// Create a copy of WindowRefPid
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WindowRefPidCopyWith<WindowRefPid> get copyWith =>
      _$WindowRefPidCopyWithImpl<WindowRefPid>(
          this as WindowRefPid, _$identity);

  /// Serializes this WindowRefPid to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WindowRefPid &&
            (identical(other.pid, pid) || other.pid == pid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pid);
}

/// @nodoc
abstract mixin class $WindowRefPidCopyWith<$Res> {
  factory $WindowRefPidCopyWith(
          WindowRefPid value, $Res Function(WindowRefPid) _then) =
      _$WindowRefPidCopyWithImpl;
  @useResult
  $Res call({int pid});
}

/// @nodoc
class _$WindowRefPidCopyWithImpl<$Res> implements $WindowRefPidCopyWith<$Res> {
  _$WindowRefPidCopyWithImpl(this._self, this._then);

  final WindowRefPid _self;
  final $Res Function(WindowRefPid) _then;

  /// Create a copy of WindowRefPid
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pid = null,
  }) {
    return _then(_self.copyWith(
      pid: null == pid
          ? _self.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _WindowRefPid extends WindowRefPid {
  const _WindowRefPid({required this.pid}) : super._();
  factory _WindowRefPid.fromJson(Map<String, dynamic> json) =>
      _$WindowRefPidFromJson(json);

  @override
  final int pid;

  /// Create a copy of WindowRefPid
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WindowRefPidCopyWith<_WindowRefPid> get copyWith =>
      __$WindowRefPidCopyWithImpl<_WindowRefPid>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WindowRefPidToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WindowRefPid &&
            (identical(other.pid, pid) || other.pid == pid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pid);
}

/// @nodoc
abstract mixin class _$WindowRefPidCopyWith<$Res>
    implements $WindowRefPidCopyWith<$Res> {
  factory _$WindowRefPidCopyWith(
          _WindowRefPid value, $Res Function(_WindowRefPid) _then) =
      __$WindowRefPidCopyWithImpl;
  @override
  @useResult
  $Res call({int pid});
}

/// @nodoc
class __$WindowRefPidCopyWithImpl<$Res>
    implements _$WindowRefPidCopyWith<$Res> {
  __$WindowRefPidCopyWithImpl(this._self, this._then);

  final _WindowRefPid _self;
  final $Res Function(_WindowRefPid) _then;

  /// Create a copy of WindowRefPid
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pid = null,
  }) {
    return _then(_WindowRefPid(
      pid: null == pid
          ? _self.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$WindowRefAddress {
  int get address;

  /// Create a copy of WindowRefAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WindowRefAddressCopyWith<WindowRefAddress> get copyWith =>
      _$WindowRefAddressCopyWithImpl<WindowRefAddress>(
          this as WindowRefAddress, _$identity);

  /// Serializes this WindowRefAddress to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WindowRefAddress &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, address);
}

/// @nodoc
abstract mixin class $WindowRefAddressCopyWith<$Res> {
  factory $WindowRefAddressCopyWith(
          WindowRefAddress value, $Res Function(WindowRefAddress) _then) =
      _$WindowRefAddressCopyWithImpl;
  @useResult
  $Res call({int address});
}

/// @nodoc
class _$WindowRefAddressCopyWithImpl<$Res>
    implements $WindowRefAddressCopyWith<$Res> {
  _$WindowRefAddressCopyWithImpl(this._self, this._then);

  final WindowRefAddress _self;
  final $Res Function(WindowRefAddress) _then;

  /// Create a copy of WindowRefAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_self.copyWith(
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _WindowRefAddress extends WindowRefAddress {
  const _WindowRefAddress({required this.address}) : super._();
  factory _WindowRefAddress.fromJson(Map<String, dynamic> json) =>
      _$WindowRefAddressFromJson(json);

  @override
  final int address;

  /// Create a copy of WindowRefAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WindowRefAddressCopyWith<_WindowRefAddress> get copyWith =>
      __$WindowRefAddressCopyWithImpl<_WindowRefAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WindowRefAddressToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WindowRefAddress &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, address);
}

/// @nodoc
abstract mixin class _$WindowRefAddressCopyWith<$Res>
    implements $WindowRefAddressCopyWith<$Res> {
  factory _$WindowRefAddressCopyWith(
          _WindowRefAddress value, $Res Function(_WindowRefAddress) _then) =
      __$WindowRefAddressCopyWithImpl;
  @override
  @useResult
  $Res call({int address});
}

/// @nodoc
class __$WindowRefAddressCopyWithImpl<$Res>
    implements _$WindowRefAddressCopyWith<$Res> {
  __$WindowRefAddressCopyWithImpl(this._self, this._then);

  final _WindowRefAddress _self;
  final $Res Function(_WindowRefAddress) _then;

  /// Create a copy of WindowRefAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? address = null,
  }) {
    return _then(_WindowRefAddress(
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$WindowRefActiveWindow {
  /// Serializes this WindowRefActiveWindow to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WindowRefActiveWindow);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;
}

/// @nodoc
class $WindowRefActiveWindowCopyWith<$Res> {
  $WindowRefActiveWindowCopyWith(
      WindowRefActiveWindow _, $Res Function(WindowRefActiveWindow) __);
}

/// @nodoc
@JsonSerializable()
class _WindowRefActiveWindow extends WindowRefActiveWindow {
  const _WindowRefActiveWindow() : super._();
  factory _WindowRefActiveWindow.fromJson(Map<String, dynamic> json) =>
      _$WindowRefActiveWindowFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    return _$WindowRefActiveWindowToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WindowRefActiveWindow);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;
}

/// @nodoc
mixin _$WindowRefFirstFloating {
  /// Serializes this WindowRefFirstFloating to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WindowRefFirstFloating);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;
}

/// @nodoc
class $WindowRefFirstFloatingCopyWith<$Res> {
  $WindowRefFirstFloatingCopyWith(
      WindowRefFirstFloating _, $Res Function(WindowRefFirstFloating) __);
}

/// @nodoc
@JsonSerializable()
class _WindowRefFirstFloating extends WindowRefFirstFloating {
  const _WindowRefFirstFloating() : super._();
  factory _WindowRefFirstFloating.fromJson(Map<String, dynamic> json) =>
      _$WindowRefFirstFloatingFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    return _$WindowRefFirstFloatingToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WindowRefFirstFloating);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;
}

/// @nodoc
mixin _$WindowRefFirstTiled {
  /// Serializes this WindowRefFirstTiled to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WindowRefFirstTiled);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;
}

/// @nodoc
class $WindowRefFirstTiledCopyWith<$Res> {
  $WindowRefFirstTiledCopyWith(
      WindowRefFirstTiled _, $Res Function(WindowRefFirstTiled) __);
}

/// @nodoc
@JsonSerializable()
class _WindowRefFirstTiled extends WindowRefFirstTiled {
  const _WindowRefFirstTiled() : super._();
  factory _WindowRefFirstTiled.fromJson(Map<String, dynamic> json) =>
      _$WindowRefFirstTiledFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    return _$WindowRefFirstTiledToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WindowRefFirstTiled);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;
}

/// @nodoc
mixin _$MonitorInfoReserved {
  int get left;
  int get top;
  int get right;
  int get bottom;

  /// Create a copy of MonitorInfoReserved
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MonitorInfoReservedCopyWith<MonitorInfoReserved> get copyWith =>
      _$MonitorInfoReservedCopyWithImpl<MonitorInfoReserved>(
          this as MonitorInfoReserved, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MonitorInfoReserved &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.right, right) || other.right == right) &&
            (identical(other.bottom, bottom) || other.bottom == bottom));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, left, top, right, bottom);

  @override
  String toString() {
    return 'MonitorInfoReserved(left: $left, top: $top, right: $right, bottom: $bottom)';
  }
}

/// @nodoc
abstract mixin class $MonitorInfoReservedCopyWith<$Res> {
  factory $MonitorInfoReservedCopyWith(
          MonitorInfoReserved value, $Res Function(MonitorInfoReserved) _then) =
      _$MonitorInfoReservedCopyWithImpl;
  @useResult
  $Res call({int left, int top, int right, int bottom});
}

/// @nodoc
class _$MonitorInfoReservedCopyWithImpl<$Res>
    implements $MonitorInfoReservedCopyWith<$Res> {
  _$MonitorInfoReservedCopyWithImpl(this._self, this._then);

  final MonitorInfoReserved _self;
  final $Res Function(MonitorInfoReserved) _then;

  /// Create a copy of MonitorInfoReserved
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? left = null,
    Object? top = null,
    Object? right = null,
    Object? bottom = null,
  }) {
    return _then(_self.copyWith(
      left: null == left
          ? _self.left
          : left // ignore: cast_nullable_to_non_nullable
              as int,
      top: null == top
          ? _self.top
          : top // ignore: cast_nullable_to_non_nullable
              as int,
      right: null == right
          ? _self.right
          : right // ignore: cast_nullable_to_non_nullable
              as int,
      bottom: null == bottom
          ? _self.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _MonitorInfoReserved implements MonitorInfoReserved {
  const _MonitorInfoReserved(
      {required this.left,
      required this.top,
      required this.right,
      required this.bottom});
  factory _MonitorInfoReserved.fromJson(Map<String, dynamic> json) =>
      _$MonitorInfoReservedFromJson(json);

  @override
  final int left;
  @override
  final int top;
  @override
  final int right;
  @override
  final int bottom;

  /// Create a copy of MonitorInfoReserved
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MonitorInfoReservedCopyWith<_MonitorInfoReserved> get copyWith =>
      __$MonitorInfoReservedCopyWithImpl<_MonitorInfoReserved>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MonitorInfoReserved &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.right, right) || other.right == right) &&
            (identical(other.bottom, bottom) || other.bottom == bottom));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, left, top, right, bottom);

  @override
  String toString() {
    return 'MonitorInfoReserved(left: $left, top: $top, right: $right, bottom: $bottom)';
  }
}

/// @nodoc
abstract mixin class _$MonitorInfoReservedCopyWith<$Res>
    implements $MonitorInfoReservedCopyWith<$Res> {
  factory _$MonitorInfoReservedCopyWith(_MonitorInfoReserved value,
          $Res Function(_MonitorInfoReserved) _then) =
      __$MonitorInfoReservedCopyWithImpl;
  @override
  @useResult
  $Res call({int left, int top, int right, int bottom});
}

/// @nodoc
class __$MonitorInfoReservedCopyWithImpl<$Res>
    implements _$MonitorInfoReservedCopyWith<$Res> {
  __$MonitorInfoReservedCopyWithImpl(this._self, this._then);

  final _MonitorInfoReserved _self;
  final $Res Function(_MonitorInfoReserved) _then;

  /// Create a copy of MonitorInfoReserved
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? left = null,
    Object? top = null,
    Object? right = null,
    Object? bottom = null,
  }) {
    return _then(_MonitorInfoReserved(
      left: null == left
          ? _self.left
          : left // ignore: cast_nullable_to_non_nullable
              as int,
      top: null == top
          ? _self.top
          : top // ignore: cast_nullable_to_non_nullable
              as int,
      right: null == right
          ? _self.right
          : right // ignore: cast_nullable_to_non_nullable
              as int,
      bottom: null == bottom
          ? _self.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$MonitorInfoWorkspace {
// required WorkspaceRefID id, // TODO: move them to freezed and make tojson
// required WorkspaceRefName name, // TODO: move them to freezed and make tojson
  int get id;
  String get name;

  /// Create a copy of MonitorInfoWorkspace
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MonitorInfoWorkspaceCopyWith<MonitorInfoWorkspace> get copyWith =>
      _$MonitorInfoWorkspaceCopyWithImpl<MonitorInfoWorkspace>(
          this as MonitorInfoWorkspace, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MonitorInfoWorkspace &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'MonitorInfoWorkspace(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $MonitorInfoWorkspaceCopyWith<$Res> {
  factory $MonitorInfoWorkspaceCopyWith(MonitorInfoWorkspace value,
          $Res Function(MonitorInfoWorkspace) _then) =
      _$MonitorInfoWorkspaceCopyWithImpl;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$MonitorInfoWorkspaceCopyWithImpl<$Res>
    implements $MonitorInfoWorkspaceCopyWith<$Res> {
  _$MonitorInfoWorkspaceCopyWithImpl(this._self, this._then);

  final MonitorInfoWorkspace _self;
  final $Res Function(MonitorInfoWorkspace) _then;

  /// Create a copy of MonitorInfoWorkspace
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _MonitorInfoWorkspace implements MonitorInfoWorkspace {
  const _MonitorInfoWorkspace({required this.id, required this.name});
  factory _MonitorInfoWorkspace.fromJson(Map<String, dynamic> json) =>
      _$MonitorInfoWorkspaceFromJson(json);

// required WorkspaceRefID id, // TODO: move them to freezed and make tojson
// required WorkspaceRefName name, // TODO: move them to freezed and make tojson
  @override
  final int id;
  @override
  final String name;

  /// Create a copy of MonitorInfoWorkspace
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MonitorInfoWorkspaceCopyWith<_MonitorInfoWorkspace> get copyWith =>
      __$MonitorInfoWorkspaceCopyWithImpl<_MonitorInfoWorkspace>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MonitorInfoWorkspace &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'MonitorInfoWorkspace(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$MonitorInfoWorkspaceCopyWith<$Res>
    implements $MonitorInfoWorkspaceCopyWith<$Res> {
  factory _$MonitorInfoWorkspaceCopyWith(_MonitorInfoWorkspace value,
          $Res Function(_MonitorInfoWorkspace) _then) =
      __$MonitorInfoWorkspaceCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$MonitorInfoWorkspaceCopyWithImpl<$Res>
    implements _$MonitorInfoWorkspaceCopyWith<$Res> {
  __$MonitorInfoWorkspaceCopyWithImpl(this._self, this._then);

  final _MonitorInfoWorkspace _self;
  final $Res Function(_MonitorInfoWorkspace) _then;

  /// Create a copy of MonitorInfoWorkspace
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_MonitorInfoWorkspace(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$MonitorInfoMode {
  int get width;
  int get height;
  double get refreshRate;

  /// Create a copy of MonitorInfoMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MonitorInfoModeCopyWith<MonitorInfoMode> get copyWith =>
      _$MonitorInfoModeCopyWithImpl<MonitorInfoMode>(
          this as MonitorInfoMode, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MonitorInfoMode &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.refreshRate, refreshRate) ||
                other.refreshRate == refreshRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, width, height, refreshRate);

  @override
  String toString() {
    return 'MonitorInfoMode(width: $width, height: $height, refreshRate: $refreshRate)';
  }
}

/// @nodoc
abstract mixin class $MonitorInfoModeCopyWith<$Res> {
  factory $MonitorInfoModeCopyWith(
          MonitorInfoMode value, $Res Function(MonitorInfoMode) _then) =
      _$MonitorInfoModeCopyWithImpl;
  @useResult
  $Res call({int width, int height, double refreshRate});
}

/// @nodoc
class _$MonitorInfoModeCopyWithImpl<$Res>
    implements $MonitorInfoModeCopyWith<$Res> {
  _$MonitorInfoModeCopyWithImpl(this._self, this._then);

  final MonitorInfoMode _self;
  final $Res Function(MonitorInfoMode) _then;

  /// Create a copy of MonitorInfoMode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? refreshRate = null,
  }) {
    return _then(_self.copyWith(
      width: null == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      refreshRate: null == refreshRate
          ? _self.refreshRate
          : refreshRate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _MonitorInfoMode implements MonitorInfoMode {
  const _MonitorInfoMode(
      {required this.width, required this.height, required this.refreshRate});
  factory _MonitorInfoMode.fromJson(Map<String, dynamic> json) =>
      _$MonitorInfoModeFromJson(json);

  @override
  final int width;
  @override
  final int height;
  @override
  final double refreshRate;

  /// Create a copy of MonitorInfoMode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MonitorInfoModeCopyWith<_MonitorInfoMode> get copyWith =>
      __$MonitorInfoModeCopyWithImpl<_MonitorInfoMode>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MonitorInfoMode &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.refreshRate, refreshRate) ||
                other.refreshRate == refreshRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, width, height, refreshRate);

  @override
  String toString() {
    return 'MonitorInfoMode(width: $width, height: $height, refreshRate: $refreshRate)';
  }
}

/// @nodoc
abstract mixin class _$MonitorInfoModeCopyWith<$Res>
    implements $MonitorInfoModeCopyWith<$Res> {
  factory _$MonitorInfoModeCopyWith(
          _MonitorInfoMode value, $Res Function(_MonitorInfoMode) _then) =
      __$MonitorInfoModeCopyWithImpl;
  @override
  @useResult
  $Res call({int width, int height, double refreshRate});
}

/// @nodoc
class __$MonitorInfoModeCopyWithImpl<$Res>
    implements _$MonitorInfoModeCopyWith<$Res> {
  __$MonitorInfoModeCopyWithImpl(this._self, this._then);

  final _MonitorInfoMode _self;
  final $Res Function(_MonitorInfoMode) _then;

  /// Create a copy of MonitorInfoMode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? refreshRate = null,
  }) {
    return _then(_MonitorInfoMode(
      width: null == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      refreshRate: null == refreshRate
          ? _self.refreshRate
          : refreshRate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
mixin _$MonitorInfo {
  int get id;
  String get name;
  String get description;
  String get model;
  double get refreshRate;
  @_EmptyRect()
  Rectangle get rect;
  MonitorInfoWorkspace get activeWorkspace;
  MonitorInfoWorkspace get specialWorkspace;
  MonitorInfoReserved get reserved;
  double get scale;
  MonitorTransform get transform;
  bool get focused;
  bool get dpmsStatus;
  bool get vrr;
  bool get activelyTearing;
  bool get disabled;
  String get currentFormat;
  List<MonitorInfoMode> get availableModes;

  /// Create a copy of MonitorInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MonitorInfoCopyWith<MonitorInfo> get copyWith =>
      _$MonitorInfoCopyWithImpl<MonitorInfo>(this as MonitorInfo, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MonitorInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.refreshRate, refreshRate) ||
                other.refreshRate == refreshRate) &&
            (identical(other.rect, rect) || other.rect == rect) &&
            (identical(other.activeWorkspace, activeWorkspace) ||
                other.activeWorkspace == activeWorkspace) &&
            (identical(other.specialWorkspace, specialWorkspace) ||
                other.specialWorkspace == specialWorkspace) &&
            (identical(other.reserved, reserved) ||
                other.reserved == reserved) &&
            (identical(other.scale, scale) || other.scale == scale) &&
            (identical(other.transform, transform) ||
                other.transform == transform) &&
            (identical(other.focused, focused) || other.focused == focused) &&
            (identical(other.dpmsStatus, dpmsStatus) ||
                other.dpmsStatus == dpmsStatus) &&
            (identical(other.vrr, vrr) || other.vrr == vrr) &&
            (identical(other.activelyTearing, activelyTearing) ||
                other.activelyTearing == activelyTearing) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled) &&
            (identical(other.currentFormat, currentFormat) ||
                other.currentFormat == currentFormat) &&
            const DeepCollectionEquality()
                .equals(other.availableModes, availableModes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      model,
      refreshRate,
      rect,
      activeWorkspace,
      specialWorkspace,
      reserved,
      scale,
      transform,
      focused,
      dpmsStatus,
      vrr,
      activelyTearing,
      disabled,
      currentFormat,
      const DeepCollectionEquality().hash(availableModes));

  @override
  String toString() {
    return 'MonitorInfo(id: $id, name: $name, description: $description, model: $model, refreshRate: $refreshRate, rect: $rect, activeWorkspace: $activeWorkspace, specialWorkspace: $specialWorkspace, reserved: $reserved, scale: $scale, transform: $transform, focused: $focused, dpmsStatus: $dpmsStatus, vrr: $vrr, activelyTearing: $activelyTearing, disabled: $disabled, currentFormat: $currentFormat, availableModes: $availableModes)';
  }
}

/// @nodoc
abstract mixin class $MonitorInfoCopyWith<$Res> {
  factory $MonitorInfoCopyWith(
          MonitorInfo value, $Res Function(MonitorInfo) _then) =
      _$MonitorInfoCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      String model,
      double refreshRate,
      @_EmptyRect() Rectangle rect,
      MonitorInfoWorkspace activeWorkspace,
      MonitorInfoWorkspace specialWorkspace,
      MonitorInfoReserved reserved,
      double scale,
      MonitorTransform transform,
      bool focused,
      bool dpmsStatus,
      bool vrr,
      bool activelyTearing,
      bool disabled,
      String currentFormat,
      List<MonitorInfoMode> availableModes});

  $MonitorInfoWorkspaceCopyWith<$Res> get activeWorkspace;
  $MonitorInfoWorkspaceCopyWith<$Res> get specialWorkspace;
  $MonitorInfoReservedCopyWith<$Res> get reserved;
}

/// @nodoc
class _$MonitorInfoCopyWithImpl<$Res> implements $MonitorInfoCopyWith<$Res> {
  _$MonitorInfoCopyWithImpl(this._self, this._then);

  final MonitorInfo _self;
  final $Res Function(MonitorInfo) _then;

  /// Create a copy of MonitorInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? model = null,
    Object? refreshRate = null,
    Object? rect = null,
    Object? activeWorkspace = null,
    Object? specialWorkspace = null,
    Object? reserved = null,
    Object? scale = null,
    Object? transform = null,
    Object? focused = null,
    Object? dpmsStatus = null,
    Object? vrr = null,
    Object? activelyTearing = null,
    Object? disabled = null,
    Object? currentFormat = null,
    Object? availableModes = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      refreshRate: null == refreshRate
          ? _self.refreshRate
          : refreshRate // ignore: cast_nullable_to_non_nullable
              as double,
      rect: null == rect
          ? _self.rect
          : rect // ignore: cast_nullable_to_non_nullable
              as Rectangle,
      activeWorkspace: null == activeWorkspace
          ? _self.activeWorkspace
          : activeWorkspace // ignore: cast_nullable_to_non_nullable
              as MonitorInfoWorkspace,
      specialWorkspace: null == specialWorkspace
          ? _self.specialWorkspace
          : specialWorkspace // ignore: cast_nullable_to_non_nullable
              as MonitorInfoWorkspace,
      reserved: null == reserved
          ? _self.reserved
          : reserved // ignore: cast_nullable_to_non_nullable
              as MonitorInfoReserved,
      scale: null == scale
          ? _self.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double,
      transform: null == transform
          ? _self.transform
          : transform // ignore: cast_nullable_to_non_nullable
              as MonitorTransform,
      focused: null == focused
          ? _self.focused
          : focused // ignore: cast_nullable_to_non_nullable
              as bool,
      dpmsStatus: null == dpmsStatus
          ? _self.dpmsStatus
          : dpmsStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      vrr: null == vrr
          ? _self.vrr
          : vrr // ignore: cast_nullable_to_non_nullable
              as bool,
      activelyTearing: null == activelyTearing
          ? _self.activelyTearing
          : activelyTearing // ignore: cast_nullable_to_non_nullable
              as bool,
      disabled: null == disabled
          ? _self.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool,
      currentFormat: null == currentFormat
          ? _self.currentFormat
          : currentFormat // ignore: cast_nullable_to_non_nullable
              as String,
      availableModes: null == availableModes
          ? _self.availableModes
          : availableModes // ignore: cast_nullable_to_non_nullable
              as List<MonitorInfoMode>,
    ));
  }

  /// Create a copy of MonitorInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MonitorInfoWorkspaceCopyWith<$Res> get activeWorkspace {
    return $MonitorInfoWorkspaceCopyWith<$Res>(_self.activeWorkspace, (value) {
      return _then(_self.copyWith(activeWorkspace: value));
    });
  }

  /// Create a copy of MonitorInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MonitorInfoWorkspaceCopyWith<$Res> get specialWorkspace {
    return $MonitorInfoWorkspaceCopyWith<$Res>(_self.specialWorkspace, (value) {
      return _then(_self.copyWith(specialWorkspace: value));
    });
  }

  /// Create a copy of MonitorInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MonitorInfoReservedCopyWith<$Res> get reserved {
    return $MonitorInfoReservedCopyWith<$Res>(_self.reserved, (value) {
      return _then(_self.copyWith(reserved: value));
    });
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _MonitorInfo implements MonitorInfo {
  const _MonitorInfo(
      {required this.id,
      required this.name,
      required this.description,
      required this.model,
      required this.refreshRate,
      @_EmptyRect() required this.rect,
      required this.activeWorkspace,
      required this.specialWorkspace,
      required this.reserved,
      required this.scale,
      required this.transform,
      required this.focused,
      required this.dpmsStatus,
      required this.vrr,
      required this.activelyTearing,
      required this.disabled,
      required this.currentFormat,
      required final List<MonitorInfoMode> availableModes})
      : _availableModes = availableModes;
  factory _MonitorInfo.fromJson(Map<String, dynamic> json) =>
      _$MonitorInfoFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String model;
  @override
  final double refreshRate;
  @override
  @_EmptyRect()
  final Rectangle rect;
  @override
  final MonitorInfoWorkspace activeWorkspace;
  @override
  final MonitorInfoWorkspace specialWorkspace;
  @override
  final MonitorInfoReserved reserved;
  @override
  final double scale;
  @override
  final MonitorTransform transform;
  @override
  final bool focused;
  @override
  final bool dpmsStatus;
  @override
  final bool vrr;
  @override
  final bool activelyTearing;
  @override
  final bool disabled;
  @override
  final String currentFormat;
  final List<MonitorInfoMode> _availableModes;
  @override
  List<MonitorInfoMode> get availableModes {
    if (_availableModes is EqualUnmodifiableListView) return _availableModes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableModes);
  }

  /// Create a copy of MonitorInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MonitorInfoCopyWith<_MonitorInfo> get copyWith =>
      __$MonitorInfoCopyWithImpl<_MonitorInfo>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MonitorInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.refreshRate, refreshRate) ||
                other.refreshRate == refreshRate) &&
            (identical(other.rect, rect) || other.rect == rect) &&
            (identical(other.activeWorkspace, activeWorkspace) ||
                other.activeWorkspace == activeWorkspace) &&
            (identical(other.specialWorkspace, specialWorkspace) ||
                other.specialWorkspace == specialWorkspace) &&
            (identical(other.reserved, reserved) ||
                other.reserved == reserved) &&
            (identical(other.scale, scale) || other.scale == scale) &&
            (identical(other.transform, transform) ||
                other.transform == transform) &&
            (identical(other.focused, focused) || other.focused == focused) &&
            (identical(other.dpmsStatus, dpmsStatus) ||
                other.dpmsStatus == dpmsStatus) &&
            (identical(other.vrr, vrr) || other.vrr == vrr) &&
            (identical(other.activelyTearing, activelyTearing) ||
                other.activelyTearing == activelyTearing) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled) &&
            (identical(other.currentFormat, currentFormat) ||
                other.currentFormat == currentFormat) &&
            const DeepCollectionEquality()
                .equals(other._availableModes, _availableModes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      model,
      refreshRate,
      rect,
      activeWorkspace,
      specialWorkspace,
      reserved,
      scale,
      transform,
      focused,
      dpmsStatus,
      vrr,
      activelyTearing,
      disabled,
      currentFormat,
      const DeepCollectionEquality().hash(_availableModes));

  @override
  String toString() {
    return 'MonitorInfo(id: $id, name: $name, description: $description, model: $model, refreshRate: $refreshRate, rect: $rect, activeWorkspace: $activeWorkspace, specialWorkspace: $specialWorkspace, reserved: $reserved, scale: $scale, transform: $transform, focused: $focused, dpmsStatus: $dpmsStatus, vrr: $vrr, activelyTearing: $activelyTearing, disabled: $disabled, currentFormat: $currentFormat, availableModes: $availableModes)';
  }
}

/// @nodoc
abstract mixin class _$MonitorInfoCopyWith<$Res>
    implements $MonitorInfoCopyWith<$Res> {
  factory _$MonitorInfoCopyWith(
          _MonitorInfo value, $Res Function(_MonitorInfo) _then) =
      __$MonitorInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      String model,
      double refreshRate,
      @_EmptyRect() Rectangle rect,
      MonitorInfoWorkspace activeWorkspace,
      MonitorInfoWorkspace specialWorkspace,
      MonitorInfoReserved reserved,
      double scale,
      MonitorTransform transform,
      bool focused,
      bool dpmsStatus,
      bool vrr,
      bool activelyTearing,
      bool disabled,
      String currentFormat,
      List<MonitorInfoMode> availableModes});

  @override
  $MonitorInfoWorkspaceCopyWith<$Res> get activeWorkspace;
  @override
  $MonitorInfoWorkspaceCopyWith<$Res> get specialWorkspace;
  @override
  $MonitorInfoReservedCopyWith<$Res> get reserved;
}

/// @nodoc
class __$MonitorInfoCopyWithImpl<$Res> implements _$MonitorInfoCopyWith<$Res> {
  __$MonitorInfoCopyWithImpl(this._self, this._then);

  final _MonitorInfo _self;
  final $Res Function(_MonitorInfo) _then;

  /// Create a copy of MonitorInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? model = null,
    Object? refreshRate = null,
    Object? rect = null,
    Object? activeWorkspace = null,
    Object? specialWorkspace = null,
    Object? reserved = null,
    Object? scale = null,
    Object? transform = null,
    Object? focused = null,
    Object? dpmsStatus = null,
    Object? vrr = null,
    Object? activelyTearing = null,
    Object? disabled = null,
    Object? currentFormat = null,
    Object? availableModes = null,
  }) {
    return _then(_MonitorInfo(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _self.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      refreshRate: null == refreshRate
          ? _self.refreshRate
          : refreshRate // ignore: cast_nullable_to_non_nullable
              as double,
      rect: null == rect
          ? _self.rect
          : rect // ignore: cast_nullable_to_non_nullable
              as Rectangle,
      activeWorkspace: null == activeWorkspace
          ? _self.activeWorkspace
          : activeWorkspace // ignore: cast_nullable_to_non_nullable
              as MonitorInfoWorkspace,
      specialWorkspace: null == specialWorkspace
          ? _self.specialWorkspace
          : specialWorkspace // ignore: cast_nullable_to_non_nullable
              as MonitorInfoWorkspace,
      reserved: null == reserved
          ? _self.reserved
          : reserved // ignore: cast_nullable_to_non_nullable
              as MonitorInfoReserved,
      scale: null == scale
          ? _self.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double,
      transform: null == transform
          ? _self.transform
          : transform // ignore: cast_nullable_to_non_nullable
              as MonitorTransform,
      focused: null == focused
          ? _self.focused
          : focused // ignore: cast_nullable_to_non_nullable
              as bool,
      dpmsStatus: null == dpmsStatus
          ? _self.dpmsStatus
          : dpmsStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      vrr: null == vrr
          ? _self.vrr
          : vrr // ignore: cast_nullable_to_non_nullable
              as bool,
      activelyTearing: null == activelyTearing
          ? _self.activelyTearing
          : activelyTearing // ignore: cast_nullable_to_non_nullable
              as bool,
      disabled: null == disabled
          ? _self.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool,
      currentFormat: null == currentFormat
          ? _self.currentFormat
          : currentFormat // ignore: cast_nullable_to_non_nullable
              as String,
      availableModes: null == availableModes
          ? _self._availableModes
          : availableModes // ignore: cast_nullable_to_non_nullable
              as List<MonitorInfoMode>,
    ));
  }

  /// Create a copy of MonitorInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MonitorInfoWorkspaceCopyWith<$Res> get activeWorkspace {
    return $MonitorInfoWorkspaceCopyWith<$Res>(_self.activeWorkspace, (value) {
      return _then(_self.copyWith(activeWorkspace: value));
    });
  }

  /// Create a copy of MonitorInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MonitorInfoWorkspaceCopyWith<$Res> get specialWorkspace {
    return $MonitorInfoWorkspaceCopyWith<$Res>(_self.specialWorkspace, (value) {
      return _then(_self.copyWith(specialWorkspace: value));
    });
  }

  /// Create a copy of MonitorInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MonitorInfoReservedCopyWith<$Res> get reserved {
    return $MonitorInfoReservedCopyWith<$Res>(_self.reserved, (value) {
      return _then(_self.copyWith(reserved: value));
    });
  }
}

/// @nodoc
mixin _$WorkspaceInfo {
  int get id;
  String get name;
  String get monitor;
  int get monitorID;
  @JsonKey(name: "hasfullscreen")
  bool get hasFullscreen;
  @JsonKey(name: "lastwindow")
  WindowRefAddress get lastWindow;
  @JsonKey(name: "lastwindowtitle")
  String get lastWindowTitle;

  /// Create a copy of WorkspaceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WorkspaceInfoCopyWith<WorkspaceInfo> get copyWith =>
      _$WorkspaceInfoCopyWithImpl<WorkspaceInfo>(
          this as WorkspaceInfo, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WorkspaceInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.monitor, monitor) || other.monitor == monitor) &&
            (identical(other.monitorID, monitorID) ||
                other.monitorID == monitorID) &&
            (identical(other.hasFullscreen, hasFullscreen) ||
                other.hasFullscreen == hasFullscreen) &&
            (identical(other.lastWindow, lastWindow) ||
                other.lastWindow == lastWindow) &&
            (identical(other.lastWindowTitle, lastWindowTitle) ||
                other.lastWindowTitle == lastWindowTitle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, monitor, monitorID,
      hasFullscreen, lastWindow, lastWindowTitle);

  @override
  String toString() {
    return 'WorkspaceInfo(id: $id, name: $name, monitor: $monitor, monitorID: $monitorID, hasFullscreen: $hasFullscreen, lastWindow: $lastWindow, lastWindowTitle: $lastWindowTitle)';
  }
}

/// @nodoc
abstract mixin class $WorkspaceInfoCopyWith<$Res> {
  factory $WorkspaceInfoCopyWith(
          WorkspaceInfo value, $Res Function(WorkspaceInfo) _then) =
      _$WorkspaceInfoCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      String monitor,
      int monitorID,
      @JsonKey(name: "hasfullscreen") bool hasFullscreen,
      @JsonKey(name: "lastwindow") WindowRefAddress lastWindow,
      @JsonKey(name: "lastwindowtitle") String lastWindowTitle});

  $WindowRefAddressCopyWith<$Res> get lastWindow;
}

/// @nodoc
class _$WorkspaceInfoCopyWithImpl<$Res>
    implements $WorkspaceInfoCopyWith<$Res> {
  _$WorkspaceInfoCopyWithImpl(this._self, this._then);

  final WorkspaceInfo _self;
  final $Res Function(WorkspaceInfo) _then;

  /// Create a copy of WorkspaceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? monitor = null,
    Object? monitorID = null,
    Object? hasFullscreen = null,
    Object? lastWindow = null,
    Object? lastWindowTitle = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      monitor: null == monitor
          ? _self.monitor
          : monitor // ignore: cast_nullable_to_non_nullable
              as String,
      monitorID: null == monitorID
          ? _self.monitorID
          : monitorID // ignore: cast_nullable_to_non_nullable
              as int,
      hasFullscreen: null == hasFullscreen
          ? _self.hasFullscreen
          : hasFullscreen // ignore: cast_nullable_to_non_nullable
              as bool,
      lastWindow: null == lastWindow
          ? _self.lastWindow
          : lastWindow // ignore: cast_nullable_to_non_nullable
              as WindowRefAddress,
      lastWindowTitle: null == lastWindowTitle
          ? _self.lastWindowTitle
          : lastWindowTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of WorkspaceInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WindowRefAddressCopyWith<$Res> get lastWindow {
    return $WindowRefAddressCopyWith<$Res>(_self.lastWindow, (value) {
      return _then(_self.copyWith(lastWindow: value));
    });
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _WorkspaceInfo implements WorkspaceInfo {
  const _WorkspaceInfo(
      {required this.id,
      required this.name,
      required this.monitor,
      required this.monitorID,
      @JsonKey(name: "hasfullscreen") required this.hasFullscreen,
      @JsonKey(name: "lastwindow") required this.lastWindow,
      @JsonKey(name: "lastwindowtitle") required this.lastWindowTitle});
  factory _WorkspaceInfo.fromJson(Map<String, dynamic> json) =>
      _$WorkspaceInfoFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String monitor;
  @override
  final int monitorID;
  @override
  @JsonKey(name: "hasfullscreen")
  final bool hasFullscreen;
  @override
  @JsonKey(name: "lastwindow")
  final WindowRefAddress lastWindow;
  @override
  @JsonKey(name: "lastwindowtitle")
  final String lastWindowTitle;

  /// Create a copy of WorkspaceInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WorkspaceInfoCopyWith<_WorkspaceInfo> get copyWith =>
      __$WorkspaceInfoCopyWithImpl<_WorkspaceInfo>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkspaceInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.monitor, monitor) || other.monitor == monitor) &&
            (identical(other.monitorID, monitorID) ||
                other.monitorID == monitorID) &&
            (identical(other.hasFullscreen, hasFullscreen) ||
                other.hasFullscreen == hasFullscreen) &&
            (identical(other.lastWindow, lastWindow) ||
                other.lastWindow == lastWindow) &&
            (identical(other.lastWindowTitle, lastWindowTitle) ||
                other.lastWindowTitle == lastWindowTitle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, monitor, monitorID,
      hasFullscreen, lastWindow, lastWindowTitle);

  @override
  String toString() {
    return 'WorkspaceInfo(id: $id, name: $name, monitor: $monitor, monitorID: $monitorID, hasFullscreen: $hasFullscreen, lastWindow: $lastWindow, lastWindowTitle: $lastWindowTitle)';
  }
}

/// @nodoc
abstract mixin class _$WorkspaceInfoCopyWith<$Res>
    implements $WorkspaceInfoCopyWith<$Res> {
  factory _$WorkspaceInfoCopyWith(
          _WorkspaceInfo value, $Res Function(_WorkspaceInfo) _then) =
      __$WorkspaceInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String monitor,
      int monitorID,
      @JsonKey(name: "hasfullscreen") bool hasFullscreen,
      @JsonKey(name: "lastwindow") WindowRefAddress lastWindow,
      @JsonKey(name: "lastwindowtitle") String lastWindowTitle});

  @override
  $WindowRefAddressCopyWith<$Res> get lastWindow;
}

/// @nodoc
class __$WorkspaceInfoCopyWithImpl<$Res>
    implements _$WorkspaceInfoCopyWith<$Res> {
  __$WorkspaceInfoCopyWithImpl(this._self, this._then);

  final _WorkspaceInfo _self;
  final $Res Function(_WorkspaceInfo) _then;

  /// Create a copy of WorkspaceInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? monitor = null,
    Object? monitorID = null,
    Object? hasFullscreen = null,
    Object? lastWindow = null,
    Object? lastWindowTitle = null,
  }) {
    return _then(_WorkspaceInfo(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      monitor: null == monitor
          ? _self.monitor
          : monitor // ignore: cast_nullable_to_non_nullable
              as String,
      monitorID: null == monitorID
          ? _self.monitorID
          : monitorID // ignore: cast_nullable_to_non_nullable
              as int,
      hasFullscreen: null == hasFullscreen
          ? _self.hasFullscreen
          : hasFullscreen // ignore: cast_nullable_to_non_nullable
              as bool,
      lastWindow: null == lastWindow
          ? _self.lastWindow
          : lastWindow // ignore: cast_nullable_to_non_nullable
              as WindowRefAddress,
      lastWindowTitle: null == lastWindowTitle
          ? _self.lastWindowTitle
          : lastWindowTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of WorkspaceInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WindowRefAddressCopyWith<$Res> get lastWindow {
    return $WindowRefAddressCopyWith<$Res>(_self.lastWindow, (value) {
      return _then(_self.copyWith(lastWindow: value));
    });
  }
}

/// @nodoc
mixin _$ClientInfo {
  WindowRefAddress get address;
  @_EmptyRect()
  Rectangle get rect;
  bool get mapped;
  bool get hidden;
  ClientInfoWorkspace get workspace;
  bool get floating;
  bool get pseudo;
  MonitorRefID get monitor;
  @JsonKey(name: "class")
  String get className;
  String get title;
  String get initialClass;
  String get initialTitle;
  WindowRefPid get pid;
  bool get xwayland;
  bool get pinned;
  int get fullscreen;
  FullscreenState get fullscreenClient;
  List<WindowRefAddress>
      get grouped; // TODO: tags, focusHistoryID, inhibitingIdle, xdgTag, xdgDescription
  @_WindowRefAddressNullableConverter()
  WindowRefAddress? get swallowing;
  int get focusHistoryID;

  /// Create a copy of ClientInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ClientInfoCopyWith<ClientInfo> get copyWith =>
      _$ClientInfoCopyWithImpl<ClientInfo>(this as ClientInfo, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClientInfo &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.rect, rect) || other.rect == rect) &&
            (identical(other.mapped, mapped) || other.mapped == mapped) &&
            (identical(other.hidden, hidden) || other.hidden == hidden) &&
            (identical(other.workspace, workspace) ||
                other.workspace == workspace) &&
            (identical(other.floating, floating) ||
                other.floating == floating) &&
            (identical(other.pseudo, pseudo) || other.pseudo == pseudo) &&
            (identical(other.monitor, monitor) || other.monitor == monitor) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.initialClass, initialClass) ||
                other.initialClass == initialClass) &&
            (identical(other.initialTitle, initialTitle) ||
                other.initialTitle == initialTitle) &&
            (identical(other.pid, pid) || other.pid == pid) &&
            (identical(other.xwayland, xwayland) ||
                other.xwayland == xwayland) &&
            (identical(other.pinned, pinned) || other.pinned == pinned) &&
            (identical(other.fullscreen, fullscreen) ||
                other.fullscreen == fullscreen) &&
            (identical(other.fullscreenClient, fullscreenClient) ||
                other.fullscreenClient == fullscreenClient) &&
            const DeepCollectionEquality().equals(other.grouped, grouped) &&
            (identical(other.swallowing, swallowing) ||
                other.swallowing == swallowing) &&
            (identical(other.focusHistoryID, focusHistoryID) ||
                other.focusHistoryID == focusHistoryID));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        address,
        rect,
        mapped,
        hidden,
        workspace,
        floating,
        pseudo,
        monitor,
        className,
        title,
        initialClass,
        initialTitle,
        pid,
        xwayland,
        pinned,
        fullscreen,
        fullscreenClient,
        const DeepCollectionEquality().hash(grouped),
        swallowing,
        focusHistoryID
      ]);

  @override
  String toString() {
    return 'ClientInfo(address: $address, rect: $rect, mapped: $mapped, hidden: $hidden, workspace: $workspace, floating: $floating, pseudo: $pseudo, monitor: $monitor, className: $className, title: $title, initialClass: $initialClass, initialTitle: $initialTitle, pid: $pid, xwayland: $xwayland, pinned: $pinned, fullscreen: $fullscreen, fullscreenClient: $fullscreenClient, grouped: $grouped, swallowing: $swallowing, focusHistoryID: $focusHistoryID)';
  }
}

/// @nodoc
abstract mixin class $ClientInfoCopyWith<$Res> {
  factory $ClientInfoCopyWith(
          ClientInfo value, $Res Function(ClientInfo) _then) =
      _$ClientInfoCopyWithImpl;
  @useResult
  $Res call(
      {WindowRefAddress address,
      @_EmptyRect() Rectangle rect,
      bool mapped,
      bool hidden,
      ClientInfoWorkspace workspace,
      bool floating,
      bool pseudo,
      MonitorRefID monitor,
      @JsonKey(name: "class") String className,
      String title,
      String initialClass,
      String initialTitle,
      WindowRefPid pid,
      bool xwayland,
      bool pinned,
      int fullscreen,
      FullscreenState fullscreenClient,
      List<WindowRefAddress> grouped,
      @_WindowRefAddressNullableConverter() WindowRefAddress? swallowing,
      int focusHistoryID});

  $WindowRefAddressCopyWith<$Res> get address;
  $MonitorInfoWorkspaceCopyWith<$Res> get workspace;
  $MonitorRefIDCopyWith<$Res> get monitor;
  $WindowRefPidCopyWith<$Res> get pid;
  $WindowRefAddressCopyWith<$Res>? get swallowing;
}

/// @nodoc
class _$ClientInfoCopyWithImpl<$Res> implements $ClientInfoCopyWith<$Res> {
  _$ClientInfoCopyWithImpl(this._self, this._then);

  final ClientInfo _self;
  final $Res Function(ClientInfo) _then;

  /// Create a copy of ClientInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? rect = null,
    Object? mapped = null,
    Object? hidden = null,
    Object? workspace = null,
    Object? floating = null,
    Object? pseudo = null,
    Object? monitor = null,
    Object? className = null,
    Object? title = null,
    Object? initialClass = null,
    Object? initialTitle = null,
    Object? pid = null,
    Object? xwayland = null,
    Object? pinned = null,
    Object? fullscreen = null,
    Object? fullscreenClient = null,
    Object? grouped = null,
    Object? swallowing = freezed,
    Object? focusHistoryID = null,
  }) {
    return _then(_self.copyWith(
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as WindowRefAddress,
      rect: null == rect
          ? _self.rect
          : rect // ignore: cast_nullable_to_non_nullable
              as Rectangle,
      mapped: null == mapped
          ? _self.mapped
          : mapped // ignore: cast_nullable_to_non_nullable
              as bool,
      hidden: null == hidden
          ? _self.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool,
      workspace: null == workspace
          ? _self.workspace
          : workspace // ignore: cast_nullable_to_non_nullable
              as ClientInfoWorkspace,
      floating: null == floating
          ? _self.floating
          : floating // ignore: cast_nullable_to_non_nullable
              as bool,
      pseudo: null == pseudo
          ? _self.pseudo
          : pseudo // ignore: cast_nullable_to_non_nullable
              as bool,
      monitor: null == monitor
          ? _self.monitor
          : monitor // ignore: cast_nullable_to_non_nullable
              as MonitorRefID,
      className: null == className
          ? _self.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      initialClass: null == initialClass
          ? _self.initialClass
          : initialClass // ignore: cast_nullable_to_non_nullable
              as String,
      initialTitle: null == initialTitle
          ? _self.initialTitle
          : initialTitle // ignore: cast_nullable_to_non_nullable
              as String,
      pid: null == pid
          ? _self.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as WindowRefPid,
      xwayland: null == xwayland
          ? _self.xwayland
          : xwayland // ignore: cast_nullable_to_non_nullable
              as bool,
      pinned: null == pinned
          ? _self.pinned
          : pinned // ignore: cast_nullable_to_non_nullable
              as bool,
      fullscreen: null == fullscreen
          ? _self.fullscreen
          : fullscreen // ignore: cast_nullable_to_non_nullable
              as int,
      fullscreenClient: null == fullscreenClient
          ? _self.fullscreenClient
          : fullscreenClient // ignore: cast_nullable_to_non_nullable
              as FullscreenState,
      grouped: null == grouped
          ? _self.grouped
          : grouped // ignore: cast_nullable_to_non_nullable
              as List<WindowRefAddress>,
      swallowing: freezed == swallowing
          ? _self.swallowing
          : swallowing // ignore: cast_nullable_to_non_nullable
              as WindowRefAddress?,
      focusHistoryID: null == focusHistoryID
          ? _self.focusHistoryID
          : focusHistoryID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of ClientInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WindowRefAddressCopyWith<$Res> get address {
    return $WindowRefAddressCopyWith<$Res>(_self.address, (value) {
      return _then(_self.copyWith(address: value));
    });
  }

  /// Create a copy of ClientInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MonitorInfoWorkspaceCopyWith<$Res> get workspace {
    return $MonitorInfoWorkspaceCopyWith<$Res>(_self.workspace, (value) {
      return _then(_self.copyWith(workspace: value));
    });
  }

  /// Create a copy of ClientInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MonitorRefIDCopyWith<$Res> get monitor {
    return $MonitorRefIDCopyWith<$Res>(_self.monitor, (value) {
      return _then(_self.copyWith(monitor: value));
    });
  }

  /// Create a copy of ClientInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WindowRefPidCopyWith<$Res> get pid {
    return $WindowRefPidCopyWith<$Res>(_self.pid, (value) {
      return _then(_self.copyWith(pid: value));
    });
  }

  /// Create a copy of ClientInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WindowRefAddressCopyWith<$Res>? get swallowing {
    if (_self.swallowing == null) {
      return null;
    }

    return $WindowRefAddressCopyWith<$Res>(_self.swallowing!, (value) {
      return _then(_self.copyWith(swallowing: value));
    });
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _ClientInfo implements ClientInfo {
  const _ClientInfo(
      {required this.address,
      @_EmptyRect() required this.rect,
      required this.mapped,
      required this.hidden,
      required this.workspace,
      required this.floating,
      required this.pseudo,
      required this.monitor,
      @JsonKey(name: "class") required this.className,
      required this.title,
      required this.initialClass,
      required this.initialTitle,
      required this.pid,
      required this.xwayland,
      required this.pinned,
      required this.fullscreen,
      required this.fullscreenClient,
      required final List<WindowRefAddress> grouped,
      @_WindowRefAddressNullableConverter() required this.swallowing,
      required this.focusHistoryID})
      : _grouped = grouped;
  factory _ClientInfo.fromJson(Map<String, dynamic> json) =>
      _$ClientInfoFromJson(json);

  @override
  final WindowRefAddress address;
  @override
  @_EmptyRect()
  final Rectangle rect;
  @override
  final bool mapped;
  @override
  final bool hidden;
  @override
  final ClientInfoWorkspace workspace;
  @override
  final bool floating;
  @override
  final bool pseudo;
  @override
  final MonitorRefID monitor;
  @override
  @JsonKey(name: "class")
  final String className;
  @override
  final String title;
  @override
  final String initialClass;
  @override
  final String initialTitle;
  @override
  final WindowRefPid pid;
  @override
  final bool xwayland;
  @override
  final bool pinned;
  @override
  final int fullscreen;
  @override
  final FullscreenState fullscreenClient;
  final List<WindowRefAddress> _grouped;
  @override
  List<WindowRefAddress> get grouped {
    if (_grouped is EqualUnmodifiableListView) return _grouped;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_grouped);
  }

// TODO: tags, focusHistoryID, inhibitingIdle, xdgTag, xdgDescription
  @override
  @_WindowRefAddressNullableConverter()
  final WindowRefAddress? swallowing;
  @override
  final int focusHistoryID;

  /// Create a copy of ClientInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ClientInfoCopyWith<_ClientInfo> get copyWith =>
      __$ClientInfoCopyWithImpl<_ClientInfo>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClientInfo &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.rect, rect) || other.rect == rect) &&
            (identical(other.mapped, mapped) || other.mapped == mapped) &&
            (identical(other.hidden, hidden) || other.hidden == hidden) &&
            (identical(other.workspace, workspace) ||
                other.workspace == workspace) &&
            (identical(other.floating, floating) ||
                other.floating == floating) &&
            (identical(other.pseudo, pseudo) || other.pseudo == pseudo) &&
            (identical(other.monitor, monitor) || other.monitor == monitor) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.initialClass, initialClass) ||
                other.initialClass == initialClass) &&
            (identical(other.initialTitle, initialTitle) ||
                other.initialTitle == initialTitle) &&
            (identical(other.pid, pid) || other.pid == pid) &&
            (identical(other.xwayland, xwayland) ||
                other.xwayland == xwayland) &&
            (identical(other.pinned, pinned) || other.pinned == pinned) &&
            (identical(other.fullscreen, fullscreen) ||
                other.fullscreen == fullscreen) &&
            (identical(other.fullscreenClient, fullscreenClient) ||
                other.fullscreenClient == fullscreenClient) &&
            const DeepCollectionEquality().equals(other._grouped, _grouped) &&
            (identical(other.swallowing, swallowing) ||
                other.swallowing == swallowing) &&
            (identical(other.focusHistoryID, focusHistoryID) ||
                other.focusHistoryID == focusHistoryID));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        address,
        rect,
        mapped,
        hidden,
        workspace,
        floating,
        pseudo,
        monitor,
        className,
        title,
        initialClass,
        initialTitle,
        pid,
        xwayland,
        pinned,
        fullscreen,
        fullscreenClient,
        const DeepCollectionEquality().hash(_grouped),
        swallowing,
        focusHistoryID
      ]);

  @override
  String toString() {
    return 'ClientInfo(address: $address, rect: $rect, mapped: $mapped, hidden: $hidden, workspace: $workspace, floating: $floating, pseudo: $pseudo, monitor: $monitor, className: $className, title: $title, initialClass: $initialClass, initialTitle: $initialTitle, pid: $pid, xwayland: $xwayland, pinned: $pinned, fullscreen: $fullscreen, fullscreenClient: $fullscreenClient, grouped: $grouped, swallowing: $swallowing, focusHistoryID: $focusHistoryID)';
  }
}

/// @nodoc
abstract mixin class _$ClientInfoCopyWith<$Res>
    implements $ClientInfoCopyWith<$Res> {
  factory _$ClientInfoCopyWith(
          _ClientInfo value, $Res Function(_ClientInfo) _then) =
      __$ClientInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {WindowRefAddress address,
      @_EmptyRect() Rectangle rect,
      bool mapped,
      bool hidden,
      ClientInfoWorkspace workspace,
      bool floating,
      bool pseudo,
      MonitorRefID monitor,
      @JsonKey(name: "class") String className,
      String title,
      String initialClass,
      String initialTitle,
      WindowRefPid pid,
      bool xwayland,
      bool pinned,
      int fullscreen,
      FullscreenState fullscreenClient,
      List<WindowRefAddress> grouped,
      @_WindowRefAddressNullableConverter() WindowRefAddress? swallowing,
      int focusHistoryID});

  @override
  $WindowRefAddressCopyWith<$Res> get address;
  @override
  $MonitorInfoWorkspaceCopyWith<$Res> get workspace;
  @override
  $MonitorRefIDCopyWith<$Res> get monitor;
  @override
  $WindowRefPidCopyWith<$Res> get pid;
  @override
  $WindowRefAddressCopyWith<$Res>? get swallowing;
}

/// @nodoc
class __$ClientInfoCopyWithImpl<$Res> implements _$ClientInfoCopyWith<$Res> {
  __$ClientInfoCopyWithImpl(this._self, this._then);

  final _ClientInfo _self;
  final $Res Function(_ClientInfo) _then;

  /// Create a copy of ClientInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? address = null,
    Object? rect = null,
    Object? mapped = null,
    Object? hidden = null,
    Object? workspace = null,
    Object? floating = null,
    Object? pseudo = null,
    Object? monitor = null,
    Object? className = null,
    Object? title = null,
    Object? initialClass = null,
    Object? initialTitle = null,
    Object? pid = null,
    Object? xwayland = null,
    Object? pinned = null,
    Object? fullscreen = null,
    Object? fullscreenClient = null,
    Object? grouped = null,
    Object? swallowing = freezed,
    Object? focusHistoryID = null,
  }) {
    return _then(_ClientInfo(
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as WindowRefAddress,
      rect: null == rect
          ? _self.rect
          : rect // ignore: cast_nullable_to_non_nullable
              as Rectangle,
      mapped: null == mapped
          ? _self.mapped
          : mapped // ignore: cast_nullable_to_non_nullable
              as bool,
      hidden: null == hidden
          ? _self.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool,
      workspace: null == workspace
          ? _self.workspace
          : workspace // ignore: cast_nullable_to_non_nullable
              as ClientInfoWorkspace,
      floating: null == floating
          ? _self.floating
          : floating // ignore: cast_nullable_to_non_nullable
              as bool,
      pseudo: null == pseudo
          ? _self.pseudo
          : pseudo // ignore: cast_nullable_to_non_nullable
              as bool,
      monitor: null == monitor
          ? _self.monitor
          : monitor // ignore: cast_nullable_to_non_nullable
              as MonitorRefID,
      className: null == className
          ? _self.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      initialClass: null == initialClass
          ? _self.initialClass
          : initialClass // ignore: cast_nullable_to_non_nullable
              as String,
      initialTitle: null == initialTitle
          ? _self.initialTitle
          : initialTitle // ignore: cast_nullable_to_non_nullable
              as String,
      pid: null == pid
          ? _self.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as WindowRefPid,
      xwayland: null == xwayland
          ? _self.xwayland
          : xwayland // ignore: cast_nullable_to_non_nullable
              as bool,
      pinned: null == pinned
          ? _self.pinned
          : pinned // ignore: cast_nullable_to_non_nullable
              as bool,
      fullscreen: null == fullscreen
          ? _self.fullscreen
          : fullscreen // ignore: cast_nullable_to_non_nullable
              as int,
      fullscreenClient: null == fullscreenClient
          ? _self.fullscreenClient
          : fullscreenClient // ignore: cast_nullable_to_non_nullable
              as FullscreenState,
      grouped: null == grouped
          ? _self._grouped
          : grouped // ignore: cast_nullable_to_non_nullable
              as List<WindowRefAddress>,
      swallowing: freezed == swallowing
          ? _self.swallowing
          : swallowing // ignore: cast_nullable_to_non_nullable
              as WindowRefAddress?,
      focusHistoryID: null == focusHistoryID
          ? _self.focusHistoryID
          : focusHistoryID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of ClientInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WindowRefAddressCopyWith<$Res> get address {
    return $WindowRefAddressCopyWith<$Res>(_self.address, (value) {
      return _then(_self.copyWith(address: value));
    });
  }

  /// Create a copy of ClientInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MonitorInfoWorkspaceCopyWith<$Res> get workspace {
    return $MonitorInfoWorkspaceCopyWith<$Res>(_self.workspace, (value) {
      return _then(_self.copyWith(workspace: value));
    });
  }

  /// Create a copy of ClientInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MonitorRefIDCopyWith<$Res> get monitor {
    return $MonitorRefIDCopyWith<$Res>(_self.monitor, (value) {
      return _then(_self.copyWith(monitor: value));
    });
  }

  /// Create a copy of ClientInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WindowRefPidCopyWith<$Res> get pid {
    return $WindowRefPidCopyWith<$Res>(_self.pid, (value) {
      return _then(_self.copyWith(pid: value));
    });
  }

  /// Create a copy of ClientInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WindowRefAddressCopyWith<$Res>? get swallowing {
    if (_self.swallowing == null) {
      return null;
    }

    return $WindowRefAddressCopyWith<$Res>(_self.swallowing!, (value) {
      return _then(_self.copyWith(swallowing: value));
    });
  }
}

// dart format on
