import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isElevated = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _isElevated = !_isElevated;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 350),
              child: _isElevated
                  ? Icon(
                      Icons.check,
                      size: 80,
                      color: Colors.green[300],
                    )
                  : Icon(
                      Icons.check,
                      size: 80,
                      color: Colors.grey[600],
                    ),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.grey[300],
                boxShadow: _isElevated
                    ? [
                        BoxShadow(
                          color: Colors.grey[500]!,
                          offset: const Offset(4, 4),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                        const BoxShadow(
                          color: Colors.white,
                          offset: Offset(-4, -4),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                      ]
                    : null,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
