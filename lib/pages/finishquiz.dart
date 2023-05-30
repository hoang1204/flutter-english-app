import 'package:cnpmapp/global_provider.dart';
import 'package:cnpmapp/pages/topicquiz.dart';
import 'package:cnpmapp/services/remote_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Finish extends ConsumerWidget {
  final int scoreTopic;
  const Finish({
    Key? key,
    required this.scoreTopic,
  }) : super(key: key);

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
                  'assets/background3.jpg',
                  fit: BoxFit.fitHeight,
                  height: 781,
                ),
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Align(
                child: Text(
                  "Congratulation",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Text(
                "You got ${scoreTopic}/5 point",
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
              SizedBox(height: 40),
              TextButton.icon(
                onPressed: () async {
                  ref.read(listQuiz.notifier).loadData("Animal");
                  scoreCurrent += scoreTopic;
                  await updateScore(scoreCurrent);
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (_) => TopicQuiz()));
                },
                icon: Icon(Icons.arrow_back),
                label: Text(
                  "Back",
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
