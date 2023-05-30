import 'package:cnpmapp/global_provider.dart';
import 'package:cnpmapp/pages/homepage.dart';
import 'package:cnpmapp/pages/signuppage.dart';
import 'package:cnpmapp/services/remote_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lottie/lottie.dart';

import '../adminpages/adminhomepage.dart';

class Login extends ConsumerWidget {
  Login({Key? key}) : super(key: key);
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                    height: MediaQuery.of(context).size.height,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 260,
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
                      height: 285,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 220,
                  height: 220,
                  child: Lottie.asset('assets/welcome.json'),
                ),
                SizedBox(
                  height: 55,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "LOGIN ",
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
                Row(
                  children: [
                    SizedBox(
                      width: 130,
                    ),
                    Text(
                      "Create a new account",
                      style: TextStyle(fontSize: 15),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => SignUp()));
                      },
                      child: Text("Register"),
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
                      if (await checkLogin(
                          userController.text, passController.text)) {
                        ref.read(stateAccount.state).state =
                            userController.text;
                        accountCurrent = userController.text;
                        idCurrent = await getidAccount();
                        userController.clear();
                        passController.clear();
                        if (ref.read(stateAccount.state).state == 'admin') {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => AdminHomePage()));
                        } else
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (_) => HomePage()));
                      } else {
                        Fluttertoast.showToast(
                          msg: "Can't login, please check again",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 20,
                        );
                        userController.clear();
                        passController.clear();
                      }
                      // print(userController);
                      // print(passController);
                      // if (userController.text == 'admin' &&
                      //     passController.text == '123456') {
                      //   ref.read(stateAccount.state).state =
                      //       userController.text;
                      //   Navigator.pushReplacement(context,
                      //       MaterialPageRoute(builder: (_) => HomePage()));
                      //   userController.clear();
                      //   passController.clear();
                      // }
                      // userController.clear();
                      // passController.clear();

                      // ;
                    },
                    child: Align(
                      child: Text(
                        "Sign in",
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
