import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    // TODO: #1 A proper way to display image, text, and buttons.
    return const Card();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const DoomScrollView());
  }
}

class DoomScrollView extends StatefulWidget {
  const DoomScrollView({super.key});

  @override
  State<DoomScrollView> createState() => _DoomScrollView();
}

class _DoomScrollView extends State<DoomScrollView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Stock Pile"),
        backgroundColor: const Color(0x00201A23),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            ItemCard(title: "Hello World!"),
            ItemCard(title: "Hello Again!")
          ],
        ),
      ),
    ));
  }
}
