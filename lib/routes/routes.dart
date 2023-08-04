import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '/components/tab_navigation.dart';
import 'home_branch.dart';
import 'map_branch.dart';
import 'about_branch.dart';

part 'routes.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final goRouter = GoRouter(
  initialLocation: "/home",
  navigatorKey: _rootNavigatorKey,
  routes: $appRoutes,
);

@TypedStatefulShellRoute<MainShellRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    homeTypedStatefulShellBranch,
    mapTypedStatefulShellBranch,
    aboutTypedStatefulShellBranch,
  ],
)
class MainShellRouteData extends StatefulShellRouteData {
  const MainShellRouteData();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) =>
      ScaffoldWithNestedNavigation(navigationShell: navigationShell);
}
