import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:warmup/screens/home.dart';

import 'animals.dart';
import 'nature.dart';

class Cars extends StatelessWidget {
  const Cars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyText("Tiny Coders", 20),
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[Color(0xFFFF00B8), Color(0xFF9E00FF)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFFBA00E9),
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage("assets/images/filename (1).jpg"),
                  backgroundColor: Colors.white,
                ),
                accountName: MyText("About", 20),
                accountEmail:
                MyText("This is my app for Tiny Coder Hackathon", 12)),
            SizedBox(
              height: 25,
            ),
            ListTile(
              leading: Icon(Icons.rate_review_outlined, color: Colors.white),
              title: MyText("Rate", 15),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.help, color: Colors.white),
              title: MyText("About", 15),
              onTap: () {},
            ),
          ]),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 4, 10, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: RaisedButton(
                    color: Colors.purple,
                    onPressed: () {
                      Get.to(Nature());
                    },
                      child: MyText("Nature", 17)
                  )),
              SizedBox(
                width: 28.0,
              ),
              Expanded(
                  child: RaisedButton(
                    color: Colors.purple,
                    onPressed: () {
                      Get.to(Animals());
                    },
                      child: MyText("Animals", 17)
                  )),
              SizedBox(
                width: 28.0,
              ),
              Expanded(
                  child: RaisedButton(
                    color: Colors.purple,
                    onPressed: () {
                      Get.to(Cars());
                    },
                      child: MyText("Cars", 17)
                  )),

            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: MyText2("Cars", 20),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: MyText2("Image from source code", 14),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 220.0,
                            width: 220.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/porsche-1851246_1920.jpg'),
                                fit: BoxFit.cover,
                              ),
                              // shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Container(
                            height: 220.0,
                            width: 220.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/car-race-438467_1920.jpg'),
                                fit: BoxFit.cover,
                              ),
                              // shape: BoxShape.circle,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: MyText2("Image from internet url", 14),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 220.0,
                            width: 220.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/automobile-3368094_1920.jpg'),
                                fit: BoxFit.cover,
                              ),
                              // shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Container(
                            height: 220.0,
                            width: 220.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/auto-2179220_1920.jpg'),
                                fit: BoxFit.cover,
                              ),
                              // shape: BoxShape.circle,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Widget MyText(String text, double size) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.white,
          fontSize: size,
          fontWeight: FontWeight.w600,
          fontFamily: "MyFont"),
    );
  } //text

  Widget MyText2(String text, double size) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.black,
          fontFamily: "MyFont",
          fontSize: size,
          fontWeight: FontWeight.w600),
    );
  } //black text

}
