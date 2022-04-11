import 'package:flutter/material.dart';

import 'dart:ui';

import 'package:flutter/material.dart';

import 'Custom Button/customAppBar.dart';
import 'Custom Button/customTabBar.dart';

class Hotel_Page extends StatefulWidget {
  const Hotel_Page({Key? key}) : super(key: key);

  @override
  State<Hotel_Page> createState() => _Hotel_PageState();
}

class _Hotel_PageState extends State<Hotel_Page> {
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
                title: "Hotel",
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
              Container(
                width: 988,
                height: 914,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: GridView.builder(
                    itemCount: 12,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Stack(
                          children: [
                            Container(
                              height: 252,
                              width: 227,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Color(0xffF1F1F5),
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 110,
                                    width: 227,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                      ),
                                    ),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(15),
                                          topLeft: Radius.circular(15),
                                        ),
                                        child: Image.asset(
                                          "assets/images2.png",
                                        )),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      "Hotel Cesar****",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Color(0xff171725)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      "Bordeaux, france",
                                      style: TextStyle(
                                        color: Color(0xff696974),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Center(
                                    child: SizedBox(
                                      width: 207,
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
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
