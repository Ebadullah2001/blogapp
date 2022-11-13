import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return  Container(
          color: const Color(0xff111328),
          child: Column(
            children: [
              TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/readmore');
                },
                child: Container(
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

                  ),
                ),
              ),
            ],
          ),

    );
  }
}
