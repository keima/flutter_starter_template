import 'package:flutter/material.dart';
import '/pages/home/home_page.dart';
import 'package:go_router/go_router.dart';

import '/pages/noop_page.dart';

final _navigatorKey = GlobalKey<NavigatorState>();

final homeBranch = StatefulShellBranch(
  navigatorKey: _navigatorKey,
  routes: [
    GoRoute(
      path: '/home',
      pageBuilder: (context, state) => const NoTransitionPage(
        child: HomePage(),
      ),
    ),
  ],
);
