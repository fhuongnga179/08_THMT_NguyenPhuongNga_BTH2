// ignore_for_file: unused_element

import 'package:bt6/SecondPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key})
      : super(key: key); // Added "Key? key" to the constructor.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepOrange), // Toan man hinh
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromARGB(255, 62, 144, 216)), // Chi header
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title})
      : super(key: key); // Added "Key? key" to the constructor.

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context)
            .colorScheme
            .inversePrimary, // Changed "inversePrimary" to "onPrimary".
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 45),
            const Text(
              'Home Screen',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 90,
                  height: 90,
                  color: Colors.blue,
                ),
                Container(
                  width: 90,
                  height: 90,
                  color: Colors.green,
                ),
                Container(
                  width: 90,
                  height: 90,
                  color: Colors.orange,
                ),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 150,
              height: 100,
              child: Image.asset("assets/flutter.png"),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 150,
              height: 100,
              child: Image.asset("assets/dart.png"),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 150,
              height: 100,
              child: Image.asset("assets/android.png"),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text(
                'Click here !!',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
