import 'package:flutter/material.dart';
import 'package:flutter_login/Widgets/text_field.dart';
import 'package:passwordfield/passwordfield.dart';

//main fuction
void main() {
  runApp(MyApp()); //method, this method call myApp class
}

//this class exist with ui
class MyApp extends StatefulWidget {
  MyApp({super.key});

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
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: myController,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                      filled: true,
                      fillColor: Color.fromARGB(136, 91, 90, 90),
                      labelStyle: TextStyle(
                        color: Colors.white,
                      )),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PasswordField(
                color: Colors.white,
                passwordDecoration: PasswordDecoration(
                  inputStyle: TextStyle(
                    color: Colors.white,
                  )
                ),
                border: PasswordBorder(
                  border: OutlineInputBorder(),
                ),
                hintText: 'Password',
                backgroundColor: Color.fromARGB(136, 91, 90, 90),
                errorMessage: 'Error',
              ),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 0, 0, 0)),
                backgroundColor: MaterialStateProperty.all<Color?>(Colors.yellow),
              ),
              onPressed: () {
                print(myController.text);
                setState(() {});
              },
              child: Text('LogIn'),
            ),
            Text(
              myController.text,
              style: const TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
