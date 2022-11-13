import 'package:blogzzz/discover.dart';
import 'package:blogzzz/home.dart';
import 'package:blogzzz/notiications.dart';
import 'package:blogzzz/settings.dart';
import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  PageController pageController = PageController();
  final name  = ["Home","Discover","Notifications","Settings"];
  final screens = [
        Home(),
        Discover(),
        Notifications(),
        Settings()
  ];
  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff111328),
        title: Text(
          name[_selectedIndex],
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/profile');
                },
                child: const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/bat.png'),
                ),
              )),
        ],
      ),
      body: screens[_selectedIndex],


      // PageView(
      //   controller: pageController,
      //   children: [
      //     Home(),
      //     Discover(),
      //     Notifications(),
      //     Settings()
      //   ],
      // ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color(0xff111328),
            label: "Home",
            icon: Icon(
              Icons.home,
              size: 30,
            ),
          ),

          BottomNavigationBarItem(
            backgroundColor: Color(0xff111328),
            label: "search",
            icon: Icon(
              Icons.search,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xff111328),
            label: "Notification",
            icon: Icon(
              Icons.notifications,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xff111328),
            label: "Setting",
            icon: Icon(
              Icons.settings,
              size: 30,
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        onTap: onItemTapped,
      ),
    );
  }
}
