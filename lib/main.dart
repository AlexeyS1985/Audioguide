import 'package:flutter/material.dart';
import 'package:audiogid/screens/main_screen.dart';

void main() async {
  WidgetsBinding.ensureInitialized();

  runApp(
    MaterialApp(
      title: 'Аудио-гид',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    ),
  );
}