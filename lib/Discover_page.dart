import 'dart:ui';

import 'package:flutter/material.dart';

import 'Custom Button/customAppBar.dart';
import 'Custom Button/customCatogory.dart';
import 'Custom Button/customTabBar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              costomAppBar(
                title: "Discover Places",
              ),
              SizedBox(
                height: 20,
              ),

              /// button design started //
              customTapBar(),

              /// Nearby Place Started
              SizedBox(
                height: 20,
              ),
              customCatogory(
                bannerimg: "assets/images1.png",
                title: "Loulou Restaurant",
              ),

              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 429,
                  width: 988,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Saved",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Places you saved",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff92929D),
                                  ),
                                ),
                              ],
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "See All",
                                style: TextStyle(
                                  color: Color(0xffC03624),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 97,
                              height: 89,
                              decoration: BoxDecoration(
                                color: Color(0xffC03624),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 357,
                              height: 89,
                              decoration: BoxDecoration(
                                color: Color(0xffFFFFFF),
                                border: Border.all(
                                  color: Color(0xffF1F1F5),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Loulou restaurant",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "Paris, France",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xff92929D),
                                              ),
                                            ),
                                            Container(
                                              width: 200,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    height: 16,
                                                    width: 16,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Color(0xffFC5A5A),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 16,
                                                    width: 16,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Color(0xffFC5A5A),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 16,
                                                    width: 16,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Color(0xffFC5A5A),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 16,
                                                    width: 16,
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Colors.white,
                                                        border: Border.all(
                                                          color:
                                                              Color(0xffF1F1F5),
                                                          width: 1.5,
                                                        )),
                                                    child: Center(
                                                      child: Text(
                                                        "+3",
                                                        style: TextStyle(
                                                            fontSize: 6,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    "6 Friends Connect",
                                                    style: TextStyle(
                                                      color: Color(0xff92929D),
                                                      fontSize: 12,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: 97,
                                          height: 38,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: Color(0xffF1F1F5),
                                            ),
                                            onPressed: () {},
                                            child: Text(
                                              "Follow",
                                              style: TextStyle(
                                                color: Color(0xff696974),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
