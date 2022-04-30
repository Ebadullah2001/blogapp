import 'dart:ui';

import 'package:blogzzz/CreateBog.dart';
import 'package:blogzzz/discover.dart';
import 'package:blogzzz/editprofile.dart';
import 'package:blogzzz/mypost.dart';
import 'package:blogzzz/notiications.dart';
import 'package:blogzzz/profile.dart';
import 'package:blogzzz/settings.dart';

import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Blogzzz';

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title, home:Myposts(),


    );
  }
}

