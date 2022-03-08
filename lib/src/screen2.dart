import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  // Indicate which screen this is
  final int _screenID = 2;

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
