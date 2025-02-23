import 'package:flutter/material.dart';
import 'package:agroconnect_day1/widget/home_page_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset("assets/images/sky.png"),
        Container(
          alignment: Alignment.bottomCenter,
          height: MediaQuery.of(context).size.height,
          child: Image.asset('assets/images/farmer.png'),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const HomePageButtton(
                    menuimage: "assets/images/menu.png",
                  ),
                  Image.asset(
                    "assets/images/agroconnect_text.png",
                    height: 34,
                    width: 167,
                  ),
                  const HomePageButtton(
                    menuimage: "assets/images/chat.png",
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff05FF00),
                      Color.fromARGB(0, 255, 255, 255)
                    ]),
                // boxShadow: [BoxShadow(blurRadius: 70)],
                border: Border.all(
                    width: 2, color: Color.fromARGB(255, 154, 154, 154)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Agricultural Officer",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      backgroundColor: Colors.transparent,
                      //shadowColor: Colors.transparent,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Ward Member",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      backgroundColor: Colors.transparent,
                      //shadowColor: Colors.transparent,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HomePageButtton(menuimage: "assets/images/sun.png"),
                  HomePageButtton(menuimage: "assets/images/bank2.png"),
                  HomePageButtton(menuimage: "assets/images/law2.png")
                ],
              ),
            ),

//news and notifiaction

            Container(
              margin: EdgeInsets.only(top: 10),
              height: 340,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.transparent, boxShadow: [
                BoxShadow(
                    color: Colors.green.withOpacity(0.5),
                    blurRadius: 3,
                    spreadRadius: -5,
                    offset: Offset(-2, -2))
              ]),
            ),


            Container(
              alignment: Alignment.bottomCenter,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HomePageButtton(menuimage: "assets/images/Rupee (1).png"),
                  HomePageButtton(menuimage: "assets/images/home.png"),
                  HomePageButtton(menuimage: "assets/images/Complaint.png"),
                ],
              ),
            )
          ],
        )
      ],
    ));
  }
}