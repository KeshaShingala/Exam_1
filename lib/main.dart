import 'package:exam_2/screens/add_page.dart';
import 'package:exam_2/screens/secondpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
      routes: {
        '/': (context) => const Homepage(),
        'add_page': (context) => const add_page(),
      },
    ),
  );
}
