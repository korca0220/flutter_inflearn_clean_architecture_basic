// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_edit_note_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddEditNoteUiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() saveNote,
    required TResult Function(String message) showSnackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? saveNote,
    TResult? Function(String message)? showSnackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? saveNote,
    TResult Function(String message)? showSnackbar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveNote value) saveNote,
    required TResult Function(ShowSnackbar value) showSnackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveNote value)? saveNote,
    TResult? Function(ShowSnackbar value)? showSnackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveNote value)? saveNote,
    TResult Function(ShowSnackbar value)? showSnackbar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEditNoteUiEventCopyWith<$Res> {
  factory $AddEditNoteUiEventCopyWith(
          AddEditNoteUiEvent value, $Res Function(AddEditNoteUiEvent) then) =
      _$AddEditNoteUiEventCopyWithImpl<$Res, AddEditNoteUiEvent>;
}

/// @nodoc
class _$AddEditNoteUiEventCopyWithImpl<$Res, $Val extends AddEditNoteUiEvent>
    implements $AddEditNoteUiEventCopyWith<$Res> {
  _$AddEditNoteUiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SaveNoteCopyWith<$Res> {
  factory _$$SaveNoteCopyWith(
          _$SaveNote value, $Res Function(_$SaveNote) then) =
      __$$SaveNoteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveNoteCopyWithImpl<$Res>
    extends _$AddEditNoteUiEventCopyWithImpl<$Res, _$SaveNote>
    implements _$$SaveNoteCopyWith<$Res> {
  __$$SaveNoteCopyWithImpl(_$SaveNote _value, $Res Function(_$SaveNote) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SaveNote implements SaveNote {
  const _$SaveNote();

  @override
  String toString() {
    return 'AddEditNoteUiEvent.saveNote()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveNote);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() saveNote,
    required TResult Function(String message) showSnackbar,
  }) {
    return saveNote();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? saveNote,
    TResult? Function(String message)? showSnackbar,
  }) {
    return saveNote?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? saveNote,
    TResult Function(String message)? showSnackbar,
    required TResult orElse(),
  }) {
    if (saveNote != null) {
      return saveNote();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveNote value) saveNote,
    required TResult Function(ShowSnackbar value) showSnackbar,
  }) {
    return saveNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveNote value)? saveNote,
    TResult? Function(ShowSnackbar value)? showSnackbar,
  }) {
    return saveNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveNote value)? saveNote,
    TResult Function(ShowSnackbar value)? showSnackbar,
    required TResult orElse(),
  }) {
    if (saveNote != null) {
      return saveNote(this);
    }
    return orElse();
  }
}

abstract class SaveNote implements AddEditNoteUiEvent {
  const factory SaveNote() = _$SaveNote;
}

/// @nodoc
abstract class _$$ShowSnackbarCopyWith<$Res> {
  factory _$$ShowSnackbarCopyWith(
          _$ShowSnackbar value, $Res Function(_$ShowSnackbar) then) =
      __$$ShowSnackbarCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ShowSnackbarCopyWithImpl<$Res>
    extends _$AddEditNoteUiEventCopyWithImpl<$Res, _$ShowSnackbar>
    implements _$$ShowSnackbarCopyWith<$Res> {
  __$$ShowSnackbarCopyWithImpl(
      _$ShowSnackbar _value, $Res Function(_$ShowSnackbar) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ShowSnackbar(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowSnackbar implements ShowSnackbar {
  const _$ShowSnackbar(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AddEditNoteUiEvent.showSnackbar(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowSnackbar &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowSnackbarCopyWith<_$ShowSnackbar> get copyWith =>
      __$$ShowSnackbarCopyWithImpl<_$ShowSnackbar>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() saveNote,
    required TResult Function(String message) showSnackbar,
  }) {
    return showSnackbar(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? saveNote,
    TResult? Function(String message)? showSnackbar,
  }) {
    return showSnackbar?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? saveNote,
    TResult Function(String message)? showSnackbar,
    required TResult orElse(),
  }) {
    if (showSnackbar != null) {
      return showSnackbar(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveNote value) saveNote,
    required TResult Function(ShowSnackbar value) showSnackbar,
  }) {
    return showSnackbar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveNote value)? saveNote,
    TResult? Function(ShowSnackbar value)? showSnackbar,
  }) {
    return showSnackbar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveNote value)? saveNote,
    TResult Function(ShowSnackbar value)? showSnackbar,
    required TResult orElse(),
  }) {
    if (showSnackbar != null) {
      return showSnackbar(this);
    }
    return orElse();
  }
}

abstract class ShowSnackbar implements AddEditNoteUiEvent {
  const factory ShowSnackbar(final String message) = _$ShowSnackbar;

  String get message;
  @JsonKey(ignore: true)
  _$$ShowSnackbarCopyWith<_$ShowSnackbar> get copyWith =>
      throw _privateConstructorUsedError;
}
