// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FirebaseUserTearOff {
  const _$FirebaseUserTearOff();

  _FirebaseUser call({required UniqueId id}) {
    return _FirebaseUser(
      id: id,
    );
  }
}

/// @nodoc
const $FirebaseUser = _$FirebaseUserTearOff();

/// @nodoc
mixin _$FirebaseUser {
  UniqueId get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirebaseUserCopyWith<FirebaseUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseUserCopyWith<$Res> {
  factory $FirebaseUserCopyWith(
          FirebaseUser value, $Res Function(FirebaseUser) then) =
      _$FirebaseUserCopyWithImpl<$Res>;
  $Res call({UniqueId id});
}

/// @nodoc
class _$FirebaseUserCopyWithImpl<$Res> implements $FirebaseUserCopyWith<$Res> {
  _$FirebaseUserCopyWithImpl(this._value, this._then);

  final FirebaseUser _value;
  // ignore: unused_field
  final $Res Function(FirebaseUser) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc
abstract class _$FirebaseUserCopyWith<$Res>
    implements $FirebaseUserCopyWith<$Res> {
  factory _$FirebaseUserCopyWith(
          _FirebaseUser value, $Res Function(_FirebaseUser) then) =
      __$FirebaseUserCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id});
}

/// @nodoc
class __$FirebaseUserCopyWithImpl<$Res> extends _$FirebaseUserCopyWithImpl<$Res>
    implements _$FirebaseUserCopyWith<$Res> {
  __$FirebaseUserCopyWithImpl(
      _FirebaseUser _value, $Res Function(_FirebaseUser) _then)
      : super(_value, (v) => _then(v as _FirebaseUser));

  @override
  _FirebaseUser get _value => super._value as _FirebaseUser;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_FirebaseUser(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$_FirebaseUser implements _FirebaseUser {
  const _$_FirebaseUser({required this.id});

  @override
  final UniqueId id;

  @override
  String toString() {
    return 'FirebaseUser(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FirebaseUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$FirebaseUserCopyWith<_FirebaseUser> get copyWith =>
      __$FirebaseUserCopyWithImpl<_FirebaseUser>(this, _$identity);
}

abstract class _FirebaseUser implements FirebaseUser {
  const factory _FirebaseUser({required UniqueId id}) = _$_FirebaseUser;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FirebaseUserCopyWith<_FirebaseUser> get copyWith =>
      throw _privateConstructorUsedError;
}
