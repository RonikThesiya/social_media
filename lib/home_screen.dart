import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_media/firebase_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color c1 = Color(0xfffa7914);
  Color c2 = Color(0xff7d7f86);
  Color c3 = Color(0xff7d7f86);
  Color c4 = Color(0xff7d7f86);
  Color c5 = Color(0xff7d7f86);
  Color c6 = Color(0xff7d7f86);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          drawer: Drawer(
            width: MediaQuery.of(context).size.width * 0.8,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Color(0xfff4ede9),
                            offset: Offset(0, 5),
                            blurRadius: 10)
                      ], color: Colors.white, shape: BoxShape.circle),
                      child: Image.asset("assets/homelogo.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 20),
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.pencil_circle_fill,
                          size: 25,
                          color: Color(0xfffa7914),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Jesus House Toronto",
                          style: TextStyle(fontSize: 22),
                        ),
                      ],
                    ),
                  ),
                  Text("asma@jesushouse.com"),
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          c1 = Color(0xfffa7914);
                          c2 = Color(0xff7d7f86);
                          c3 = Color(0xff7d7f86);
                          c4 = Color(0xff7d7f86);
                          c5 = Color(0xff7d7f86);
                          c6 = Color(0xff7d7f86);
                        });
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              top: BorderSide(width: 0.5, color: Color(0xff7d7f86)),
                              bottom:
                              BorderSide(width: 0.25, color: Color(0xff7d7f86)),
                            )),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Image.asset(
                              "assets/dashboard.png",
                              color: c1,
                              height: 18,
                              width: 18,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Dashboard",
                              style: TextStyle(fontSize: 18, color: c1),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        c1 = Color(0xff7d7f86);
                        c2 = Color(0xfffa7914);
                        c3 = Color(0xff7d7f86);
                        c4 = Color(0xff7d7f86);
                        c5 = Color(0xff7d7f86);
                        c6 = Color(0xff7d7f86);
                      });
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            top: BorderSide(width: 0.5, color: Color(0xff7d7f86)),
                            bottom:
                            BorderSide(width: 0.25, color: Color(0xff7d7f86)),
                          )),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset(
                            "assets/donation.png",
                            color: c2,
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Donation Pages",
                              style: TextStyle(fontSize: 18, color: c2),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        c1 = Color(0xff7d7f86);
                        c2 = Color(0xff7d7f86);
                        c3 = Color(0xfffa7914);
                        c4 = Color(0xff7d7f86);
                        c5 = Color(0xff7d7f86);
                        c6 = Color(0xff7d7f86);
                      });
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            top: BorderSide(width: 0.5, color: Color(0xff7d7f86)),
                            bottom:
                            BorderSide(width: 0.25, color: Color(0xff7d7f86)),
                          )),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset(
                            "assets/text2give.png",
                            color: c3,
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Text 2 Give",
                            style: TextStyle(fontSize: 18, color: c3),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        c1 = Color(0xff7d7f86);
                        c2 = Color(0xff7d7f86);
                        c3 = Color(0xff7d7f86);
                        c4 = Color(0xfffa7914);
                        c5 = Color(0xff7d7f86);
                        c6 = Color(0xff7d7f86);
                      });
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            top: BorderSide(width: 0.5, color: Color(0xff7d7f86)),
                            bottom:
                            BorderSide(width: 0.25, color: Color(0xff7d7f86)),
                          )),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset(
                            "assets/transaction.png",
                            color: c4,
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Transactions",
                            style: TextStyle(fontSize: 18, color: c4),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        c1 = Color(0xff7d7f86);
                        c2 = Color(0xff7d7f86);
                        c3 = Color(0xff7d7f86);
                        c4 = Color(0xff7d7f86);
                        c5 = Color(0xfffa7914);
                        c6 = Color(0xff7d7f86);
                      });
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            top: BorderSide(width: 0.5, color: Color(0xff7d7f86)),
                            bottom:
                            BorderSide(width: 0.25, color: Color(0xff7d7f86)),
                          )),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset(
                            "assets/analystic.png",
                            color: c5,
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Analytics",
                            style: TextStyle(fontSize: 18, color: c5),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        c1 = Color(0xff7d7f86);
                        c2 = Color(0xff7d7f86);
                        c3 = Color(0xff7d7f86);
                        c4 = Color(0xff7d7f86);
                        c5 = Color(0xff7d7f86);
                        c6 = Color(0xfffa7914);
                      });
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            top: BorderSide(width: 0.5, color: Color(0xff7d7f86)),
                            bottom:
                            BorderSide(width: 0.5, color: Color(0xff7d7f86)),
                          )),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset(
                            "assets/setting.png",
                            color: c6,
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Settings",
                            style: TextStyle(fontSize: 18, color: c6),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shadowColor: Color(0xffdee1e6),
                                elevation: 10,
                                backgroundColor: Color(0xfffa7914),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                            onPressed: () {
                              logout();
                              Navigator.pushReplacementNamed(context, "/");
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Logout",
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.logout,
                                  color: Colors.white,
                                )
                              ],
                            ))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
          appBar: AppBar(
            toolbarHeight: 100,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(30))),
            backgroundColor: Color(0xfffa7914),
            title: TextField(
              decoration: InputDecoration(
                hintText: "Non Profit",
                hintStyle: TextStyle(color: Color(0xff7d7f86)),
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xff7d7f86),
                ),
                filled: true,
                fillColor: Color(0xfff6f6f6),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xfff6f6f6)),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          body: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset("assets/background.png"),
                ],
              ),
              Column(),
            ],
          ),
        ));
  }
}
