import 'package:flutter/material.dart';
import 'package:flutter_login/Widgets/text_field.dart';

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
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                      labelStyle:  TextStyle(
                        // color: Colors.black.withOpacity(0.5),
                      )
                      ),
                )),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                print(myController.text);
                setState(() {});
              },
              child: Text('TextButton'),
            ),
            Text(myController.text)
          ],
        ),
      ),
    );
  }
}
