import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  // Indicate which screen this is
  final int _screenID = 1;

  @override
  Widget build(BuildContext context) {
    // Change the title as needed to indicate what is on this screen
    String _title = "Screen " + _screenID.toString();

    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      // test the widget here
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is screen ' + _screenID.toString(),
            ),
          ],
        ),
      ),
    );
  }
}
