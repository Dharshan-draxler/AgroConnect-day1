//import 'package:agroconnect_day1/widget/button.dart';
import 'package:agroconnect_day1/widget/button2.dart';
import 'package:flutter/material.dart';

//import '../widget/text_field.dart';

class UserSelection extends StatelessWidget {
  const UserSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff05FF00), Color(0xff000000)]),
            ),
          ),
          Container(
            // padding: const EdgeInsets.only(left: 21, right: 21),
            margin: const EdgeInsets.only(top: 54, left: 17),
            height: 45,
            width: 170,
            child: Image.asset("assets/images/agroconnect_text.png"),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/images/pashu.png'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 150, left: 50),
                child: Text(
                  "Select The User",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 93, left: 50),
                  child: customButton2(text: "Farmer")),
              Container(
                  margin: const EdgeInsets.only(top: 25, left: 50),
                  child: customButton2(text: "Ward Member")),
              Container(
                  margin: const EdgeInsets.only(top: 25, left: 50),
                  child: customButton2(text: "Agricultural Officer"))
            ],
          ),
        ],
      ),
    );
  }
}
