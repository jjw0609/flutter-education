import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '플러터 앱',
      home: MyHomePage(title: '제목'),
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

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {

          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: const SafeArea(
        child: Center(
          child: MyWidget()
        )
      ),
    );
  }
}

// single child widget

// 1.Container()**
// width
// height
// color
// border(decoration)
// margin
// padding

// 2.SizedBox
// width
// height

// 3.Padding
// padding

// 4.Text
// data
// style
// maxlines
// overflow

// 5. Icon

// 6. Center

// 7.Align
// alignment: Alignment.bottomCenter

// 8.Appbar

// 9.button

// 9-1.ElevatedButton

// 9-2.OutlinedButton

// 9-3.TextButton

// 10.PlaceHolder

// 11.Divider 구분선

// 12.CircularProgressIndicator 로딩바

// 13.Clip

// CircleAvatar - 원형
// 13-1.ClipOval - 타원형
// 13-2.ClipRRect - 원형
// 13-3.ClipRect - 사각형

// 14.
// Opacity(투명도), // child 구현은 됨 / 투명도 100
// Visibility(보이게 할지 말지), // 자식 위젯 렌더링 x
// Offstage(공간에서 제외 시킬건지) // 자식 위젯 렌더링 o / 보이지는 않게 처리

// 15.singleChildScrollView(스크롤 기능)

// 16. flexible, expanded, spacer

// multiple child widget

// 1.row

// 2.column

// 3.stack

// 4.wrap

// 5.grid


// multiple widget

// Scaffold
// AppBar + leading
// 
// Text
// Grid(crossAxis : 2)
// Card(가칭) - Container, Padding, Column, CircleAvatar, Icon

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Text(
            'Categories',
            style: TextStyle(
              fontFamily: 'Trajan Pro',
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(width: 100, height: 10),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 3,
              mainAxisSpacing: 3,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  color: Colors.yellow[400],
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container( 
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Center(
                            child: IconButton(
                              icon: const Icon(Icons.school),
                              onPressed: () {},
                              iconSize: 30,
                              style: ButtonStyle(
                                alignment: Alignment.center,
                                shape:  MaterialStateProperty.all(
                                  RoundedRectangleBorder( borderRadius: BorderRadius.circular(40) )
                                ),
                              ),
                            ), 
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          'Education',
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  )
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  color: Colors.blue[200],
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container( 
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Center(
                            child: IconButton(
                              icon: const Icon(Icons.subway),
                              onPressed: () {},
                              iconSize: 30,
                              style: ButtonStyle(
                                alignment: Alignment.center,
                                shape:  MaterialStateProperty.all(
                                  RoundedRectangleBorder( borderRadius: BorderRadius.circular(40) )
                                ),
                              ),
                            ), 
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          'Traffic',
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  color: Colors.red[200],
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container( 
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Center(
                            child: IconButton(
                              icon: const Icon(Icons.factory),
                              onPressed: () {},
                              iconSize: 30,
                              style: ButtonStyle(
                                alignment: Alignment.center,
                                shape:  MaterialStateProperty.all(
                                  RoundedRectangleBorder( borderRadius: BorderRadius.circular(40) )
                                ),
                              ),
                            ), 
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          'Industry',
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  color: Colors.red[300],
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container( 
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Center(
                            child: IconButton(
                              icon: const Icon(Icons.favorite),
                              onPressed: () {},
                              iconSize: 30,
                              style: ButtonStyle(
                                alignment: Alignment.center,
                                shape:  MaterialStateProperty.all(
                                  RoundedRectangleBorder( borderRadius: BorderRadius.circular(40) )
                                ),
                              ),
                            ), 
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          'Society',
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  color: Colors.purple[200],
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container( 
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Center(
                            child: IconButton(
                              icon: const Icon(Icons.museum),
                              onPressed: () {},
                              iconSize: 30,
                              style: ButtonStyle(
                                alignment: Alignment.center,
                                shape:  MaterialStateProperty.all(
                                  RoundedRectangleBorder( borderRadius: BorderRadius.circular(40) )
                                ),
                              ),
                            ), 
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          'Culture',
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  color: Colors.grey[500],
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container( 
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Center(
                            child: IconButton(
                              icon: const Icon(Icons.health_and_safety),
                              onPressed: () {},
                              iconSize: 30,
                              style: ButtonStyle(
                                alignment: Alignment.center,
                                shape:  MaterialStateProperty.all(
                                  RoundedRectangleBorder( borderRadius: BorderRadius.circular(40) )
                                ),
                              ),
                            ), 
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          'Health',
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ),
      ],
    );
  }
}
