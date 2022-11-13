import 'package:blogzzz/login.dart';
import 'package:blogzzz/navigator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text(
          'Blogzzz',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xff111328),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Color(0xff111328),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  child: Image.asset(
                'assets/image.png',
                height: MediaQuery.of(context).size.height * 0.35,
              )),
              Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.only(top: 10, left: 30),
                  child: const Text(
                    'Register',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  )),
              Container(
                padding:
                    EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 13),
                child: Row(
                  children: [
                    Container(
                        child: const Icon(
                      Icons.co_present,
                      color: Colors.white,
                    )),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Expanded(
                        child: TextField(
                          controller: nameController,
                          style: TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            iconColor: Colors.white,
                            hintText: "Enter username",
                            hintStyle: TextStyle(color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30, right: 30, bottom: 13),
                child: Row(
                  children: [
                    Container(
                        child: const Icon(
                      Icons.email,
                      color: Colors.white,
                    )),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Expanded(
                        child: TextField(
                          controller: emailController,
                          style: TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            iconColor: Colors.white,
                            hintText: "Enter email address",
                            hintStyle: TextStyle(color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30, right: 30, bottom: 20),
                child: Row(
                  children: [
                    Container(
                        child: const Icon(
                      Icons.lock,
                      color: Colors.white,
                    )),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Expanded(
                        child: TextField(
                          obscureText: true,
                          controller: passwordController,
                          style: TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            fillColor: Colors.white,
                            hintText: "Enter password ",
                            hintStyle: TextStyle(color: Colors.white),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20),
                width: MediaQuery.of(context).size.width * 0.90,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                          height: MediaQuery.of(context).size.width * 0.13,
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: ElevatedButton(
                            child: const Text(
                              'Register',
                              style: TextStyle(fontSize: 20),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.red),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ))),
                            onPressed: () {
                              FirebaseAuth.instance
                                  .createUserWithEmailAndPassword(
                                  email: emailController.text,
                                  password: passwordController.text)
                                  .then((value) {
                                Fluttertoast.showToast(
                                    msg: "Account has been Created.",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 16.0
                                );

                                Navigator.pushNamed(context, '/navigator');
                              }).onError((error, stackTrace){
                                print("Error${error.toString()}");
                              });
                            },
                          )),
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  const Text(
                    'Joined us before?',
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    child: const Text(
                      'login in',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => Login()),
                      // );
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
