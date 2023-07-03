import 'package:flutter/material.dart';
import 'package:flutter_starter_template/routes/home_branch.dart';
import 'package:go_router/go_router.dart';

import '/components/tab_navigation.dart';
import 'about_branch.dart';
import 'map_branch.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final goRouter = GoRouter(
  initialLocation: "/home",
  navigatorKey: _rootNavigatorKey,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => ScaffoldWithNestedNavigation(
        navigationShell: navigationShell,
      ),
      // NOTE: must sync tab_navigation.dart items
      branches: [
        homeBranch,
        mapBranch,
        aboutBranch,
      ],
    ),
  ],
);
