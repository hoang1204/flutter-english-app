import 'package:cnpmapp/adminpages/manager.dart';
import 'package:cnpmapp/pages/contactpage.dart';
import 'package:cnpmapp/pages/loginpage.dart';
import 'package:cnpmapp/pages/newwordpage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                // SizedBox(
                //   height: 120,
                // ),
                Image.asset(
                  'assets/background.png',
                  fit: BoxFit.fitHeight,
                  height: 781,
                ),
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 260,
                  ),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (_) => Login()));
                    },
                    icon: Icon(
                      Icons.logout,
                      size: 30,
                    ),
                    label: Text(
                      'Log out',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Align(
                child: Text(
                  'English for kids app',
                  style: TextStyle(
                    fontSize: 36,
                    color: Color.fromARGB(255, 231, 6, 6),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Lottie.asset(
                'assets/rubik.json',
                width: 200,
                height: 200,
              ),
              // SizedBox(
              //   height: 120,
              // ),

              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => NewWord()));
                  },
                  child: Text('New words'),
                ),
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Contact()));
                  },
                  child: Text('Contacts'),
                ),
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Manager()));
                  },
                  child: Text('Manager'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
