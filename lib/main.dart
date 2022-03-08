import 'package:flutter/material.dart';

import 'src/screen1.dart';
import 'src/screen2.dart';
import 'src/screen3.dart';
import 'src/screen4.dart';
import 'src/screen5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Test Template',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomescreen(title: 'Widget Test Template'),
        '/screen1': (context) => const Screen1(),
        '/screen2': (context) => const Screen2(),
        '/screen3': (context) => const Screen3(),
        '/screen4': (context) => const Screen4(),
        '/screen5': (context) => const Screen5(),
      },
    );
  }
}

class MyHomescreen extends StatefulWidget {
  const MyHomescreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomescreen> createState() => _MyHomescreenState();
}

class _MyHomescreenState extends State<MyHomescreen> {
  // How many screens/screens do you need?
  static const int numscreens = 5;
  // Change the button text as needed based on what you test on each screen
  List<String> buttonText = [
    "Screen 1",
    "Screen 2",
    "Screen 3",
    "Screen 4",
    "Screen 5",
    "Screen 6",
    "Screen 7",
    "Screen 8",
    "Screen 9",
    "Screen 10",
  ];

  List<Widget> getButtons(int num) {
    List<Widget> widgets = [];

    for (int i = 0; i < num; ++i) {
      widgets.add(ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/screen' + (i + 1).toString());
        },
        child: Text((i < buttonText.length)
            ? buttonText[i]
            : "screen " + (i + 1).toString()),
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
        ),
      ));
      widgets.add(const SizedBox(
        height: 20,
      ));
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: getButtons(numscreens),
        ),
      ),
    );
  }
}
