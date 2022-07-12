import 'package:flutter/material.dart';

void main() {
  runApp(MateriaApp(
      debugShowCheckedModeBanner: false,
      title: 'App Bar',
      theme: ThemeData(primarySwatch: Colors.pink, home: const MyApp())));
}
