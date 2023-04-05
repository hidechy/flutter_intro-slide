import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'screens/home_screen.dart';
import 'screens/intro_screen.dart';
import 'state/app_local/app_local_notifier.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  ///
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showSlide =
        ref.watch(appLocalProvider.select((value) => value.showSlide));

    return MaterialApp(
      home: showSlide ? IntroScreen() : const HomeScreen(),
    );
  }
}
