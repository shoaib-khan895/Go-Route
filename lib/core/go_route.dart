import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:h2_2023_objectives/screens/business_screen.dart';
import 'package:h2_2023_objectives/screens/home_screen.dart';
import 'package:h2_2023_objectives/screens/school_screen.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: '/BusinessScreen',
      builder: (BuildContext context, GoRouterState state) {
        return BusinessScreen(name: state.extra.toString());
      },
    ),
    GoRoute(
      path: '/SchoolScreen',
      builder: (BuildContext context, GoRouterState state) {
        return SchoolScreen(name: state.extra.toString());
      },
    ),
  ],
);
