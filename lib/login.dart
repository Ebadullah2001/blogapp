
import 'package:blogzzz/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
        backgroundColor: const Color(0xff111328),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: const Color(0xff111328),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Image.asset(
                    'assets/image.png',
                    height: MediaQuery.of(context).size.height * 0.30,
                  )),
              Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.only(top: 10, left: 30),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  )),
              Container(
                padding: const EdgeInsets.only(
                    left: 30, right: 30, top: 30, bottom: 13),
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
                          style: const TextStyle(color: Colors.white),
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
                padding: const EdgeInsets.only(left: 30, right: 30),
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
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            fillColor: Colors.white,
                            hintText: "Enter password ",
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
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.white),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 20),
                width: MediaQuery.of(context).size.width * 0.90,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                          height: MediaQuery.of(context).size.width * 0.13,
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: ElevatedButton(
                            child: const Text(
                              'Login',
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
                                  .signInWithEmailAndPassword(
                                      email: emailController.text,
                                      password: passwordController.text)
                                  .then((value) {
                                Fluttertoast.showToast(
                                    msg: "logged in Sucessfully",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 16.0
                                );
                               Navigator.pushNamed(context, '/navigator');
                              }).onError((error, stackTrace){
                                Fluttertoast.showToast(
                                    msg: error.toString(),
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 16.0
                                );
                              });

                              // print(emailController.text);
                              // print(passwordController.text);
                            },
                          )),
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  const Text(
                    'Does not have account?',
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const Register()),
                      // );
                      Navigator.pushNamed(context, '/register');
                      // Get.to(()=>Register(),transition: Transition.zoom);
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
