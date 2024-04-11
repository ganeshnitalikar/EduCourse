import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.centerLeft,
        children: [
          //parent container for coloring
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.center,
                    colors: [Color(0xffC50462), Color(0xff500370)])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .05,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    )),
                //first child container for details
                Container(
                    padding:
                        const EdgeInsets.only(left: 38, top: 20, right: 38),
                    height: MediaQuery.of(context).size.height * .3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //container for title
                        Container(
                          decoration:
                              const BoxDecoration(color: Colors.transparent),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "UX Designer from",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32.61,
                                  fontFamily: 'Jost',
                                  height: .9,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "Scaratch.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32.61,
                                  fontFamily: 'Jost',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        //container for description
                        Container(
                          decoration:
                              const BoxDecoration(color: Colors.transparent),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Basic guideline & tips & tricks for how to",
                                style: TextStyle(
                                  color: Color(0xffE4CDE1),
                                  fontSize: 16,
                                  height: 1.6,
                                  fontFamily: 'Jost',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "become a UX designer easily.",
                                style: TextStyle(
                                  color: Color(0xffE4CDE1),
                                  fontSize: 16,
                                  fontFamily: 'Jost',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        //row for author and review
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: const Color(0xff0052B2),
                                    border: Border.all(
                                        width: 1, color: Colors.white)),
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Icon(
                                    Icons.person_outline,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              RichText(
                                text: const TextSpan(children: [
                                  TextSpan(
                                      text: "Author:",
                                      style: TextStyle(
                                        color: Color(0xffBE9AC5),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        fontFamily: 'Jost',
                                      )),
                                  TextSpan(
                                      text: "Jenny",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      )),
                                ]),
                              ),
                              const Spacer(),
                              //row for review part
                              Row(
                                children: [
                                  const Text(
                                    "4.8",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    child: Image.asset(
                                      "assets/icons/star.png",
                                      height: 15,
                                      width: 15,
                                    ),
                                  ),
                                  const Text(
                                    "(20 review)",
                                    style: TextStyle(
                                      fontFamily: 'Jost',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffBE9AC5),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    )),

                Expanded(
                  //container for course topic list
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(38),
                            topRight: Radius.circular(38)),
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            myRow(context,
                                title: "Introduction",
                                subtitle:
                                    "Lorem Ipsum is simply dummy text ..."),
                            myRow(context,
                                title: "Introduction",
                                subtitle:
                                    "Lorem Ipsum is simply dummy text ..."),
                            myRow(context,
                                title: "Introduction",
                                subtitle:
                                    "Lorem Ipsum is simply dummy text ..."),
                            myRow(context,
                                title: "Introduction",
                                subtitle:
                                    "Lorem Ipsum is simply dummy text ..."),
                            myRow(context,
                                title: "Introduction",
                                subtitle:
                                    "Lorem Ipsum is simply dummy text ..."),
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget myRow(BuildContext context,
      {required String title, required String subtitle}) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(10),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/image.png",
              height: 60,
              width: 46,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 17, fontWeight: FontWeight.w500, height: 2),
            ),
            Text(
              subtitle,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  fontFamily: 'Jost',
                  color: Color(0xff8F8F8F)),
            )
          ])
        ],
      ),
    );
  }
}
