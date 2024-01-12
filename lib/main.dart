import 'package:flutter/material.dart';
import 'package:flutter_login/pages/dashboard.dart';
import 'package:flutter_login/widgets/password.dart';
import 'package:flutter_login/widgets/text_field.dart';
import 'package:flutter_login/widgets/button.dart';

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
  // Color labelColor = Colors.black.withOpacity(0.5);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png',
                width: 70,
                height: 70,
              ),
              const textField(inputLabel: "Username"),
              const password(
                passwordLabel: "Password",
              ),
              customButton(
                buttonLabel: "Press",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Dashboard()));
                },
              ),
              // TextButton(
              //   style: ButtonStyle(
              //     foregroundColor: MaterialStateProperty.all<Color?>(
              //         const Color.fromARGB(255, 0, 0, 0)),
              //     backgroundColor:
              //         MaterialStateProperty.all<Color?>(Colors.yellow),
              //   ),
              //   onPressed: () {
              //     print(myController.text);
              //     setState(() {});

              //   },
              //   child: const Text('LogIn'),
              // ),
              Text(
                myController.text,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
