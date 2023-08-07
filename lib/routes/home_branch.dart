part of "routes.dart";

const homeTypedStatefulShellBranch = TypedStatefulShellBranch(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<HomePageRouteData>(
      path: "/home",
      name: "home",
    ),
  ],
);
