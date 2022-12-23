import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:task/pages/home3.dart';
import 'package:task/widgets/bottom_app_bar.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  var S = ["assets/unsplash.png", "assets/unsplash1.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
        Container(
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 14, 60, 110),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
          height: 153,
          width: 428,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 27, top: 60, right: 27, bottom: 27),
            child: Column(
              children: [
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
                            focusColor: const Color.fromARGB(255, 14, 60, 110),
                            fillColor: const Color.fromARGB(255, 14, 60, 110),
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
        SizedBox(
          height: 26,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 30,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Container(
                    padding: EdgeInsets.only(top: 7),
                    width: 143,
                    height: 27,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "MVSH Engineering college",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              }),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 27.0, right: 27, top: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (builder) => Home3()),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 5,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            padding:
                                EdgeInsets.only(left: 13, top: 13, right: 16),
                            width: 354,
                            height: 116,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("${S[index]}"),
                                    fit: BoxFit.cover)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Icon(
                                        Icons.share,
                                        color: Colors.black,
                                        size: 18,
                                      ),
                                    ),
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Icon(
                                        Icons.bookmark_border,
                                        color: Colors.black,
                                        size: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding:
                                EdgeInsets.only(left: 18, right: 11, top: 12),
                            width: 354,
                            height: 137,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20))),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "GHJK Engineering college",
                                      style: TextStyle(
                                        fontFamily: "Lato",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.only(left: 7, right: 2),
                                      width: 52,
                                      height: 22,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: Colors.green),
                                      child: Row(
                                        children: [
                                          Text(
                                            "4.3",
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontFamily: "Lato",
                                                fontWeight: FontWeight.w800,
                                                color: Colors.white),
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 20,
                                            color: Colors.white,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        height: 30,
                                        width: 230,
                                        child: Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.",
                                          maxLines: 2,
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: "Lato",
                                              color: Colors.grey),
                                          textAlign: TextAlign.justify,
                                        )),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Apply Now",
                                        style: TextStyle(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "Lato"),
                                        textAlign: TextAlign.left,
                                      ),
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          elevation: 0,
                                          backgroundColor: const Color.fromARGB(
                                              255, 14, 60, 110),
                                          fixedSize: Size(73.5, 0)),
                                    )
                                  ],
                                ),
                                // SizedBox(
                                //   height: 4,
                                // ),
                                Divider(
                                  color: Colors.grey,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Image(
                                              image: AssetImage(
                                                  'assets/like.png')),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'More than 1000+ students have been placed',
                                            style: TextStyle(
                                                fontSize: 9,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: "Lato",
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.remove_red_eye_outlined,
                                            size: 20,
                                            color: Colors.grey,
                                          ),
                                          Text(
                                            " 468+",
                                            style: TextStyle(
                                                fontSize: 9,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: "Lato",
                                                color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        )
      ])),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
