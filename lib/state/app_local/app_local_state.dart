import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intro_slider/intro_slider.dart';

part 'app_local_state.freezed.dart';

@freezed
class AppLocalState with _$AppLocalState {
  const factory AppLocalState({
    @Default([]) List<ContentConfig> slideList,
    @Default(true) bool showSlide,
  }) = _AppLocalState;
}
