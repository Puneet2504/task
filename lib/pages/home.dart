import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:task/widgets/bottom_app_bar.dart';
import 'package:task/widgets/clip.dart';
import 'package:task/pages/home1.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  int val = -1;
  bool _value = false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 14, 60, 110),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              height: 225,
              width: 428,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 27, top: 37, right: 27, bottom: 27),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Icon(
                          FontAwesome5.bell,
                          size: 17,
                          color: Colors.white,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Find your own way",
                              style: TextStyle(
                                  fontFamily: "Lato",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              "Search in 600 colleges around!",
                              style: TextStyle(
                                  fontFamily: "Lato",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 53,
                          width: 279,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Search for colleges,schools...",
                                prefixIcon: const Icon(Icons.search),
                                focusColor:
                                    const Color.fromARGB(255, 14, 60, 110),
                                fillColor:
                                    const Color.fromARGB(255, 14, 60, 110),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                )),
                          ),
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        Container(
                          height: 53,
                          width: 55,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: const Center(
                            child: Icon(
                              Icons.mic,
                              color: Color.fromARGB(255, 14, 60, 110),
                              size: 28,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Stack(alignment: Alignment.bottomRight, children: [
              ClipPath(
                clipper: MyClipper(),
                child: GestureDetector(
                  onTap: () => showModalBottomSheet(
                      enableDrag: false,
                      barrierColor: Colors.transparent,
                      context: context,
                      builder: (builder) {
                        return Container(
                          height: 396,
                          width: 428,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30))),
                          padding:
                              EdgeInsets.only(left: 38, right: 47, top: 24),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Sort by",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'lato',
                                        fontWeight: FontWeight.w800),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: Icon(Icons.close))
                                ],
                              ),
                              Divider(
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (builder) => Home2()));
                                },
                                child: ListTile(
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 0),
                                  title: Text(
                                    "Bachelor of Technology",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        fontFamily: "Lato"),
                                  ),
                                  leading: Icon(FontAwesome5.graduation_cap),
                                  trailing: Radio(
                                    splashRadius: 0,
                                    value: 1,
                                    groupValue: val,
                                    onChanged: (a) {
                                      setState(() {
                                        val = a!;
                                      });
                                    },
                                    activeColor:
                                        const Color.fromARGB(255, 14, 60, 110),
                                  ),
                                ),
                              ),
                              ListTile(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 0),
                                title: Text(
                                  "Bachelor of Architecture",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      fontFamily: "Lato"),
                                ),
                                leading: Icon(FontAwesome5.building),
                                trailing: Radio(
                                  splashRadius: 0,
                                  value: 2,
                                  groupValue: val,
                                  onChanged: (a) {
                                    setState(() {
                                      val = a!;
                                    });
                                  },
                                  activeColor:
                                      const Color.fromARGB(255, 14, 60, 110),
                                ),
                              ),
                              ListTile(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 0),
                                title: Text(
                                  "Pharmacy",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      fontFamily: "Lato"),
                                ),
                                leading: Icon(Icons.local_pharmacy),
                                trailing: Radio(
                                  splashRadius: 0,
                                  value: 3,
                                  groupValue: val,
                                  onChanged: (a) {
                                    setState(() {
                                      val = a!;
                                    });
                                  },
                                  activeColor:
                                      const Color.fromARGB(255, 14, 60, 110),
                                ),
                              ),
                              ListTile(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 0),
                                title: Text(
                                  "Law",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      fontFamily: "Lato"),
                                ),
                                leading: Icon(FontAwesome5.balance_scale),
                                trailing: Radio(
                                  splashRadius: 0,
                                  value: 4,
                                  groupValue: val,
                                  onChanged: (a) {
                                    setState(() {
                                      val = a!;
                                    });
                                  },
                                  activeColor:
                                      const Color.fromARGB(255, 14, 60, 110),
                                ),
                              ),
                              ListTile(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 0),
                                title: Text(
                                  "Management",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      fontFamily: "Lato"),
                                ),
                                leading: Icon(Icons.settings),
                                trailing: Radio(
                                  splashRadius: 0,
                                  value: 5,
                                  groupValue: val,
                                  onChanged: (a) {
                                    setState(() {
                                      val = a!;
                                    });
                                  },
                                  activeColor:
                                      const Color.fromARGB(255, 14, 60, 110),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                  child: Container(
                    height: 158,
                    width: 358,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/charles.jpg"),
                            fit: BoxFit.cover)),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          colors: [
                            Colors.black,
                            Colors.black45,
                            Colors.black26,
                            Colors.transparent,
                            Colors.transparent,
                            Colors.transparent,
                          ],
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 21.0, top: 19),
                            child: Text(
                              "Top Colleges",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: "Lato",
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 18.0,
                            ),
                            child: Container(
                              height: 81,
                              width: 202,
                              child: const Text(
                                'Search through thousands of accredited colleges and universities online to find the right one for you.  Apply in 3 min, and connect with your future.',
                                style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 28,
                width: 72,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "+126 ",
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 11,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    ),
                    const Text(
                      "Colleges",
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 8,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey),
                    ),
                  ],
                ),
              )
            ]),
            const SizedBox(
              height: 20,
            ),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                ClipPath(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  clipper: MyClipper(),
                  child: Container(
                    height: 158,
                    width: 358,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/pexels.jpg"),
                            fit: BoxFit.cover)),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          colors: [
                            Colors.black,
                            Colors.black45,
                            Colors.black26,
                            Colors.transparent,
                            Colors.transparent,
                            Colors.transparent,
                          ],
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 21.0, top: 19),
                            child: Text(
                              "Top Schools",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: "Lato",
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 18.0,
                            ),
                            child: Container(
                              height: 81,
                              width: 202,
                              child: const Text(
                                'Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.',
                                style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 28,
                  width: 72,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        "+106 ",
                        style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 11,
                            fontWeight: FontWeight.w800,
                            color: Colors.black),
                      ),
                      const Text(
                        "Schools",
                        style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 8,
                            fontWeight: FontWeight.w800,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
