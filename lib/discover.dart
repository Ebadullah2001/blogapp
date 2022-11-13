import 'package:flutter/material.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  TextEditingController discoverController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff111328),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 3, color: Colors.red),
            ),
            margin:
                const EdgeInsets.only(top: 20, bottom: 10, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    controller: discoverController,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      iconColor: Colors.white,
                      hintText: "Enter what you want to Discover...",
                      hintStyle: TextStyle(color: Colors.white),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/readmore');
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 15, right: 15),
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
                            onTap: () {},
                            child: const Icon(
                              Icons.bookmark,
                              color: Colors.red,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   selectedItemColor: Colors.red,
      //   unselectedItemColor: Colors.white,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       backgroundColor: Color(0xff111328),
      //       label: "Home",
      //       icon: Icon(
      //         Icons.home,
      //
      //         size: 30,
      //       ),
      //     ),
      //     BottomNavigationBarItem(
      //       backgroundColor: Color(0xff111328),
      //       label: "bookmark",
      //       icon: Icon(
      //         Icons.bookmark,
      //
      //         size: 30,
      //       ),
      //     ),
      //     BottomNavigationBarItem(
      //       backgroundColor: Color(0xff111328),
      //       label: "search",
      //       icon: Icon(
      //         Icons.search,
      //
      //         size: 30,
      //       ),
      //     ),
      //     BottomNavigationBarItem(
      //       backgroundColor: Color(0xff111328),
      //       label: "Profile",
      //       icon: Icon(
      //         Icons.account_circle,
      //
      //         size: 30,
      //       ),
      //     ),
      //   ],
      //   // currentIndex: _selectedIndex,
      //   // // selectedItemColor: Colors.amber[800],
      //   // onTap: _onItemTapped,
      // ),
    );
  }
}
