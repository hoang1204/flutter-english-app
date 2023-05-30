import 'package:cnpmapp/services/remote_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUp extends ConsumerWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController userController = TextEditingController();
    TextEditingController passController = TextEditingController();
    TextEditingController repassController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  // SizedBox(
                  //   height: 120,
                  // ),
                  Image.asset(
                    'assets/background.jpg',
                    fit: BoxFit.fitHeight,
                    height: 781,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 155,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.white,
                      ),
                      width: 350,
                      height: 350,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 120,
                ),
                SizedBox(
                  height: 55,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 28),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: 320,
                      child: TextField(
                        controller: userController,
                        decoration: InputDecoration(
                          label: Row(
                            children: [
                              Icon(Icons.person_pin_outlined),
                              SizedBox(
                                width: 8,
                              ),
                              Text("User name"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: 320,
                      child: TextField(
                        controller: passController,
                        obscureText: true,
                        decoration: InputDecoration(
                          label: Row(
                            children: [
                              Icon(Icons.lock),
                              SizedBox(
                                width: 8,
                              ),
                              Text("Password"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: 320,
                      child: TextField(
                        controller: repassController,
                        obscureText: true,
                        decoration: InputDecoration(
                          label: Row(
                            children: [
                              Icon(Icons.lock),
                              SizedBox(
                                width: 8,
                              ),
                              Text("Re-Password"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 270,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Login"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  width: 355,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                    ),
                    onPressed: () async {
                      if (passController.text != repassController.text ||
                          passController.text == '') {
                        Fluttertoast.showToast(
                            msg: "The password and re-password is wrong",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      } else if (await checkRegister(userController.text,
                          passController.text, repassController.text)) {
                        Fluttertoast.showToast(
                            msg: "Register Successful",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.blue,
                            textColor: Colors.white,
                            fontSize: 16.0);
                        userController.clear();
                        passController.clear();
                        repassController.clear();
                        Navigator.pop(context);
                      } else {
                        Fluttertoast.showToast(
                            msg: "The username already exists",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                        userController.clear();
                        passController.clear();
                        repassController.clear();
                      }
                    },
                    child: Align(
                      child: Text(
                        "Register",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
