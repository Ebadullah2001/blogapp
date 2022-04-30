import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xff111328),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(

                height: MediaQuery.of(context).size.height * 0.30,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/1234.jpg",fit: BoxFit.cover

                ),
              ),
              Container(

                // color: Color(0xff111328),
                height: MediaQuery.of(context).size.height * 0.30,
                // width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          'https://imgix.bustle.com/uploads/image/2021/10/18/a81f25ce-7b59-43f0-894f-bd3a303f7f90-the-batman-trailer-lp-today-main-211017.jpeg?w=1200&h=630&fit=crop&crop=faces&fm=jpg'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Ebadullah",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                    Text(
                      "Member since 2020",
                      style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Followers 0",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            "Likes 0",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            "Posts 0",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ],
                      ),
                    ),

                    // Container(
                    //   height: MediaQuery.of(context).size.height*0.7,
                    //   child: ListView(
                    //     scrollDirection: Axis.vertical,
                    //
                    //     children: [
                    //       Container(
                    //         margin: EdgeInsets.only(left: 15,right: 15),
                    //         decoration: const BoxDecoration(
                    //             border: Border(
                    //               bottom: BorderSide(color: Colors.blueGrey),
                    //             )),
                    //         child: ListTile(
                    //           leading: Image.asset(
                    //             'assets/1.png',
                    //
                    //             width: MediaQuery.of(context).size.width * 0.15,
                    //           ),
                    //           title: Text(
                    //             "Ukraine and Russia war......",
                    //             style: const TextStyle(fontSize: 20, color: Colors.white),
                    //           ),
                    //           subtitle: Text(
                    //             "25-sep-2022",
                    //             style: const TextStyle(fontSize: 10, color: Colors.blueGrey),
                    //           ),
                    //           trailing: PopupMenuButton(
                    //             color: Color(0xff111328),
                    //               iconSize: 30,
                    //
                    //               itemBuilder: (context) => [
                    //                 PopupMenuItem(
                    //                   child: Text("Delete",style: TextStyle(color: Colors.white),),
                    //                   value: 1,
                    //                 ),
                    //                 PopupMenuItem(
                    //                   child: Text("Edit",style: TextStyle(color: Colors.white),),
                    //                   value: 2,
                    //                 )
                    //               ]
                    //           )
                    //         ),
                    //       ),
                    //
                    //
                    //     ],
                    //   ),
                    // )
                  ],
                ),
              ),
            ]),
            Container(
              color: Color(0xff111328),
              height: MediaQuery.of(context).size.height * 0.60,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  profilePageButtons(text: "Create Blog", onPressed: () {}),
                  SizedBox(
                    height: 10,
                  ),
                  profilePageButtons(text: "My Blogs", onPressed: () {}),
                  SizedBox(
                    height: 10,
                  ),
                  profilePageButtons(text: "Bookmarks", onPressed: () {}),
                  SizedBox(
                    height: 10,
                  ),
                  profilePageButtons(text: "Edit Profile Setting", onPressed: () {}),
                  SizedBox(
                    height: 10,
                  ),
                  profilePageButtons(text: "Logout", onPressed: () {}),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class profilePageButtons extends StatelessWidget {
  profilePageButtons({required this.text, this.onPressed});

  String text;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(left: 15,right: 15) ,
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(color: Colors.blueGrey),
      )),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.06,
      child: TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Color(0xff111328),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 30,
              )
            ],
          )),
    );
  }
}
