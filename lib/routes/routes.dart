import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '/components/tab_navigation.dart';
import '/pages/maps/maps_page.dart';
import '/pages/home/home_page.dart';
import '/pages/about/about_page.dart';

part 'routes.g.dart';
part 'home_branch.dart';
part 'map_branch.dart';
part 'about_branch.dart';

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
