import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'Edit Profile',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xff111328),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Color(0xff111328),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.30,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Stack(clipBehavior: Clip.none, children: [
                      CircleAvatar(
                        radius: 70,
                        backgroundImage: NetworkImage(
                            'https://imgix.bustle.com/uploads/image/2021/10/18/a81f25ce-7b59-43f0-894f-bd3a303f7f90-the-batman-trailer-lp-today-main-211017.jpeg?w=1200&h=630&fit=crop&crop=faces&fm=jpg'),
                      ),
                      Positioned(
                          right: 10,
                          bottom: -10,
                          child: GestureDetector(
                              onTap: () {},
                              child: CircleAvatar(
                                backgroundColor: Color(0xff111328),
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              )))
                    ]),
                    SizedBox(
                      height: 20,
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
                  ],
                ),
              ),
              editprofilewidget(text: "Enter Youn Name",hint: "Mohammad",pass: "",),
              editprofilewidget(text: "Enter Youn Email",hint: "Mohammad@gmail.com",pass: "",),
              editprofilewidget(text: "Enter Youn Password",hint: ".......",pass: "p",),
              Container(
                // alignment: Alignment.bottomRight,
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width*0.3,
                  child: ElevatedButton(
                    child: const Text(
                      'Save',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ))),
                    onPressed: () {

                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class editprofilewidget extends StatelessWidget {
   editprofilewidget({required this.text,required this.hint,required this.pass});
  String text;
   String hint;
   String pass;


  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),child: Text(text,style: TextStyle(color: Colors.white,fontSize: 15,),)),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 3, color: Colors.red),
            ),
            margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    obscureText: pass == "p"?true:false,
                    // controller: nameController,
                    style: const TextStyle(color: Colors.white),
                    decoration:  InputDecoration(
                      iconColor: Colors.white,
                      hintText: hint,
                      hintStyle: TextStyle(color: Colors.white),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
