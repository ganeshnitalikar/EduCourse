import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffCDDADA),
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //   leading: const Icon(CupertinoIcons.bars),
      //   actions: [
      //     IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.bell))
      //   ],
      // ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.bars,
                        ),
                        iconSize: 30,
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.bell),
                        iconSize: 30,
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Welcome to New",
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 26.98),
                          ),
                          const Text(
                            "Educourse",
                            style: TextStyle(
                                fontFamily: 'Jost',
                                fontWeight: FontWeight.w700,
                                fontSize: 37),
                          ),
                          const SizedBox(
                            height: 35,
                          ),
                          Material(
                              borderRadius: BorderRadius.circular(28.5),
                              child: myTextField(context)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(38),
                      topRight: Radius.circular(38)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Course For You",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          height: 4,
                          fontFamily: 'Jost'),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          courseCard(context, path: "assets/1.png"),
                          courseCard(context, path: "assets/1.png"),
                          courseCard(context, path: "assets/1.png"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Course By Category",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          height: 4,
                          fontFamily: 'Jost'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          myIcon(context,
                              title: "UI/UX", path: "assets/icons/icon1.png"),
                          myIcon(context,
                              title: "VISUAL", path: "assets/icons/icon2.png"),
                          myIcon(context,
                              title: "ILLUSTRATIONS",
                              path: "assets/icons/icon3.png"),
                          myIcon(context,
                              title: "PHOTO", path: "assets/icons/icon4.png"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget myIcon(BuildContext context,
      {required String title, required String path}) {
    return Container(
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Column(
        children: [
          Container(
            height: 36,
            width: 36,
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xff190038)),
            child: Image.asset(
              path,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 1,
                fontFamily: 'Jost'),
          ),
        ],
      ),
    );
  }

  Widget courseCard(
    BuildContext context, {
    required String path,
  }) {
    return Container(
      padding: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, path = "/CourseScreen");
        },
        child: Image.asset(
          path,
          height: 242,
          width: 190,
        ),
      ),
    );
  }

  Widget myTextField(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(28.5)),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
      height: MediaQuery.of(context).size.height * .07,
      child: const TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Enter your Keyword",
            suffixIcon: Icon(
              CupertinoIcons.search,
              size: 27,
              weight: 200,
            ),
            hintStyle: TextStyle(
              color: Color(0xff8F8F8F),
            )),
      ),
    );
  }
}
