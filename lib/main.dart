// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:ui'; // Impor untuk ImageFilter

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Ibrahim TI3C'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          // Background image with blur
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/medina.jpg', // Ganti dengan path gambar Anda
              fit: BoxFit.cover,
            ),
          ),
          // Blur effect
          BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: 5.0,
                sigmaY: 5.0), // Sesuaikan tingkat blur yang diinginkan
            child: Container(
              color: Colors.black.withOpacity(0.3), // Warna latar belakang blur
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Zaky Muhammad Ibrahim',
                  style: TextStyle(
                    color: Colors.white, // Ganti dengan warna yang diinginkan
                    fontSize: 16, // Atur ukuran teks sesuai kebutuhan
                    fontWeight:
                        FontWeight.bold, // Atur gaya teks sesuai kebutuhan
                  ),
                ),
                const Text(
                  'NIM : 2141720131',
                  style: TextStyle(
                    color: Colors.white, // Ganti dengan warna yang diinginkan
                    fontSize: 16, // Atur ukuran teks sesuai kebutuhan
                    fontWeight:
                        FontWeight.bold, // Atur gaya teks sesuai kebutuhan
                  ),
                ),
                Text(
                  '$_counter',
                  style: TextStyle(
                    color: Colors
                        .white, // Ganti dengan warna yang diinginkan (putih)
                    fontSize: 24, // Atur ukuran teks sesuai kebutuhan
                    fontWeight:
                        FontWeight.bold, // Atur gaya teks sesuai kebutuhan
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FloatingActionButton(
                          onPressed: _incrementCounter,
                          tooltip: 'Increment',
                          child: const Icon(Icons.add),
                        ),
                        const SizedBox(width: 16),
                        FloatingActionButton(
                          onPressed: _decrementCounter,
                          tooltip: 'Decrement',
                          child: const Icon(Icons.remove),
                        ),
                        const SizedBox(width: 16),
                        FloatingActionButton(
                          onPressed: _resetCounter,
                          tooltip: 'Reset',
                          child: const Icon(Icons.refresh),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
