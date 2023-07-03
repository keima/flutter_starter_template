import 'package:flutter/material.dart';
import 'package:flutter_starter_template/i18n/translations.g.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ScaffoldWithNestedNavigation extends HookConsumerWidget {
  const ScaffoldWithNestedNavigation({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);

    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        destinations: [
          NavigationDestination(
            label: t.pages.main.bottomItemLabel.home,
            icon: const Icon(Icons.home),
          ),
          NavigationDestination(
            label: t.pages.main.bottomItemLabel.map,
            icon: const Icon(Icons.map),
          ),
          NavigationDestination(
            label: t.pages.main.bottomItemLabel.about,
            icon: const Icon(Icons.settings),
          ),
        ],
        onDestinationSelected: _goBranch,
      ),
    );
  }
}
