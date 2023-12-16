import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: '플러터 앱', home: MyWidget());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SafeArea(child: Center(child: MyWidget())),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2022/04/01/20/37/moon-7105626_1280.jpg'),
                fit: BoxFit.fill)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          extendBody: true,
          body: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "JJW'S",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  const Text(
                    'iPhone',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  const Text('hello', style: TextStyle(fontWeight: FontWeight.w200, color: Colors.white),),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Icon(Icons.apple, size: 30, color: Colors.white),
                      Text('iOS', style: TextStyle(fontSize: 20, color: Colors.white),),
                      SizedBox(width: 30),
                      Icon(Icons.android, size: 30, color: Colors.white),
                      Text('android', style: TextStyle(fontSize: 20, color: Colors.white),)
                    ],
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 50,
                    margin: EdgeInsets.only(top: 40),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            textStyle:
                                const TextStyle(fontSize: 20, color: Colors.red),
                            backgroundColor: Colors.blue[200],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        child: const Text('GET STARTED')),
                  )
                ],
              )),
        ));
  }
}
