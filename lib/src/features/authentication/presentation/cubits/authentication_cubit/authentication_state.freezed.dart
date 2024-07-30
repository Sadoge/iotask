// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() pending,
    required TResult Function(User user) set,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? pending,
    TResult? Function(User user)? set,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pending,
    TResult Function(User user)? set,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Pending value) pending,
    required TResult Function(AuthenticationSetState value) set,
    required TResult Function(AuthenticationErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Pending value)? pending,
    TResult? Function(AuthenticationSetState value)? set,
    TResult? Function(AuthenticationErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Pending value)? pending,
    TResult Function(AuthenticationSetState value)? set,
    TResult Function(AuthenticationErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthenticationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() pending,
    required TResult Function(User user) set,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? pending,
    TResult? Function(User user)? set,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pending,
    TResult Function(User user)? set,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Pending value) pending,
    required TResult Function(AuthenticationSetState value) set,
    required TResult Function(AuthenticationErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Pending value)? pending,
    TResult? Function(AuthenticationSetState value)? set,
    TResult? Function(AuthenticationErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Pending value)? pending,
    TResult Function(AuthenticationSetState value)? set,
    TResult Function(AuthenticationErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthenticationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$PendingImplCopyWith<$Res> {
  factory _$$PendingImplCopyWith(
          _$PendingImpl value, $Res Function(_$PendingImpl) then) =
      __$$PendingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PendingImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$PendingImpl>
    implements _$$PendingImplCopyWith<$Res> {
  __$$PendingImplCopyWithImpl(
      _$PendingImpl _value, $Res Function(_$PendingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PendingImpl implements _Pending {
  const _$PendingImpl();

  @override
  String toString() {
    return 'AuthenticationState.pending()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PendingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() pending,
    required TResult Function(User user) set,
    required TResult Function(String message) error,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? pending,
    TResult? Function(User user)? set,
    TResult? Function(String message)? error,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pending,
    TResult Function(User user)? set,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Pending value) pending,
    required TResult Function(AuthenticationSetState value) set,
    required TResult Function(AuthenticationErrorState value) error,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Pending value)? pending,
    TResult? Function(AuthenticationSetState value)? set,
    TResult? Function(AuthenticationErrorState value)? error,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Pending value)? pending,
    TResult Function(AuthenticationSetState value)? set,
    TResult Function(AuthenticationErrorState value)? error,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _Pending implements AuthenticationState {
  const factory _Pending() = _$PendingImpl;
}

/// @nodoc
abstract class _$$AuthenticationSetStateImplCopyWith<$Res> {
  factory _$$AuthenticationSetStateImplCopyWith(
          _$AuthenticationSetStateImpl value,
          $Res Function(_$AuthenticationSetStateImpl) then) =
      __$$AuthenticationSetStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$AuthenticationSetStateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$AuthenticationSetStateImpl>
    implements _$$AuthenticationSetStateImplCopyWith<$Res> {
  __$$AuthenticationSetStateImplCopyWithImpl(
      _$AuthenticationSetStateImpl _value,
      $Res Function(_$AuthenticationSetStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthenticationSetStateImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$AuthenticationSetStateImpl implements AuthenticationSetState {
  const _$AuthenticationSetStateImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthenticationState.set(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationSetStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationSetStateImplCopyWith<_$AuthenticationSetStateImpl>
      get copyWith => __$$AuthenticationSetStateImplCopyWithImpl<
          _$AuthenticationSetStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() pending,
    required TResult Function(User user) set,
    required TResult Function(String message) error,
  }) {
    return set(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? pending,
    TResult? Function(User user)? set,
    TResult? Function(String message)? error,
  }) {
    return set?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pending,
    TResult Function(User user)? set,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Pending value) pending,
    required TResult Function(AuthenticationSetState value) set,
    required TResult Function(AuthenticationErrorState value) error,
  }) {
    return set(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Pending value)? pending,
    TResult? Function(AuthenticationSetState value)? set,
    TResult? Function(AuthenticationErrorState value)? error,
  }) {
    return set?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Pending value)? pending,
    TResult Function(AuthenticationSetState value)? set,
    TResult Function(AuthenticationErrorState value)? error,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(this);
    }
    return orElse();
  }
}

abstract class AuthenticationSetState implements AuthenticationState {
  const factory AuthenticationSetState(final User user) =
      _$AuthenticationSetStateImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$AuthenticationSetStateImplCopyWith<_$AuthenticationSetStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationErrorStateImplCopyWith<$Res> {
  factory _$$AuthenticationErrorStateImplCopyWith(
          _$AuthenticationErrorStateImpl value,
          $Res Function(_$AuthenticationErrorStateImpl) then) =
      __$$AuthenticationErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AuthenticationErrorStateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$AuthenticationErrorStateImpl>
    implements _$$AuthenticationErrorStateImplCopyWith<$Res> {
  __$$AuthenticationErrorStateImplCopyWithImpl(
      _$AuthenticationErrorStateImpl _value,
      $Res Function(_$AuthenticationErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AuthenticationErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthenticationErrorStateImpl implements AuthenticationErrorState {
  const _$AuthenticationErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthenticationState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationErrorStateImplCopyWith<_$AuthenticationErrorStateImpl>
      get copyWith => __$$AuthenticationErrorStateImplCopyWithImpl<
          _$AuthenticationErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() pending,
    required TResult Function(User user) set,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? pending,
    TResult? Function(User user)? set,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pending,
    TResult Function(User user)? set,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Pending value) pending,
    required TResult Function(AuthenticationSetState value) set,
    required TResult Function(AuthenticationErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Pending value)? pending,
    TResult? Function(AuthenticationSetState value)? set,
    TResult? Function(AuthenticationErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Pending value)? pending,
    TResult Function(AuthenticationSetState value)? set,
    TResult Function(AuthenticationErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthenticationErrorState implements AuthenticationState {
  const factory AuthenticationErrorState(final String message) =
      _$AuthenticationErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$AuthenticationErrorStateImplCopyWith<_$AuthenticationErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
