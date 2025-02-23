import 'package:flutter/material.dart';

class CustomButton6 extends StatelessWidget {
  final String text;

  const CustomButton6({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 200,

      decoration:BoxDecoration(
          color: Color(0xff05FF00),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(blurRadius: 10)]),
      child: TextButton(
          onPressed: () => {},
          child:Text(
            text,
            style: const TextStyle(fontSize: 24, color: Colors.black),
          )),
    );
  }
}
