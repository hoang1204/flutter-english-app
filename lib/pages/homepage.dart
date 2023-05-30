import 'package:cnpmapp/global_provider.dart';
import 'package:cnpmapp/pages/contactpage.dart';
import 'package:cnpmapp/pages/loginpage.dart';

import 'package:cnpmapp/pages/newwordpage.dart';
import 'package:cnpmapp/pages/ranking.dart';
import 'package:cnpmapp/pages/topicquiz.dart';
import 'package:cnpmapp/pages/wordlearn.dart';
import 'package:cnpmapp/pages/wordtopic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';

import '../services/remote_service.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Stack(
              children: [
                SizedBox(
                  height: 60,
                ),
                Lottie.asset("assets/linewave.json"),
                Column(
                  children: [
                    SizedBox(
                      height: 155,
                    ),

                    Align(
                      child: Text(
                        'English for kids',
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => WordTopic()));
                        },
                        child: Text('Lets learn'),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () async {
                          scoreCurrent = await getoneAccount();
                          ref.read(listQuiz.notifier).loadData("Animal");
                          //ref.read(indexQuiz.state).state = 0;
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => TopicQuiz()));
                        },
                        child: Text('Multiple choice'),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () async {
                          await ref.read(listAccounts.notifier).loadData();
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Ranking()));
                        },
                        child: Text('Ranking'),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => NewWord()));
                        },
                        child: Text('New words'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 240,
                    ),
                    // Text(
                    //   "Welcome ${accountCurrent}",
                    //   style: TextStyle(fontSize: 20),
                    // ),
                    TextButton.icon(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => Login()));
                      },
                      icon: Icon(
                        Icons.logout,
                        size: 30,
                        color: Colors.black,
                      ),
                      label: Text(
                        'Log out',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
