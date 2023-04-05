// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intro_slider/intro_slider.dart';

import '../state/app_local/app_local_notifier.dart';

class IntroScreen extends ConsumerWidget {
  IntroScreen({super.key});

  late WidgetRef _ref;

  ///
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _ref = ref;

    final slideList = ref.watch(
      appLocalProvider.select((value) => value.slideList),
    );

    return (slideList.isEmpty)
        ? Container()
        : IntroSlider(
            listContentConfig: slideList,
            renderDoneBtn: renderDoneBtn(),
          );
  }

  ///
  Widget renderDoneBtn() {
    return TextButton(
      onPressed: () =>
          _ref.watch(appLocalProvider.notifier).setShowSlideFalse(),
      child: const Text('FINISH'),
    );
  }
}
