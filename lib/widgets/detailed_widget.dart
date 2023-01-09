import 'package:clinic_mobile_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui' as ui;

class DetailedWidget extends StatefulWidget {
  const DetailedWidget({Key? key}) : super(key: key);

  @override
  State<DetailedWidget> createState() => _DetailedWidgetState();
}

class _DetailedWidgetState extends State<DetailedWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.mainBGColor,
        body: SingleChildScrollView(
          child: Column(children: [
            Center(
                child: Card(
              child: Container(
                width: 600,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    AppColors.blackColor,
                    AppColors.appBarColor,
                    AppColors.blackColor,
                    AppColors.appBarColor,
                    AppColors.blackColor,
                    AppColors.appBarColor,
                  ], begin: AlignmentDirectional.topStart),
                ),
                child: Column(children: [
                  CircleAvatar(
                    backgroundColor: AppColors.mainBGColor,
                    radius: 108,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/welcome.jpeg"),
                      radius: 100,
                    ), //CircleAvatar
                  ),
                ]),
              ),
            )),
            Card(
              child: Column(children: [
                Text(
                  "Let's Find Your Specialist",
                  style: TextStyle(
                      fontSize: 40,
                      foreground: Paint()
                        ..shader = ui.Gradient.linear(
                          const Offset(0, 50),
                          const Offset(100, 10),
                          <Color>[
                            AppColors.appBarColor,
                            Colors.grey,
                          ],
                        )),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: "Search by diseases",
                      labelStyle: TextStyle(color: AppColors.appBarColor),
                      hintText: "Search"),
                )
              ]),
            ),
            Container(
              height:200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Card(
                    child: Container(
                      width: 300,height: 200,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/proctologist.jpg',),

                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Card(
                    child: Container(
                      width: 300,height: 200,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/gastroenterology.jpg',),
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Card(
                    child: Container(
                      width: 300,height: 200,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/hepatologist.jpg',),
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Card(
                    child: Container(
                      width: 300,height: 200,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/cosmetologist.jpg',),
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Card(
                    child: Container(
                      width: 300,height: 200,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/pulmonologist.jpg',),
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Card(
                    child: Container(
                      width: 300,height: 200,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/speech-therapist.jpg',),
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                ],
              ),
            ),

              ],
            ),));


  }
}
