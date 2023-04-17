import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            flexibleSpace: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ9dz3a-yebsM1VP6JhDCnxCvvg1D7mDs1Qg&usqp=CAU'),
            toolbarHeight: 100,
            elevation: 5,
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
              PopupMenuButton(itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(child: Text("O tirkeme")),
                  PopupMenuItem(child: Text("Men jonundo")),
                  PopupMenuItem(child: Text("talruu")),
                ];
              }),
              Icon(
                Icons.facebook,
                color: Colors.blue,
                size: 10,
              ),
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.only(right: 35),
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 10,
                ),
              ),
            ],
            leading: Row(
              children: [
                Icon(Icons.add, color: Colors.blueAccent, size: 10),
                Icon(Icons.mail, color: Colors.blueAccent, size: 10),
                Icon(
                  Icons.face,
                  color: Colors.blueAccent,
                  size: 10,
                ),
              ],
            )));
  }
}
