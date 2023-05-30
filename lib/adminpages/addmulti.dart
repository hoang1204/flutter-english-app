import 'package:cnpmapp/adminpages/adminhomepage.dart';
import 'package:cnpmapp/adminpages/manager.dart';
import 'package:cnpmapp/services/remote_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../global_provider.dart';

class AddQuiz extends ConsumerWidget {
  AddQuiz({Key? key}) : super(key: key);
  TextEditingController content = TextEditingController();
  TextEditingController A = TextEditingController();
  TextEditingController B = TextEditingController();
  TextEditingController C = TextEditingController();
  TextEditingController D = TextEditingController();
  final answer = StateProvider((ref) => '');
  final Topic = StateProvider((ref) => '');
  final indexQ = StateProvider((ref) => 0);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ADD QUIZ"),
      ),
      body: SingleChildScrollView(
        child: IndexedStack(
          index: ref.watch(indexQ),
          children: [
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Let's choose topic",
                  style: TextStyle(fontSize: 32),
                ),
                SizedBox(
                  height: 20,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: gridView.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 4.0,
                    crossAxisSpacing: 4.0,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        //Expanded(child: gridView[index]),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              ref.read(indexQ.state).state++;
                              ref.read(Topic.state).state = textGridView[index];
                            },
                            child: gridView[index],
                          ),
                        ),
                        Text(
                          textGridView[index],
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Text(
                    "FORM ADD QUIZ",
                    style: TextStyle(
                      fontSize: 34,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 320,
                  child: TextField(
                    controller: content,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.red,
                        ), //<-- SEE HERE
                      ),
                      label: Text("Content"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 320,
                  child: TextField(
                    controller: A,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.blue,
                        ), //<-- SEE HERE
                      ),
                      label: Text("A"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 320,
                  child: TextField(
                    controller: B,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.blue,
                        ), //<-- SEE HERE
                      ),
                      label: Text("B"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 320,
                  child: TextField(
                    controller: C,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.blue,
                        ), //<-- SEE HERE
                      ),
                      label: Text("C"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 320,
                  child: TextField(
                    controller: D,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.blue,
                        ), //<-- SEE HERE
                      ),
                      label: Text("D"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                FloatingActionButton(
                  backgroundColor: Color.fromARGB(255, 8, 193, 14),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Choose correct answer"),
                          content: Container(
                            height: 80,
                            width: 300,
                            child: Row(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    ref.read(answer.state).state = 'A';

                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "A",
                                    style: TextStyle(fontSize: 22),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    ref.read(answer.state).state = 'B';
                                    Navigator.pop(context);
                                  },
                                  child:
                                      Text("B", style: TextStyle(fontSize: 22)),
                                ),
                                TextButton(
                                  onPressed: () {
                                    ref.read(answer.state).state = 'C';
                                    Navigator.pop(context);
                                  },
                                  child:
                                      Text("C", style: TextStyle(fontSize: 22)),
                                ),
                                TextButton(
                                  onPressed: () {
                                    ref.read(answer.state).state = 'D';
                                    Navigator.pop(context);
                                  },
                                  child:
                                      Text("D", style: TextStyle(fontSize: 22)),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Text(
                    "Answer",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 240,
                  height: 55,
                  child: TextButton(
                   
                    onPressed: () async {
                      if (ref.read(answer) == '' ||
                          content.text == '' ||
                          A.text == '' ||
                          C.text == '' ||
                          D.text == '' ||
                          C.text == '') {
                        Fluttertoast.showToast(
                          msg: "Add quiz fail",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 20,
                        );
                      } else {
                        Fluttertoast.showToast(
                          msg: "Add quiz successful",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.blue,
                          textColor: Colors.white,
                          fontSize: 20,
                        );
                        await addQuiz(content.text, ref.read(Topic),
                            ref.read(answer), A.text, B.text, C.text, D.text);

                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => Manager()));
                      }
                      content.clear();
                      A.clear();
                      B.clear();
                      C.clear();
                      D.clear();
                    },
                    child: Text(
                      "Confirm",
                      style: TextStyle(
                        fontSize: 26,
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
