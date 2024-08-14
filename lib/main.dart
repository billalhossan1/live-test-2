import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: HomeScreen(),
    ));
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Styling App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Flutter Text Styling",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Experiment with text styles',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("You clicked the button!")));
                },
                child: Text("Click Me",
                ),),

            Text.rich(TextSpan(
              text: "Welcome to ",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                fontSize: 16
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Flutter!',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    fontSize: 16,
                    // Blue color for "Flutter"
                      ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
