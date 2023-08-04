import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '/pages/noop_page.dart';

const aboutTypedStatefulShellBranch = TypedStatefulShellBranch(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<AboutPageRouteData>(path: "/about"),
  ],
);

class AboutPageRouteData extends GoRouteData {
  const AboutPageRouteData();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(
      child: NoopPage(text: "about_branch"),
    );
  }
}
