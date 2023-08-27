// ignore_for_file: sort_child_properties_last, prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_meditation/config/screen.dart';

import '../Navigation/navigation_bar.dart';

class TimerScreen extends StatefulWidget {
  TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2.5),
            child: RefreshIndicator(
              triggerMode: RefreshIndicatorTriggerMode.onEdge,
              color: Colors.black,
              onRefresh: _refresh,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView(children: [
                  Center(
                    child: SafeArea(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minWidth: MediaQuery.of(context).size.width * minWidth,
                          maxWidth: MediaQuery.of(context).size.width * maxWidth,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              Container(
                                height: 30,
                                child: Center(child: Text("Таймер")),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 110,
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text('Выбрать продолжительность медитации')
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: <Widget>[
                                            SizedBox(
                                              width: buttonWidth,
                                              child:  ElevatedButton(
                                                onPressed: () {},
                                                child: const Text('3 min'),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            SizedBox(
                                              width:buttonWidth,
                                              child:  ElevatedButton(
                                                onPressed: () {},
                                                child: const Text('5 min'),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            SizedBox(
                                              width:buttonWidth,
                                              child:  ElevatedButton(
                                                onPressed: () {},
                                                child: const Text('8 min'),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            SizedBox(
                                              width:buttonWidth,
                                              child:  ElevatedButton(
                                                onPressed: () {},
                                                child: const Text('12 min'),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            SizedBox(
                                              width:buttonWidth,
                                              child:  ElevatedButton(
                                                onPressed: () {},
                                                child: const Text('15 min'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              // Container(
                              //   height: 110,
                              //   child: Padding(
                              //     padding: const EdgeInsets.all(16.0),
                              //     child: Column(
                              //       children: [
                              //         Row(
                              //           children: [
                              //             Text('Скачать')
                              //           ],
                              //         ),
                              //         SizedBox(
                              //           height: 10,
                              //         ),
                              //         Row(
                              //           children: [
                              //             Text('СКОЛЬКО МИНУТ'),
                              //             SizedBox(
                              //               width: 50,
                              //             ),
                              //             SizedBox(
                              //               child:  ElevatedButton(
                              //                 onPressed: () {},
                              //                 child: Icon(Icons.download_for_offline),
                              //               ),
                              //             ),
                              //           ],
                              //         )
                              //       ],
                              //     ),
                              //   ),
                              //   decoration: BoxDecoration(
                              //     color: Colors.white,
                              //     borderRadius: BorderRadius.circular(5),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [
                  0.5,
                  0.9,
                ],
                colors: [
                  Color.fromRGBO(254, 252, 203, 1.0),
                  Color.fromRGBO(240, 240, 240, 0.5),
                ],
              )),
        ),
        resizeToAvoidBottomInset: false,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          height: 50,
          width: MediaQuery.of(context).size.width-50,
          margin: const EdgeInsets.all(10),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                 context.pushNamed('audio_player');
              });
            },
            child: const Center(
              child: Text('Медитировать'),
            ),
          ),
        ),
        bottomNavigationBar: NavBar());
  }

  Future<void> _refresh() {
    return Future.delayed(
      Duration(seconds: 1),
    );
  }
}
