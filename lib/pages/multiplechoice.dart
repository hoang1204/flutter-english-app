import 'package:cnpmapp/global_provider.dart';
import 'package:cnpmapp/pages/topicquiz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';

import 'finishquiz.dart';

class Multiple extends ConsumerStatefulWidget {
  const Multiple({Key? key}) : super(key: key);

  @override
  ConsumerState<Multiple> createState() => _MultipleState();
}

class _MultipleState extends ConsumerState<Multiple> {
  int scoreTopic = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/background3.jpg',
                  fit: BoxFit.fitHeight,
                  height: 781,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30),
                Text(
                  "Your score now: ${scoreTopic}/5",
                  style: TextStyle(
                    fontSize: 23,
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 165, 207, 228)),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Center(
                      child: Text(
                        ref
                            .watch(listQuiz)[ref.watch(indexQuiz.state).state]
                            .content,
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                Lottie.asset("assets/linequiz.json"),
                SizedBox(
                  height: 30,
                ),
                SizedBox(height: 10),
                Card(
                  child: ListTile(
                    onTap: () {
                      if (ref.watch(indexQuiz.state).state == 5) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => Finish(
                                      scoreTopic: scoreTopic,
                                    )));
                      } else if (ref
                              .watch(listQuiz)[ref.watch(indexQuiz.state).state]
                              .answer ==
                          'A') {
                        scoreTopic++;
                        ref.read(indexQuiz.state).state++;
                      } else if (ref.read(indexQuiz.state).state !=
                          ref.read(listQuiz).length - 1) {
                        ref.read(indexQuiz.state).state++;
                      }
                    },
                    leading: SizedBox(
                      child: Text(
                        "A. ${ref.watch(listQuiz)[ref.watch(indexQuiz.state).state].a}",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  child: ListTile(
                    onTap: () {
                      if (ref.watch(indexQuiz.state).state == 5) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => Finish(
                                      scoreTopic: scoreTopic,
                                    )));
                      } else if (ref
                              .watch(listQuiz)[ref.watch(indexQuiz.state).state]
                              .answer ==
                          'B') {
                        scoreTopic++;
                        ref.read(indexQuiz.state).state++;
                      } else if (ref.read(indexQuiz.state).state !=
                          ref.read(listQuiz).length - 1) {
                        ref.read(indexQuiz.state).state++;
                      }
                    },
                    leading: SizedBox(
                      child: Text(
                        "B. ${ref.watch(listQuiz)[ref.watch(indexQuiz.state).state].b}",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  child: ListTile(
                    onTap: () {
                      if (ref.watch(indexQuiz.state).state == 5) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => Finish(
                                      scoreTopic: scoreTopic,
                                    )));
                      } else if (ref
                              .watch(listQuiz)[ref.watch(indexQuiz.state).state]
                              .answer ==
                          'C') {
                        scoreTopic++;
                        ref.read(indexQuiz.state).state++;
                      } else if (ref.read(indexQuiz.state).state !=
                          ref.read(listQuiz).length - 1) {
                        ref.read(indexQuiz.state).state++;
                      }
                    },
                    leading: SizedBox(
                      child: Text(
                        "C. ${ref.watch(listQuiz)[ref.watch(indexQuiz.state).state].c}",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  child: ListTile(
                    onTap: () {
                      if (ref.watch(indexQuiz.state).state == 5) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => Finish(
                                      scoreTopic: scoreTopic,
                                    )));
                      } else if (ref
                              .watch(listQuiz)[ref.watch(indexQuiz.state).state]
                              .answer ==
                          'D') {
                        scoreTopic++;
                        ref.read(indexQuiz.state).state++;
                      } else if (ref.read(indexQuiz.state).state !=
                          ref.read(listQuiz).length - 1) {
                        ref.read(indexQuiz.state).state++;
                      }
                    },
                    leading: SizedBox(
                      child: Text(
                        "D. ${ref.watch(listQuiz)[ref.watch(indexQuiz.state).state].d}",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 29),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton.icon(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => TopicQuiz()));
                      },
                      icon: Icon(Icons.arrow_back_ios_new_outlined),
                      label: Text("BACK TOPIC"),
                    ),
                    TextButton.icon(
                      onPressed: () {
                        ref.read(indexQuiz.state).state++;
                        if (ref.watch(indexQuiz.state).state == 5) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => Finish(
                                        scoreTopic: scoreTopic,
                                      )));
                        }
                      },
                      icon: Icon(Icons.arrow_forward_ios_outlined),
                      label: Text("NEXT"),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
