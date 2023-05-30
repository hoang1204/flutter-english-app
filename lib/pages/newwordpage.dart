import 'dart:io';

import 'package:cnpmapp/pages/searchpage.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:lottie/lottie.dart';

import '../action/imagepicker.dart';
import '../global_provider.dart';
import '../services/remote_service.dart';

class NewWord extends ConsumerStatefulWidget {
  const NewWord({Key? key}) : super(key: key);

  @override
  ConsumerState<NewWord> createState() => _NewWordState();
}

class _NewWordState extends ConsumerState<NewWord> {
  TextEditingController Econtroller = TextEditingController();
  TextEditingController Vcontroller = TextEditingController();
  TextEditingController Examplecontroller = TextEditingController();
  @override
  void initState() {
    super.initState();
    ref.read(listNewWord.notifier).loadData();
  }

  @override
  Widget build(BuildContext context) {
    int index() {
      if (ref.read(listNewWord).length == 0)
        return 1;
      else
        return 0;
    }

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
                  'assets/backgroundnewword.jpg',
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: IndexedStack(
              index: index(),
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 75,
                    ),
                    Lottie.asset(
                      'assets/alphabet.json',
                      height: 120,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          'Sort by',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.date_range),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.sort_by_alpha),
                        )
                      ],
                    ),
                    // ListView(
                    //   children: [],
                    // )
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: ref.watch(listNewWord).length,
                      itemBuilder: ((context, index) {
                        final item = ref.watch(listNewWord)[index];
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Card(
                            child: ListTile(
                              leading:
                                  item.imagePath == null || item.imagePath == ''
                                      ? Text("")
                                      //: Text('data'),
                                      : Image.file(
                                          File(item.imagePath!),
                                        ),
                              //leading: Image.asset('assets/nopicture.png'),
                              title: Text(
                                  '${item.word}: ${item.vietnam == '' ? item.definition : item.vietnam}'),
                              subtitle: Text('${item.example ?? ''}'),
                              trailing: IconButton(
                                onPressed: () {
                                  ref.read(listNewWord.notifier).delWord(item);
                                },
                                icon: Icon(
                                  Icons.delete,
                                ),
                              ),
                              onTap: () {},
                            ),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 250,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/nodata.png',
                        width: 200,
                        height: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'There are no new words !',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: SpeedDial(
        icon: Icons.more_horiz_rounded,
        foregroundColor: Colors.black,
        backgroundColor: Color.fromARGB(255, 243, 202, 215),
        children: [
          SpeedDialChild(
              child: Icon(Icons.camera),
              onTap: () {
                print(ref.read(listWords).length);
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        actions: [
                          TextButton(
                            onPressed: () {
                              ref.read(listNewWord.notifier).addNewWord(
                                    Econtroller.text,
                                    null,
                                    Vcontroller.text,
                                    Examplecontroller.text,
                                    temp == null ? '' : temp!.path,
                                  );
                              saveWord(
                                Econtroller.text,
                                null,
                                Vcontroller.text,
                                Examplecontroller.text,
                                temp == null ? '' : temp!.path,
                              );
                              temp = null;
                              Econtroller.clear();
                              Examplecontroller.clear();
                              Vcontroller.clear();
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Add',
                              style: TextStyle(fontSize: 20),
                            ),
                          )
                        ],
                        title: Text('Add new words'),
                        content: Container(
                          height: 400,
                          child: Stack(
                            children: [
                              // Image.asset(
                              //   'assets/bgadd.jpg',
                              //   fit: BoxFit.fill,
                              // ),
                              SingleChildScrollView(
                                child: Column(
                                  children: [
                                    SetPhotoScreen(),
                                    TextField(
                                      controller: Econtroller,
                                      decoration: InputDecoration(
                                        label: Text('Add new words'),
                                      ),
                                    ),
                                    TextField(
                                      controller: Vcontroller,
                                      decoration: InputDecoration(
                                        label: Text('Meaning'),
                                      ),
                                    ),
                                    TextField(
                                      controller: Examplecontroller,
                                      decoration: InputDecoration(
                                        label: Text('Example'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              }),
          SpeedDialChild(
              child: Icon(Icons.search),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SearchWord()));
              }),
        ],
      ),
    );
  }
}
