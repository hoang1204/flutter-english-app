import 'package:cnpmapp/global_provider.dart';
import 'package:cnpmapp/pages/wordlearn.dart';
import 'package:cnpmapp/services/remote_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WordTopic extends ConsumerStatefulWidget {
  const WordTopic({Key? key}) : super(key: key);

  @override
  ConsumerState<WordTopic> createState() => _MultipleState();
}

class _MultipleState extends ConsumerState<WordTopic> {
  //final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  // @override
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
                SizedBox(
                  height: 30,
                ),

                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: imageTopic.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 4.0,
                    crossAxisSpacing: 4.0,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            Container(
                              color: Color.fromARGB(255, 207, 201, 118),
                              height: 60,
                              width: 300,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child: Container(
                                height: 60,
                                width: 230,
                                color: Colors.blue,
                                child: Center(
                                  child: Text(
                                    textTopic[index],
                                    style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        //Expanded(child: gridView[index]),
                        Expanded(
                          child: TextButton(
                            onPressed: () async {
                              await ref
                                  .read(listWordLearn.notifier)
                                  .loadData(textTopic[index]);

                              ref.read(listWordLearn.notifier).Sort();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => WordLearn()));
                            },
                            child: imageTopic[index],
                          ),
                        ),
                        SizedBox(
                          height: 15,
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
