import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text(
            'Notifications',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color(0xff111328),
        ),
        body: Container(
          color: Color(0xff111328),
          child: Column(
            children: [
              TextButton(
                onPressed: (){},
                child: Container(
                  margin: EdgeInsets.only(left: 15,right: 15),
                  decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.blueGrey),
                      )),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/1.png',

                      width: MediaQuery.of(context).size.width * 0.15,
                    ),
                    title: Text(
                      "Ukraine and Russia war......",
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    subtitle: Text(
                      "25-sep-2022",
                      style: const TextStyle(fontSize: 10, color: Colors.blueGrey),
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
