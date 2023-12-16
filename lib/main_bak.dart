import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: '플러터 앱', home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.person),
        ),
      ),
      body: const SafeArea(child: Center(child: MyWidget())),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: double.maxFinite,
          height: 50,
          color: Colors.black,
        ),
        Container(
          width: double.maxFinite,
          height: 50,
          color: Colors.red,
          child: Row(
            children: [
              IconButton(onPressed: () {} , icon: Icon(Icons.apple))
            ],
          ),
        )
      ],
    );
  }
}
