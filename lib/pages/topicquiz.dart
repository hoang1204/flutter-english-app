import 'package:cnpmapp/global_provider.dart';
import 'package:cnpmapp/pages/multiplechoice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TopicQuiz extends ConsumerStatefulWidget {
  const TopicQuiz({Key? key}) : super(key: key);

  @override
  ConsumerState<TopicQuiz> createState() => _MultipleState();
}

class _MultipleState extends ConsumerState<TopicQuiz> {
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
                            onPressed: () async {
                              ref.read(indexQuiz.state).state = 0;

                              ref
                                  .read(listQuiz.notifier)
                                  .loadData(textGridView[index]);
                              print(ref.read(listQuiz).length);
                              if (!ref.read(listQuiz).isEmpty)
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => Multiple()));
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
          )
        ],
      ),
    );
  }
}
