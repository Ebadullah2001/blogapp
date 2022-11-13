import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
        color: const Color(0xff111328),
        child: Column(
          children: [

            Container(
              margin: EdgeInsets.only(top: 15),
              height: MediaQuery.of(context).size.height * 0.05,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  categoryButton(
                    name: "All",
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  categoryButton(
                    name: "Bussiness",
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  categoryButton(
                    name: "Food",
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  categoryButton(
                    name: "Sports",
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  categoryButton(
                    name: "Fashion",
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  categoryButton(
                    name: "Excersice",
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  categoryButton(
                    name: "Travelling",
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  categoryButton(
                    name: "Technology",
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/readmore');
              },
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
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20), // Image border
                      child: SizedBox.fromSize(
                        // Image radius
                        size: Size(MediaQuery.of(context).size.width * 0.90,
                            MediaQuery.of(context).size.height * 0.18),
                        child: Image.network(
                            'https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/7n70mucgwy3l0ijy_1645691721.jpeg',
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Ukraine and Russia war......",
                        style:
                            const TextStyle(fontSize: 25, color: Colors.white),
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


    );
  }
}

class categoryButton extends StatelessWidget {
  categoryButton({required this.name});

  String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        child: Text(name),
        style: ElevatedButton.styleFrom(
          primary: const Color(0xff111328),
          side: const BorderSide(color: Colors.red, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
        ),
      ),
    );
  }
}
