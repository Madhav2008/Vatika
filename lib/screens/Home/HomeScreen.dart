import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vatika/screens/Login/LoginScreen.dart';
import 'package:vatika/screens/Quiz/screens/main_menu.dart';
import 'package:vatika/screens/Quiz/screens/quizz_screen.dart';
import 'package:vatika/screens/Time_Table/Time_Table.dart';
import 'package:vatika/styles/app_color.dart';
import 'package:vatika/styles/app_text_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColor.primary,
                AppColor.primary1,
              ]),
        ),
        child: Column(
          children: [
            SafeArea(
              child: Column(children: [
                Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 30.0, left: 15.0),
                            child: Text(
                              "Hi Madhav",
                              style: AppTextStyle.style(
                                  fontSize: size.width * 0.065,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, left: 15.0),
                            child: Text(
                              "Class VIII-C | Roll no: 19",
                              style: AppTextStyle.style(
                                  fontSize: size.width * 0.040,
                                  color: Colors.white.withOpacity(0.7),
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 12.0, bottom: 30.0),
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 4, bottom: 4, left: 8, right: 8),
                              child: Text('2021-2022'),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100.0),
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Icon(
                            Icons.account_circle,
                            size: size.width / 4,
                            color: Colors.white,
                          )),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, bottom: 20.0),
                  child: Row(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Column(children: [
                            Container(
                              width: width / 2.5,
                              padding: const EdgeInsets.only(
                                  top: 8, bottom: 8, left: 40, right: 40),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.school,
                                    size: size.width * 0.110,
                                    color: Colors.orangeAccent,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      'Attendence',
                                      style: TextStyle(
                                        fontSize: size.width * 0.032,
                                        // fontWeight: FontWeight.bold,
                                        // letterSpacing: 2,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Text(
                                      '99.5%',
                                      style: TextStyle(
                                        fontSize: size.width * 0.060,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ])),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Column(children: [
                              Container(
                                width: width / 2.5,
                                padding: const EdgeInsets.only(
                                    top: 8, bottom: 8, left: 45, right: 45),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.monetization_on_sharp,
                                      size: size.width * 0.110,
                                      color: Colors.purpleAccent,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Text(
                                        'Fees Due',
                                        style: TextStyle(
                                          fontSize: size.width * 0.032,
                                          // fontWeight: FontWeight.bold,
                                          // letterSpacing: 2,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text(
                                        '???5000',
                                        style: TextStyle(
                                          fontSize: size.width * 0.060,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ])),
                      ),
                    ],
                  ),
                )
              ]),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  width: width,
                  height: height / 1.8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(38),
                      topLeft: Radius.circular(38),
                    ),
                  ),
                  child: Column(
                    children: [
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          LoginScreen(),
                                    ),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 23.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            AppColor.primary,
                                            AppColor.primary1
                                          ]),
                                      // color: AppColor.primaryLight,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    // width: double.maxFinite,
                                    width: width / 3.7,
                                    // height: height / 5.5,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10.0, top: 15.0),
                                            child: Icon(
                                              Icons.today,
                                              size: 50,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              bottom: 15.0,
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Holidays',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: size.width * 0.045,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          MainMenu(),
                                    ),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 23.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            AppColor.primary,
                                            AppColor.primary1
                                          ]),
                                      // color: AppColor.primaryLight,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    // width: double.maxFinite,
                                    width: width / 3.7,
                                    // height: height / 5.5,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10.0, top: 15.0),
                                            child: Icon(
                                              Icons.timer,
                                              size: 50,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 15.0),
                                              child: Text(
                                                'Take Quiz',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: size.width * 0.045,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          LoginScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          AppColor.primary,
                                          AppColor.primary1
                                        ]),
                                    // color: AppColor.primaryLight,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  // width: double.maxFinite,
                                  width: width / 3.7,
                                  // height: height / 5.5,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 10.0, top: 15.0),
                                          child: Icon(
                                            Icons.assignment_outlined,
                                            size: 50,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              bottom: 15.0,
                                            ),
                                            child: Text(
                                              'Assignments',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: size.width * 0.040,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          LoginScreen(),
                                    ),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 23.0, top: 15, bottom: 15),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            AppColor.primary,
                                            AppColor.primary1
                                          ]),
                                      // color: AppColor.primaryLight,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    // width: double.maxFinite,
                                    width: width / 3.7,
                                    // height: height / 5.5,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10.0, top: 15.0),
                                            child: Icon(
                                              Icons.fact_check_sharp,
                                              size: 50,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 15.0),
                                              child: Text(
                                                'Result',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: size.width * 0.045,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // child: Align(
                                    //   alignment: Alignment.center,
                                    //   child: Column(
                                    //     children: [
                                    //       Padding(
                                    //         padding: const EdgeInsets.only(bottom: 10.0, top: 15.0),
                                    //         child: Icon(
                                    //           Icons.today,
                                    //           size: 50,
                                    //           color: Colors.white,
                                    //         ),
                                    //       ),
                                    //       Center(
                                    //         child: Text(
                                    //           'Holidays',
                                    //           style: TextStyle(
                                    //             fontWeight: FontWeight.bold,
                                    //             fontSize: 20,
                                    //             color: Colors.white,
                                    //           ),
                                    //         ),
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          LoginScreen(),
                                    ),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 23.0, top: 15, bottom: 15),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            AppColor.primary,
                                            AppColor.primary1
                                          ]),
                                      // color: AppColor.primaryLight,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    // width: double.maxFinite,
                                    width: width / 3.7,
                                    // height: height / 5.5,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10.0, top: 15.0),
                                            child: Icon(
                                              Icons.chrome_reader_mode_outlined,
                                              size: 50,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 15.0),
                                              child: Text(
                                                'DateSheet',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: size.width * 0.045,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // child: Align(
                                    //   alignment: Alignment.center,
                                    //   child: Column(
                                    //     children: [
                                    //       Padding(
                                    //         padding: const EdgeInsets.only(bottom: 10.0, top: 15.0),
                                    //         child: Icon(
                                    //           Icons.today,
                                    //           size: 50,
                                    //           color: Colors.white,
                                    //         ),
                                    //       ),
                                    //       Center(
                                    //         child: Text(
                                    //           'Holidays',
                                    //           style: TextStyle(
                                    //             fontWeight: FontWeight.bold,
                                    //             fontSize: 20,
                                    //             color: Colors.white,
                                    //           ),
                                    //         ),
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          TimeTable(),
                                    ),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, bottom: 15),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            AppColor.primary,
                                            AppColor.primary1
                                          ]),
                                      // color: AppColor.primaryLight,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    // width: double.maxFinite,
                                    width: width / 3.7,
                                    // height: height / 5.5,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10.0, top: 15.0),
                                            child: Icon(
                                              Icons.date_range_sharp,
                                              size: 50,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                bottom: 15.0,
                                              ),
                                              child: Text(
                                                'Time Table',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: size.width * 0.045,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // child: Align(
                                    //   alignment: Alignment.center,
                                    //   child: Column(
                                    //     children: [
                                    //       Padding(
                                    //         padding: const EdgeInsets.only(bottom: 10.0, top: 15.0),
                                    //         child: Icon(
                                    //           Icons.today,
                                    //           size: 50,
                                    //           color: Colors.white,
                                    //         ),
                                    //       ),
                                    //       Center(
                                    //         child: Text(
                                    //           'Holidays',
                                    //           style: TextStyle(
                                    //             fontWeight: FontWeight.bold,
                                    //             fontSize: 20,
                                    //             color: Colors.white,
                                    //           ),
                                    //         ),
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),
                                  ),
                                ),
                              ),
                              // Container(
                              //   width: double.maxFinite,
                              //   // height:
                              //   decoration: BoxDecoration(
                              //     shape: BoxShape.rectangle,
                              //     color: AppColor.primaryLight,
                              //     borderRadius: BorderRadius.circular(10),
                              //   ),
                              //   child: Text('hi'),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
