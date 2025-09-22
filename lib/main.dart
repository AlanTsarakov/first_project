import 'package:flutter/material.dart';

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
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      _counter += 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title, style: TextStyle(fontSize: 25)),
      ), backgroundColor: Colors.blueGrey,
      body: Center(
        child: Container(
          child: Column(
            children: [
              Container(
                width: 390,
                height: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Привет", style: TextStyle(fontSize: 30, fontFamily: "Arial" , fontWeight: FontWeight.bold), )
                  ],
                ),
                margin: EdgeInsets.only(bottom: 30, top: 30),
                decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(50))
              ),
              Container(
                width: 390,
                height: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Мир!", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
                  ],
                ),
                decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(50))
              ),
            ],
          ),
        ),
      ),
    );
  }
}
