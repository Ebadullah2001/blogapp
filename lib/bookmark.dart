import 'package:flutter/material.dart';

class Bookmark extends StatefulWidget {
  const Bookmark({Key? key}) : super(key: key);

  @override
  State<Bookmark> createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bookmark',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xff111328),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10),
        color: const Color(0xff111328),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 15,right: 15),
              decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.blueGrey),
                  )),
              child: ListTile(
                leading: Image.asset(
                  'assets/1.png',

                  width: MediaQuery.of(context).size.width * 0.15,
                ),
                title: const Text(
                  "Ukraine and Russia war......",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                subtitle: const Text(
                  "25-sep-2022",
                  style: TextStyle(fontSize: 10, color: Colors.blueGrey),
                ),
                trailing: GestureDetector(
                  onTap: (){},
                  child: const Icon(
                    Icons.bookmark,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
