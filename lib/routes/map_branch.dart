import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '/pages/noop_page.dart';

const mapTypedStatefulShellBranch = TypedStatefulShellBranch(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<MapsPageRouteData>(path: "/maps"),
  ],
);

class MapsPageRouteData extends GoRouteData {
  const MapsPageRouteData();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(
      child: NoopPage(text: "maps_branch"),
    );
  }
}
