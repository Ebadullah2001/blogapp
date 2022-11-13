import 'package:firebase_auth/firebase_auth.dart';
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
        child: Container(
          color: const Color(0xff111328),
          child: Column(
            children: [
              Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40),),


                      child: Image.asset("assets/1234.jpg", fit: BoxFit.cover, height: MediaQuery.of(context).size.height * 0.33,
                        width: MediaQuery.of(context).size.width,),
                    ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40),)
                  ),

                  height: MediaQuery.of(context).size.height * 0.30,
                  // width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: const AssetImage('assets/bat.png'
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Ebadullah",
                          style: TextStyle(color: Colors.white, fontSize: 30)),
                      const Text(
                        "Member since 2020",
                        style: const TextStyle(color: Colors.blueGrey, fontSize: 15),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
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
                    ],
                  ),
                ),
              ]),
              Container(

                color: const Color(0xff111328),
                height: MediaQuery.of(context).size.height * 0.60,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    profilePageButtons(text: "Create Blog", onPressed: () {
                      Navigator.pushNamed(context, '/createblog');
                    }),
                    const SizedBox(
                      height: 10,
                    ),
                    profilePageButtons(text: "My Blogs", onPressed: () {
                      Navigator.pushNamed(context, '/myblog');
                    }),
                    const SizedBox(
                      height: 10,
                    ),
                    profilePageButtons(text: "Bookmarks", onPressed: () {
                      Navigator.pushNamed(context, '/bookmark');
                    }),
                    const SizedBox(
                      height: 10,
                    ),
                    profilePageButtons(
                        text: "Edit Profile Setting", onPressed: () {
                      Navigator.pushNamed(context, '/editprofile');
                    }),
                    const SizedBox(
                      height: 10,
                    ),
                    profilePageButtons(text: "Logout", onPressed: () {
                      FirebaseAuth.instance.signOut().then((value){
                        Navigator.pushNamed(context, '/');
                      });

                    }),
                  ],
                ),
              ),

            ],
          ),
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
      margin: const EdgeInsets.only(left: 15, right: 15),
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
              const Color(0xff111328),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 30,
              )
            ],
          )),
    );
  }
}
