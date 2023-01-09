import 'package:flutter/material.dart';
import 'package:gemz/screens/feed_screen.dart';
import 'package:gemz/screens/post_screen.dart';
import 'package:gemz/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const RootPage(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color.fromARGB(255, 46, 149, 239),
        ),
      ),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<Widget> pages = const [FeedScreen(), PostScreen(), ProfileScreen()];
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 43, 46, 49),
      body: PageView(
          controller: pageController,
          children: const [FeedScreen(), PostScreen(), ProfileScreen()],
          onPageChanged: (int index) {
            setState(() {
              currentPage = index;
            });
          }),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.list,
            color: Color.fromARGB(255, 43, 46, 49),
          ),
          onPressed: () {},
        ),
        title: const Text(
          'GEMZ',
          style: TextStyle(
            color: Color.fromARGB(255, 43, 46, 49),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.diamond,
              color: Color.fromARGB(255, 43, 46, 49),
            ),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: Container(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Feed',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.post_add),
                label: 'Post',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            currentIndex: currentPage,
            onTap: (int index) {
              setState(() {
                pageController.jumpToPage(index);
              });
            },
          ),
        ),
      ),
    );
  }
}
