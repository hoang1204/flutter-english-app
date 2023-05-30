import 'package:cnpmapp/global_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WordLearn extends ConsumerStatefulWidget {
  const WordLearn({Key? key}) : super(key: key);

  @override
  ConsumerState<WordLearn> createState() => _MultipleState();
}

class _MultipleState extends ConsumerState<WordLearn> {
  // final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  @override
  // void initState() {
  //   super.initState();
  //   audioPlayer.onPlayerStateChanged.listen((state) {
  //     setState(() {
  //       isPlaying = state == PlayerState.PLAYING;
  //     });
  //   });
  // }

  Future setAudio() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/background5.jpg',
                  fit: BoxFit.fitHeight,
                  height: 781,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: ref.watch(listWordLearn).length,
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
                            onPressed: () async {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text(
                                        ref.read(listWordLearn)[index].topic ??
                                            ''),
                                    content: Container(
                                      height: 420,
                                      child: SingleChildScrollView(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Word: " +
                                                  "${ref.read(listWordLearn)[index].word}",
                                              style: TextStyle(
                                                fontSize: 18,
                                              ),
                                            ),
                                            Text(
                                              "Vietnamese: " +
                                                  "${ref.read(listWordLearn)[index].vietnam}",
                                              style: TextStyle(
                                                fontSize: 18,
                                              ),
                                            ),
                                            Text(
                                              "Description: " +
                                                  "${ref.read(listWordLearn)[index].description}",
                                              style: TextStyle(
                                                fontSize: 18,
                                              ),
                                            ),
                                            Center(
                                              child: Image.network(ref
                                                  .read(listWordLearn)[index]
                                                  .urlImage),
                                            ),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Center(
                                              child: CircleAvatar(
                                                radius: 20,
                                                child: IconButton(
                                                  onPressed: () async {
                                                    // if (isPlaying) {
                                                    //   await audioPlayer.pause();
                                                    // } else {
                                                    //   String url =
                                                    //       'https://api.dictionaryapi.dev/media/pronunciations/en/a-1-us.mp3';
                                                    //   await audioPlayer.play(url);
                                                    // }
                                                    // print("OK");
                                                  },
                                                  icon: Icon(
                                                    isPlaying
                                                        ? Icons.pause
                                                        : Icons.play_arrow,
                                                  ),
                                                  iconSize: 20,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Image.network(
                                ref.read(listWordLearn)[index].urlImage),
                          ),
                        ),
                        Text(
                          ref.read(listWordLearn)[index].word,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    );
                  },
                ),
                // CircleAvatar(
                //   radius: 35,
                //   child: IconButton(
                //     onPressed: () async {
                //       if (isPlaying) {
                //         await audioPlayer.pause();
                //       } else {
                //         String url =
                //             'https://api.dictionaryapi.dev/media/pronunciations/en/a-1-us.mp3';
                //         await audioPlayer.play(url);
                //       }
                //       print("OK");
                //     },
                //     icon: Icon(
                //       isPlaying ? Icons.pause : Icons.play_arrow,
                //     ),
                //     iconSize: 35,
                //   ),
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
