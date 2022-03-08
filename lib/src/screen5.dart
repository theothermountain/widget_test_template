import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {
  const Screen5({Key? key}) : super(key: key);

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  // Indicate which screen this is
  final int _screenID = 5;

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
