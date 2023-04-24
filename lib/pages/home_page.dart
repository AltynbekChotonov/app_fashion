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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              appName,
              SizedBox(height: 290),
              badyName,
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  color: Color.fromARGB(64, 117, 134, 156),
                  child: TextField(
                    decoration: InputDecoration(
                      isCollapsed: false,
                      hintText: 'Enter username',
                      hintStyle: TextStyle(
                        color: Color(0xFF99FFFFFF),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      border: OutlineInputBorder(),
                      //labelText: 'Enter username',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  color: Color.fromARGB(64, 117, 134, 156),
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.visibility,
                        color: Color(0xFFFAFAFA),
                      ),

                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      border: OutlineInputBorder(),
                      //labelText: 'Enter username',
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Color(0xFF99FFFFFF),
                      ),
                    ),
                    obscureText: true,
                  ),
                ),
              ),
              SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.only(left: 250),
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(color: Color(0xFF75869C)),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Colors.blue,
                ),
                child: const Center(
                    child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 19),
                )),
              ),
              const SizedBox(height: 10),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Dont have an Account?',
                      style: TextStyle(color: Color(0xFF75869C), fontSize: 17),
                    ),
                    TextSpan(
                      text: ' Registration',
                      style: TextStyle(color: Color(0xFF1872F6), fontSize: 17),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
