import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '/pages/noop_page.dart';

final _navigatorKey = GlobalKey<NavigatorState>();

final aboutBranch = StatefulShellBranch(
  navigatorKey: _navigatorKey,
  routes: [
    GoRoute(
      path: '/about',
      pageBuilder: (context, state) => const NoTransitionPage(
        child: NoopPage(text: "about_branch"),
      ),
    ),
  ],
);
