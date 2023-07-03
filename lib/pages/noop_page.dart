import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NoopPage extends HookConsumerWidget {
  const NoopPage({super.key, this.text = ""});

  final String text;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Text(text),
      ),
    );
  }
}
