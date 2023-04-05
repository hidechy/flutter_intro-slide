// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_local_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppLocalState {
  List<ContentConfig> get slideList => throw _privateConstructorUsedError;
  bool get showSlide => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppLocalStateCopyWith<AppLocalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLocalStateCopyWith<$Res> {
  factory $AppLocalStateCopyWith(
          AppLocalState value, $Res Function(AppLocalState) then) =
      _$AppLocalStateCopyWithImpl<$Res, AppLocalState>;
  @useResult
  $Res call({List<ContentConfig> slideList, bool showSlide});
}

/// @nodoc
class _$AppLocalStateCopyWithImpl<$Res, $Val extends AppLocalState>
    implements $AppLocalStateCopyWith<$Res> {
  _$AppLocalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slideList = null,
    Object? showSlide = null,
  }) {
    return _then(_value.copyWith(
      slideList: null == slideList
          ? _value.slideList
          : slideList // ignore: cast_nullable_to_non_nullable
              as List<ContentConfig>,
      showSlide: null == showSlide
          ? _value.showSlide
          : showSlide // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppLocalStateCopyWith<$Res>
    implements $AppLocalStateCopyWith<$Res> {
  factory _$$_AppLocalStateCopyWith(
          _$_AppLocalState value, $Res Function(_$_AppLocalState) then) =
      __$$_AppLocalStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ContentConfig> slideList, bool showSlide});
}

/// @nodoc
class __$$_AppLocalStateCopyWithImpl<$Res>
    extends _$AppLocalStateCopyWithImpl<$Res, _$_AppLocalState>
    implements _$$_AppLocalStateCopyWith<$Res> {
  __$$_AppLocalStateCopyWithImpl(
      _$_AppLocalState _value, $Res Function(_$_AppLocalState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slideList = null,
    Object? showSlide = null,
  }) {
    return _then(_$_AppLocalState(
      slideList: null == slideList
          ? _value._slideList
          : slideList // ignore: cast_nullable_to_non_nullable
              as List<ContentConfig>,
      showSlide: null == showSlide
          ? _value.showSlide
          : showSlide // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AppLocalState implements _AppLocalState {
  const _$_AppLocalState(
      {final List<ContentConfig> slideList = const [], this.showSlide = true})
      : _slideList = slideList;

  final List<ContentConfig> _slideList;
  @override
  @JsonKey()
  List<ContentConfig> get slideList {
    if (_slideList is EqualUnmodifiableListView) return _slideList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_slideList);
  }

  @override
  @JsonKey()
  final bool showSlide;

  @override
  String toString() {
    return 'AppLocalState(slideList: $slideList, showSlide: $showSlide)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppLocalState &&
            const DeepCollectionEquality()
                .equals(other._slideList, _slideList) &&
            (identical(other.showSlide, showSlide) ||
                other.showSlide == showSlide));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_slideList), showSlide);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppLocalStateCopyWith<_$_AppLocalState> get copyWith =>
      __$$_AppLocalStateCopyWithImpl<_$_AppLocalState>(this, _$identity);
}

abstract class _AppLocalState implements AppLocalState {
  const factory _AppLocalState(
      {final List<ContentConfig> slideList,
      final bool showSlide}) = _$_AppLocalState;

  @override
  List<ContentConfig> get slideList;
  @override
  bool get showSlide;
  @override
  @JsonKey(ignore: true)
  _$$_AppLocalStateCopyWith<_$_AppLocalState> get copyWith =>
      throw _privateConstructorUsedError;
}
