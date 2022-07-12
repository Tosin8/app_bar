import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Bar',
      theme: ThemeData(primarySwatch: Colors.pink, home: const MyApp())));
}
