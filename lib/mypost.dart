import 'package:flutter/material.dart';

class Myposts extends StatefulWidget {
  const Myposts({Key? key}) : super(key: key);

  @override
  State<Myposts> createState() => _MypostsState();
}

class _MypostsState extends State<Myposts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'My Blogs',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xff111328),
      ),
      body: Container(
        color: Color(0xff111328),
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                    bottom: BorderSide(color: Colors.blueGrey),
                  )),
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(
                      top: 10, bottom: 10, right: 10, left: 10),
                  child: Column(
                    children: [
                      Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          // Image border
                          child: SizedBox.fromSize(
                            // Image radius
                            size: Size(MediaQuery.of(context).size.width * 0.90,
                                MediaQuery.of(context).size.height * 0.18),
                            child: Image.network(
                                'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/7n70mucgwy3l0ijy_1645691721.jpeg',
                                fit: BoxFit.cover),
                          ),
                        ),
                        Positioned(
                          top: 5,
                          right: 5,
                          child: Container(
                            child: PopupMenuButton(
                                color: Color(0xff111328),
                                iconSize: 30,
                                icon: Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                ),
                                itemBuilder: (context) => [
                                      PopupMenuItem(
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Delete",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        value: 1,
                                      ),
                                      PopupMenuItem(
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Edit",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        value: 2,
                                      )
                                    ]),
                          ),
                        )
                      ]),
                      Container(
                        padding: const EdgeInsets.all(10),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Ukraine and Russia war......",
                          style: const TextStyle(
                              fontSize: 25, color: Colors.white),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                "25-sep-2022",
                                style: const TextStyle(
                                    fontSize: 15, color: Colors.blueGrey),
                              ),
                            ),
                            Row(
                              children: const [
                                Icon(Icons.thumb_up,
                                    size: 15, color: Colors.blueGrey),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "8",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.blueGrey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
