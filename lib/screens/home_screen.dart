import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/app_local/app_local_notifier.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          const Text('HomeScreen'),
          IconButton(
            onPressed: () {
              ref.watch(appLocalProvider.notifier).setShowSlideTrue();
            },
            icon: const Icon(
              Icons.refresh,
              color: Colors.redAccent,
            ),
          ),
        ],
      ),
    );
  }
}
