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
      bottomNavigationBar: NavigationBar(destinations: [
        NavigationDestination(icon: Icon(Icons.accessibility_new_sharp),
          label: "Page 1",
          selectedIcon: Icon(Icons.accessibility_new_sharp),),
        NavigationDestination(icon: Icon(Icons.accessibility_new_sharp),
          label: "Page 2",
          selectedIcon: Icon(Icons.accessible_outlined),),
        NavigationDestination(icon: Icon(Icons.account_circle_sharp),
          label: "Page 3",
          selectedIcon: Icon(Icons.accessibility_new_sharp),)
      ], height: 80,),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height *0.2,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Привет", style: TextStyle(fontSize: 30, fontFamily: "Arial" , fontWeight: FontWeight.bold), )
                  ],
                ),
                decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(50))
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.2,
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
