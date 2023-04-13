import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: RichText(
                text: TextSpan(
                    style: TextStyle(color: Colors.red),
                    children: <TextSpan>[
                  TextSpan(text: "I   "),
                  TextSpan(
                      text: "applications",
                      style: TextStyle(color: Colors.yellow))
                ])),
            actions: [
              Icon(
                Icons.facebook,
                color: Colors.blue,
                size: 35,
              ),
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.only(right: 35),
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 20,
                ),
              ),
            ],
            leading: Row(
              children: [
                Icon(Icons.add, color: Colors.blueAccent),
                Icon(Icons.mail, color: Colors.blueAccent),
                Icon(
                  Icons.face,
                  color: Colors.blueAccent,
                  size: 5,
                ),
              ],
            )));
  }
}
