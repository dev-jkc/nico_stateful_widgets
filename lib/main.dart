import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // final로 하지 않는다. 값이 변경될 것이기 때문이다.
  int counter = 0;

  void onClicked() {
    counter++;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click Count',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '$counter',
                style: const TextStyle(
                  fontSize: 28,
                ),
              ),
              IconButton(
                onPressed: onClicked,
                iconSize: 48,
                icon: const Icon(
                  Icons.add_box_sharp,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
