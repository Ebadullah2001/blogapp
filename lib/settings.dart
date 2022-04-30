import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xff111328),
      ),
    body: Container(
      color: Color(0xff111328),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          profilePageButtons(text: "Plans and Subscription", onPressed: () {},i: Icons.attach_money,),
          SizedBox(
            height: 10,
          ),
          profilePageButtons(text: "Friends Invite", onPressed: () {},i: Icons.face_rounded,),
          SizedBox(
            height: 10,
          ),
          profilePageButtons(text: "Terms And Conditions", onPressed: () {},i: Icons.text_snippet),
          SizedBox(
            height: 10,
          ),
          profilePageButtons(text: "Privacy Policy", onPressed: () {},i: Icons.lock),
          SizedBox(
            height: 10,
          ),
          profilePageButtons(text: "Contact us", onPressed: () {},i: Icons.text_snippet),
          SizedBox(
            height: 10,
          ),
          profilePageButtons(text: "Copyrights", onPressed: () {},i: Icons.copyright_rounded),
          SizedBox(
            height: 10,
          ),
          Container(alignment: Alignment.center,child: Text("Powered by Anonymous",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),)
        ],
      ),
    ),
    );
  }
}
class profilePageButtons extends StatelessWidget {
  profilePageButtons({required this.text, this.onPressed,required this.i});
  final i;
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
      height: MediaQuery.of(context).size.height * 0.07,
      child: TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Color(0xff111328),
            ),
          ),
          child: Row(

            children: [
              CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(
                  i,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              SizedBox(width: 25,),
              Text(
                text,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),

            ],
          )),
    );
  }
}