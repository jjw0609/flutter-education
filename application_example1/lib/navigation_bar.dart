import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      useMaterial3: false,
    ),
    home: NavigatorPage(),
  ));
}

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({super.key});

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  int currentIndex = 0;

  List<Widget> pages = [
    const HomePage(),
    const BusinessPage(),
    const SchoolPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('BottomNavigationBar',
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.business), label: 'Business'),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School')
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          currentIndex: currentIndex),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        // await Navigator.push<String>(
        //     context,
        //     MaterialPageRoute<String>(
        //         builder: (BuildContext context) => const APage()));
        // await Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const APage()));
        Navigator.pushNamed(context, '/');

      },
      child: const Center(child: Text('A페이지로 이동')),
    );
  }
}

class APage extends StatelessWidget {
  const APage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('A페이지'),),
      body: Center(child: Text('A페이지 입니다.')),
    );
  }
}

class BusinessPage extends StatelessWidget {
  const BusinessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'BusinessPage',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}

class SchoolPage extends StatelessWidget {
  const SchoolPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'SchoolPage',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
