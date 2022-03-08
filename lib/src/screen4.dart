import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  // Indicate which screen this is
  final int _screenID = 4;

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
