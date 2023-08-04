import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '/pages/noop_page.dart';

const mapTypedStatefulShellBranch = TypedStatefulShellBranch(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<MapPageRouteData>(path: "/maps"),
  ],
);

class MapPageRouteData extends GoRouteData {
  const MapPageRouteData();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(
      child: NoopPage(text: "map_branch"),
    );
  }
}

// final _navigatorKey = GlobalKey<NavigatorState>();

// final mapBranch = StatefulShellBranch(
//   navigatorKey: _navigatorKey,
//   routes: [
//     GoRoute(
//       path: '/maps',
//       pageBuilder: (context, state) => const NoTransitionPage(
//         child: NoopPage(text: "map_branch"),
//       ),
//     ),
//   ],
// );
