import 'package:flutter/material.dart';
import 'package:flutterprojects/chat_design.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff168C4B),
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            "assets/images/leading.png",
            color: Color(0xffFFFFFF),
            width: 9.02,
            height: 16,
          ),
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 18.5,
              backgroundImage: AssetImage("assets/images/profile_image.png"),
            ),
            SizedBox(width: 10),
            Text(
              "John Safwat",
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Image.asset("assets/images/call.png", height: 24, width: 24.06),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(
              "assets/images/camera.png",
              color: Color(0xffFFFFFF),
              width: 24.06,
              height: 24,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(
              "assets/images/more.png",
              color: Color(0xffFFFFFF),
              width: 24.06,
              height: 24,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: chat_design(),
          ),

          Positioned(
            bottom: 20,
            left: 16,
            right: 17,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: Color(0xff168C4B), width: 1),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Image.asset(
                            "assets/images/camera.png",
                            width: 24,
                            height: 24,
                            color: Colors.white,
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Theme(
                              data: Theme.of(context).copyWith(
                                inputDecorationTheme: InputDecorationTheme(
                                  fillColor: Colors.transparent,
                                  filled: true,
                                ),
                              ),
                              child: TextField(
                                style: TextStyle(color: Colors.white, fontSize: 12),
                                decoration: InputDecoration(
                                  hintText: "Type a Message ...",
                                  hintStyle: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 12,
                                  ),
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Colors.transparent,
                                ),
                              ),
                            ),
                          ),
                          Image.asset(
                            "assets/images/send.png",
                            width: 24,
                            height: 24,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Color(0xff168C4B),
                    child: Image.asset(
                      "assets/images/mic.png",
                      width: 24,
                      height: 24,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}