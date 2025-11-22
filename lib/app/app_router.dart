import 'package:fitness_app/shared/widgets/nav/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum AppRoute { home, sessions, profile }

GoRouter buildRouter() {
  return GoRouter(
    initialLocation: '/home',
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, shell) => BottomNavScaffold(shell: shell),
        branches: [
          // ← Adicione os colchetes aqui!
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/home',
                name: AppRoute.home.name,
                pageBuilder: (c, s) => const NoTransitionPage(
                  child: Scaffold(body: Center(child: Text('home'))),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/sessions',
                name: AppRoute.sessions.name,
                pageBuilder: (c, s) => const NoTransitionPage(
                  child: Scaffold(body: Center(child: Text('sessions'))),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile',
                name: AppRoute.profile.name,
                pageBuilder: (c, s) => const NoTransitionPage(
                  child: Scaffold(body: Center(child: Text('profile'))),
                ),
              ),
            ],
          ),
        ], // ← E feche os colchetes aqui!
      ),
    ],
  );
}
