import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      useMaterial3: false,
    ),
    home: MainPage(),
  ));
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Messages', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue),
      body: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('성공입니다.'),
                backgroundColor: Colors.green,
                duration: Duration(seconds: 2),
              ));
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            child: const Text('성공 메세지')),
        const SizedBox(width: 20),
        ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('실패입니다.'),
                backgroundColor: Colors.red,
                duration: Duration(seconds: 2),
              ));
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text('실패 메세지'))
      ],
    ));
  }
}
