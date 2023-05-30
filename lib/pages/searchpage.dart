import 'dart:io';

import 'package:cnpmapp/global_provider.dart';
import 'package:cnpmapp/models/post.dart';
import 'package:cnpmapp/services/remote_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchWord extends ConsumerStatefulWidget {
  const SearchWord({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchWordState();
}

class _SearchWordState extends ConsumerState<SearchWord> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    int index() {
      if (ref.read(listTempWords).length == 0)
        return 1;
      else
        return 0;
    }

    return Scaffold(
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              // SizedBox(
              //   height: 120,
              // ),
              Image.asset(
                'assets/backgroundnewword.jpg',
                fit: BoxFit.fitHeight,
                height: 781,
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 120,
              ),
              Align(
                child: Text(
                  'WHAT WORDS DO YOU WANT TO KNOW',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 250,
                    child: TextField(
                      controller: textController,
                      onSubmitted: (value) async {
                        List<Word>? temp =
                            await RemoteService().getPosts(textController.text);
                        print(temp);
                        if (temp!.isEmpty) {
                          final snackBar = SnackBar(
                            content: const Text('We can\'t find your word'),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        } else {
                          ref.read(listTempWords.notifier).addWord(temp);
                        }
                        textController.clear();
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: ref.watch(listTempWords).length,
                  itemBuilder: (context, index) {
                    final item = ref.watch(listTempWords)[index];
                    return Card(
                        child: ListTile(
                      // title: Text(item.word),
                      title: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(item.word),
                                Text(item.phonetics!.isNotEmpty
                                    ? item.phonetics?.first.text ?? ''
                                    : ''),
                              ],
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Expanded(
                              child: Text(
                                item.meanings!.isNotEmpty
                                    ? item.meanings?.first.definitions![0]
                                            .definition ??
                                        ''
                                    : '',
                                maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      trailing: TextButton.icon(
                        onPressed: () async {
                          ref.read(listTempWords.notifier).delWord(item);
                          ref.read(listNewWord.notifier).addNewWord(
                              item.word,
                              item.meanings?.first.definitions![0].definition ??
                                  null,
                              item.vietnam ?? null,
                              item.example ?? null,
                              item.pathImage ?? null);

                          saveWord(
                              item.word,
                              item.meanings?.first.definitions![0].definition ??
                                  null,
                              item.vietnam ?? null,
                              item.example ?? null,
                              item.pathImage ?? null);
                        },
                        icon: Icon(Icons.save),
                        label: Text('Save'),
                      ),
                    ));
                  })
            ],
          ),
        )
      ]),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_sharp),
        onPressed: () {
          Navigator.pop(context);
        },
        foregroundColor: Colors.black,
        backgroundColor: Color.fromARGB(255, 243, 202, 215),
      ),
    );
  }
}
