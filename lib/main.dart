import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_meditation/screens/audio_player.dart';

import 'package:simple_meditation/screens/downloads.dart';
import 'package:simple_meditation/screens/meditate.dart';
import 'package:simple_meditation/screens/timer.dart';

import './screens/home.dart';

String assetsPath = "assets/images/";

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
          path: "/downloads",
          name: 'downloads',
          pageBuilder: ((context, state) =>
              MaterialPage(child: DownloadsScreen()))),
      GoRoute(
          path: "/audio_player",
          name: 'audio_player',
          pageBuilder: ((context, state) =>
              MaterialPage(child: AudioPlayerScreen()))),
    ],
  );
}
