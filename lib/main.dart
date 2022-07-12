import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Bar',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: (() {}),
        ),
        title: const Text('App Bar'),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          PopupMenuButton(itemBuilder: (context) {
            return [
              const PopupMenuItem(
                child: ListTile(
                  leading: IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: null,
                  ),
                  title: Text('Settings'),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ),
              const PopupMenuItem(
                child: ListTile(
                  leading: IconButton(
                    icon: Icon(Icons.help),
                    onPressed: null,
                  ),
                  title: Text('Help'),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ),
              const PopupMenuItem(
                child: ListTile(
                  leading:
                      IconButton(icon: Icon(Icons.logout), onPressed: null),
                  title: Text('Logout'),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ),
            ];
          }),
        ],
      ),
      body: const Center(
          child:
              Text('Home', style: TextStyle(fontSize: 30, color: Colors.pink))),
    );
  }
}
