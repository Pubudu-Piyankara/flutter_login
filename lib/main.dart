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
                          )
                      
                          ),
                )
                )
            ,
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
