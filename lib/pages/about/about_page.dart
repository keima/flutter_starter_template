import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/pages/home/home_page.dart';
import '/pages/maps/maps_page.dart';
import '/routes/routes.dart';

class AboutPageRoute extends GoRouteData {
  const AboutPageRoute();
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(
      child: AboutPage(),
    );
  }
}

class AboutPage extends HookConsumerWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("About"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('About'),
            ElevatedButton(
              child: const Text("back"),
              onPressed: () {
                context.pop();
              },
            ),
            ElevatedButton(
              child: const Text("go to /home"),
              onPressed: () {
                const HomePageRoute().go(context);
              },
            ),
            ElevatedButton(
              child: const Text("go to /maps"),
              onPressed: () {
                const MapsPageRoute().go(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
