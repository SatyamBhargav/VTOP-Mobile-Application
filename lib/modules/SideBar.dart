import 'package:flutter/material.dart';
import 'package:ham/ExamMainScreen.dart';
import 'package:ham/HostelMainScreen.dart';
import 'package:ham/Pages/TimeTable.dart';
import 'package:ham/Pages/Course.dart';
import 'package:ham/exam.dart';
import 'package:ham/faculty.dart';
import 'package:ham/modules/MainPage.dart';

class Statebar extends StatefulWidget {
  const Statebar({super.key});

  @override
  State<Statebar> createState() => _StatebarState();
}

void buttonicon() {}

class _StatebarState extends State<Statebar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1e212f),
      body: Container(
        width: 288,
        height: double.infinity,
        //color: Color(0xff1e212f),
        padding: EdgeInsets.only(top: 100),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(padding: EdgeInsets.only(left: 30)),
                Text(
                  'BROWSE',
                  style: TextStyle(
                    color: Color(0xff8e8f9d),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.right,
                ),
                SizedBox(height: 10),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Divider(
                height: 5,
                color: Color(0xff353847),
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 20)),
                    InkWell(
                      splashColor: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MainPage()),
                        );
                      },
                      child: SizedBox(
                        height: 50,
                        width: 250,
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 5)),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                ),
                                Ink.image(
                                  image: AssetImage('assets/home.png'),
                                  height: 34,
                                  width: 34,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'Home',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // Padding(
                //   padding: EdgeInsets.only(left: 10, bottom: 15),
                //   child: Divider(
                //     height: 5,
                //     color: Color(0xff353847),
                //   ),
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     Padding(padding: EdgeInsets.only(left: 20)),
                //     InkWell(
                //       splashColor: Colors.blue,
                //       borderRadius: BorderRadius.circular(15),
                //       onTap: () {
                //         print('Button press');
                //       },
                //       child: SizedBox(
                //         height: 50,
                //         width: 250,
                //         child: Column(
                //           children: [
                //             Padding(padding: EdgeInsets.only(top: 5)),
                //             Row(
                //               children: [
                //                 Padding(
                //                   padding: EdgeInsets.only(left: 10),
                //                 ),
                //                 Ink.image(
                //                   image: AssetImage('assets/profile.png'),
                //                   height: 34,
                //                   width: 34,
                //                   fit: BoxFit.cover,
                //                 ),
                //                 SizedBox(
                //                   width: 10,
                //                 ),
                //                 const Text(
                //                   'Profile',
                //                   style: TextStyle(
                //                     color: Colors.white,
                //                     fontWeight: FontWeight.bold,
                //                     fontSize: 20,
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           ],
                //         ),
                //       ),
                //     ),
                //   ],
                // ),

                Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 15),
                  child: Divider(
                    height: 5,
                    color: Color(0xff353847),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 20)),
                    InkWell(
                      splashColor: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TimeTable()),
                        );
                      },
                      child: SizedBox(
                        height: 50,
                        width: 250,
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 5)),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                ),
                                Ink.image(
                                  image: AssetImage('assets/cal.png'),
                                  height: 34,
                                  width: 34,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'Time Table',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 15),
                  child: Divider(
                    height: 5,
                    color: Color(0xff353847),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 20)),
                    InkWell(
                      splashColor: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Course()),
                        );
                      },
                      child: SizedBox(
                        height: 50,
                        width: 250,
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 5)),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                ),
                                Ink.image(
                                  image: AssetImage('assets/acadamic.png'),
                                  height: 34,
                                  width: 34,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'Course',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 15),
                  child: Divider(
                    height: 5,
                    color: Color(0xff353847),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 20)),
                    InkWell(
                      splashColor: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Exam()),
                        );
                      },
                      child: SizedBox(
                        height: 50,
                        width: 250,
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 5)),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                ),
                                Ink.image(
                                  image: AssetImage('assets/exam.png'),
                                  height: 34,
                                  width: 34,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'Exam',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 15),
                  child: Divider(
                    height: 5,
                    color: Color(0xff353847),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 20)),
                    InkWell(
                      splashColor: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ExamScreen()),
                        );
                      },
                      child: SizedBox(
                        height: 50,
                        width: 250,
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 5)),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                ),
                                Ink.image(
                                  image: AssetImage('assets/vtop.png'),
                                  height: 34,
                                  width: 34,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'Marks',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 15),
                  child: Divider(
                    height: 5,
                    color: Color(0xff353847),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 20)),
                    InkWell(
                      splashColor: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HostelScreen()),
                        );
                      },
                      child: SizedBox(
                        height: 50,
                        width: 250,
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 5)),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                ),
                                Ink.image(
                                  image: AssetImage('assets/hostle.png'),
                                  height: 34,
                                  width: 34,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'Hostel',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 15),
                  child: Divider(
                    height: 5,
                    color: Color(0xff353847),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 20)),
                    InkWell(
                      splashColor: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Faculty()),
                        );
                      },
                      child: SizedBox(
                        height: 50,
                        width: 250,
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 5)),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                ),
                                Ink.image(
                                  image: AssetImage('assets/proctor.png'),
                                  height: 34,
                                  width: 34,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'Proctor',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // Padding(
                //   padding: EdgeInsets.only(left: 10, bottom: 15),
                //   child: Divider(
                //     height: 5,
                //     color: Color(0xff353847),
                //   ),
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     Padding(padding: EdgeInsets.only(left: 20)),
                //     InkWell(
                //       splashColor: Colors.blue,
                //       borderRadius: BorderRadius.circular(15),
                //       onTap: () {
                //         print('Button press');
                //       },
                //       child: SizedBox(
                //         height: 50,
                //         width: 250,
                //         child: Column(
                //           children: [
                //             Padding(padding: EdgeInsets.only(top: 5)),
                //             Row(
                //               children: [
                //                 Padding(
                //                   padding: EdgeInsets.only(left: 10),
                //                 ),
                //                 Ink.image(
                //                   image: AssetImage('assets/account.png'),
                //                   height: 34,
                //                   width: 34,
                //                   fit: BoxFit.cover,
                //                 ),
                //                 SizedBox(
                //                   width: 10,
                //                 ),
                //                 const Text(
                //                   'My Account',
                //                   style: TextStyle(
                //                     color: Colors.white,
                //                     fontWeight: FontWeight.bold,
                //                     fontSize: 20,
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           ],
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
