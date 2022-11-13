import 'dart:ui';

import 'package:blogzzz/CreateBog.dart';
import 'package:blogzzz/Readmore.dart';
import 'package:blogzzz/bookmark.dart';
import 'package:blogzzz/discover.dart';
import 'package:blogzzz/editprofile.dart';
import 'package:blogzzz/home.dart';
import 'package:blogzzz/login.dart';
import 'package:blogzzz/mypost.dart';
import 'package:blogzzz/navigator.dart';
import 'package:blogzzz/notiications.dart';
import 'package:blogzzz/profile.dart';
import 'package:blogzzz/register.dart';
import 'package:blogzzz/settings.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Blogzzz';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/register': (context) => Register(),
        '/home': (context) => Home(),
        '/bookmark': (context) => Bookmark(),
        '/createblog': (context) => CreateBlog(),
        '/discover': (context) => Discover(),
        '/editprofile': (context) => EditProfile(),
        '/mypots': (context) => Myposts(),
        '/notification': (context) => Notifications(),
        '/profile': (context) => Profile(),
        '/readmore': (context) => Readmore(),
        '/setting': (context) => Settings(),
        '/navigator': (context) => Nav(),
        '/myblog': (context) => Myposts(),
      },
    );
  }
}
