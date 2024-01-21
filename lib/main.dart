import 'package:flutter/material.dart';
import 'package:flutter_login/pages/Onbording1.dart';
import 'package:flutter_login/pages/login.dart';


//main fuction
void main() {
  runApp(const MyApp()); //method, this method call myApp class
}

//this class exist with ui
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                margin:  const EdgeInsets.all(10),
                child: const Onbording1(),
              ),
            )
          ],
        )),
      ),
    );
  }
}
