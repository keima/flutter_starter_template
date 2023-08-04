import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '/pages/home/home_page.dart';

const homeTypedStatefulShellBranch = TypedStatefulShellBranch(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<HomePageRouteData>(path: "/home"),
  ],
);

class HomePageRouteData extends GoRouteData {
  const HomePageRouteData();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(
      child: HomePage(),
    );
  }
}
