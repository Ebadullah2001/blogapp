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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff111328),
        title: const Text(
          "Home",
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: () {},
                child: const  CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      'https://imgix.bustle.com/uploads/image/2021/10/18/a81f25ce-7b59-43f0-894f-bd3a303f7f90-the-batman-trailer-lp-today-main-211017.jpeg?w=1200&h=630&fit=crop&crop=faces&fm=jpg'),
                ),
              )


              ),
        ],
      ),
      body: Container(
        color: const Color(0xff111328),
        child: Column(
          children: [
            // Container(
            //     padding: EdgeInsets.all(15),
            //     alignment: Alignment.centerLeft,
            //     child: Text(
            //       "Feed",
            //       style: TextStyle(
            //         fontSize: 30,
            //         fontWeight: FontWeight.bold,
            //         color: Colors.white,
            //       ),
            //     )),
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
              onTap: () {},
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                  bottom: BorderSide(color: Colors.blueGrey),
                )),
                padding: const EdgeInsets.all(10),
                margin:
                    const EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
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
                        style: const TextStyle(fontSize: 25, color: Colors.white),
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
                              style:
                                  const TextStyle(fontSize: 15, color: Colors.blueGrey),
                            ),

                          ),
                          Row(
                            children: const [
                              Icon(Icons.thumb_up,
                                  size: 15, color: Colors.blueGrey),
                              SizedBox(width: 5,),
                              Text(
                                "8",
                                style:
                                TextStyle(fontSize: 15, color: Colors.blueGrey),
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
            label: "bookmark",
            icon: Icon(
              Icons.bookmark,

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
        onTap: _onItemTapped,
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
