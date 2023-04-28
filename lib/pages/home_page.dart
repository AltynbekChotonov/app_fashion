import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Vyacheslav\nYakushin',
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
            onPressed: () {},
            child: Text(
              'ed +',
              style: TextStyle(color: Colors.black87),
            ),
            style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.all(15),
                ),
                foregroundColor: MaterialStateProperty.all<Color>(
                  Colors.black,
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  side: BorderSide(color: Colors.black),
                ))),
          ),
        ]),
      ),
    );
  }
}
