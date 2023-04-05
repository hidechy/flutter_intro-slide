// ignore_for_file: cascade_invocations

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_local_state.dart';

////////////////////////////////////////////////

final appLocalProvider =
    StateNotifierProvider.autoDispose<AppLocalNotifier, AppLocalState>((ref) {
  return AppLocalNotifier(const AppLocalState())..init();
});

///
class AppLocalNotifier extends StateNotifier<AppLocalState> {
  AppLocalNotifier(super.state);

  ///
  Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();

    final list = <ContentConfig>[];

    list.add(
      const ContentConfig(
        //                  pathImage: "images/HTML_Monochromatic.png",
        backgroundColor: Colors.white,

        title: 'HTML',
        styleTitle: TextStyle(color: Colors.cyan, fontSize: 30),
        description:
            'HTML/HTML/HTML/HTML/HTML/HTML/HTML/HTML/HTML/HTML/HTML/HTML/HTML/HTML/HTML/HTML/HTML/',
        styleDescription: TextStyle(color: Colors.cyan, fontSize: 20),
      ),
    );

    list.add(
      const ContentConfig(
        backgroundColor: Colors.white,
        title: 'CSS',
        styleTitle: TextStyle(color: Colors.cyan, fontSize: 30),
        description:
            'CSS/CSS/CSS/CSS/CSS/CSS/CSS/CSS/CSS/CSS/CSS/CSS/CSS/CSS/CSS/CSS/CSS/CSS/CSS/CSS/CSS/',
        styleDescription: TextStyle(color: Colors.cyan, fontSize: 20),
      ),
    );

    list.add(
      const ContentConfig(
        backgroundColor: Colors.white,
        title: 'JavaScript',
        styleTitle: TextStyle(color: Colors.cyan, fontSize: 30),
        description:
            'JavaScript/JavaScript/JavaScript/JavaScript/JavaScript/JavaScript/JavaScript/JavaScript/',
        styleDescription: TextStyle(color: Colors.cyan, fontSize: 20),
      ),
    );

    state = state.copyWith(
      slideList: list,
      showSlide: prefs.getBool('showSlide') ?? true,
    );
  }

  ///
  Future<void> setShowSlideFalse() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setBool('showSlide', false);

    state = state.copyWith(showSlide: false);
  }

  ///
  Future<void> setShowSlideTrue() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setBool('showSlide', true);

    state = state.copyWith(showSlide: true);
  }
}

////////////////////////////////////////////////
