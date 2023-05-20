import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'bottom_nav/bottom_nav_screen.dart';
import 'screens/auth_screen/auth_screen.dart';
import 'screens/onboard_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routerConfig: _router,
    );
  }

  final GoRouter _router = GoRouter(routes: [
    GoRoute(
        path: "/",
        builder: (context, state) => const OnboardScreen(),
        routes: [
          GoRoute(
              path: "bottomnav",
              builder: (context, state) => const BottomNavScreen()),
              GoRoute(path: "profile", builder: (context, state) =>const ProfileScreen(),),
              GoRoute(path: "authscreen", builder: (context, state) =>const AuthScreen()),
              GoRoute(path: "signupscreen", builder: (context, state) =>const AuthScreen()),
              GoRoute(path: "loginscreen", builder: (context, state) =>const AuthScreen()),
        ]),
  ]);
}
