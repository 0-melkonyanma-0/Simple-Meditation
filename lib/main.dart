import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_meditation/screens/AudioPlayer/audio_player.dart';

import 'package:simple_meditation/screens/Meditate/meditate.dart';
import 'package:simple_meditation/screens/Timer/timer.dart';

import 'screens/Home/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }

  final GoRouter _router = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
          path: "/",
          name: 'home',
          pageBuilder: ((context, state) => MaterialPage(child: HomeScreen()))),
      GoRoute(
          path: "/timer",
          name: 'timer',
          pageBuilder: ((context, state) =>
              MaterialPage(child: TimerScreen()))),
      GoRoute(
          path: "/meditate",
          name: 'meditate',
          pageBuilder: ((context, state) =>
              MaterialPage(child: MeditateScreen()))),
      GoRoute(
          path: "/audio_player",
          name: 'audio_player',
          pageBuilder: ((context, state) =>
              MaterialPage(child: AudioPlayerScreen()))),
    ],
  );
}
