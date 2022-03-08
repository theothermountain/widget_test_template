import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  // Indicate which screen this is
  final int _screenID = 3;

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
