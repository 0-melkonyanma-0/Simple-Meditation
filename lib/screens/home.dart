// ignore_for_file: sort_child_properties_last, prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2.5),
            child: RefreshIndicator(
              triggerMode: RefreshIndicatorTriggerMode.onEdge,
              color: Colors.black,
              onRefresh: _refresh,
              child: ListView(children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: SafeArea(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 320,
                              child: Center(child: Text('greeting')),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              "assets/images/main.png",
            ),
            fit: BoxFit.cover,
          )),
        ),
        bottomNavigationBar: NavBar());
  }

  Future<void> _refresh() {
    return Future.delayed(
      Duration(seconds: 1),
    );
  }
}

// String greeting() {
//   int hour = DateTime.now().hour;

//   if (hour >= 7 && hour <= 12) {
//     return 'Доброе утро';
//   }

//   if (hour > 12 && hour <= 16) {
//     return 'Добрый день';
//   }

//   return 'Добрый вечер';
// }

// Future<bool> checkConnect() async {
//   try {
//     await InternetAddress.lookup('ya.ru');
//     return true;
//   } on SocketException catch (_) {
//     return false;
//   }
// }