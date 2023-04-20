import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static Widget appName = const Text(
    'FIRST ELD',
    style: const TextStyle(
        color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
  );
  static Widget badyName = RichText(
    text: TextSpan(
        text: "Hello, trucker.",
        style: const TextStyle(
            color: Colors.white, fontSize: 43, fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: '\n         Login to your account',
            style: const TextStyle(
                color: Colors.grey, fontSize: 19, fontWeight: FontWeight.bold),
          )
        ]),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/image 10.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 300),
              child: appName,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 150),
              child: badyName,
            ),
          ],
        ),
      ),
    ));
  }
}
