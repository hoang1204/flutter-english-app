import 'package:cnpmapp/adminpages/addmulti.dart';
import 'package:cnpmapp/adminpages/adminRanking.dart';
import 'package:cnpmapp/adminpages/usermanager.dart';
import 'package:flutter/material.dart';

class Manager extends StatelessWidget {
  const Manager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ADMIN MANAGER"),
      ),
      body: Align(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => UserManager()));
                },
                child: Text('User manager'),
              ),
            ),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Topic manager'),
              ),
            ),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => AdminRanking()));
                },
                child: Text('Ranking'),
              ),
            ),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => AddQuiz()));
                },
                child: Text('Add Quiz'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
