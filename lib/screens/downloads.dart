// ignore_for_file: sort_child_properties_last, prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables
import 'dart:ui';

import 'package:flutter/material.dart';
import '../main.dart';
import 'navigation_bar.dart';

class DownloadsScreen extends StatefulWidget {
  DownloadsScreen({super.key});

  @override
  State<DownloadsScreen> createState() => _DownloadsScreenState();
}

class _DownloadsScreenState extends State<DownloadsScreen> {
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
                        // Row(
                        //   children: [
                        //     Container(
                        //       height: 50,
                        //       width: 320,
                        //       child: Center(child:
                        //         Text('greeting')
                        //       ),
                        //       decoration: BoxDecoration(
                        //          color: Colors.white,
                        //           borderRadius: BorderRadius.circular(10),
                        //          ),
                        //     ),
                        //   ],
                        // ),
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 320,
                              child: Center(child: Text('downloads')),
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
              "${assetsPath}main.png",
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
