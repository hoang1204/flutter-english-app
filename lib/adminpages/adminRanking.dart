import 'package:cnpmapp/services/remote_service.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';

import '../global_provider.dart';

class AdminRanking extends ConsumerStatefulWidget {
  const AdminRanking({Key? key}) : super(key: key);

  @override
  ConsumerState<AdminRanking> createState() => _RankingState();
}

class _RankingState extends ConsumerState<AdminRanking> {
  @override
  void initState() {
    super.initState();
    ref.read(listAccounts.notifier).sortRank();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  // SizedBox(
                  //   height: 120,
                  // ),
                  Image.asset(
                    'assets/backgroundranking.jpg',
                    fit: BoxFit.fitHeight,
                    height: 781,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 260,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 17,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Color.fromARGB(255, 208, 220, 255),
                      ),
                      width: 360,
                      height: 387,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Align(
                  child: Container(
                    width: 220,
                    height: 220,
                    child: Lottie.asset('assets/ranking.json'),
                  ),
                ),
                Container(
                  width: 189,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Center(
                    child: Text(
                      "RANKING",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  child: Card(
                    color: Colors.purple,
                    child: ListTile(
                      leading: Image.asset(
                        "assets/goldtrophy.png",
                        width: 30,
                        height: 30,
                      ),
                      title: Text(
                        "${ref.watch(listAccounts)[0].username}",
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Text(
                        "${ref.watch(listAccounts)[0].score}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 350,
                  child: Card(
                    color: Colors.purple,
                    child: ListTile(
                      leading: Image.asset(
                        "assets/silvertrophy.png",
                        width: 30,
                        height: 30,
                      ),
                      title: Text(
                        "${ref.watch(listAccounts)[1].username ?? "..."}",
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Text(
                        "${ref.watch(listAccounts)[1].score ?? "..."}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 350,
                  child: Card(
                    color: Colors.purple,
                    child: ListTile(
                      leading: Image.asset(
                        "assets/bronzetrophy.png",
                        width: 30,
                        height: 30,
                      ),
                      title: Text(
                        "${ref.watch(listAccounts).length - 1 >= 2 ? ref.watch(listAccounts)[2].username : "..."}",
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Text(
                        "${ref.watch(listAccounts).length - 1 >= 2 ? ref.watch(listAccounts)[2].score : "..."}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 350,
                  child: Card(
                    color: Colors.purple,
                    child: ListTile(
                      leading: Text(
                        "4",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        "${ref.watch(listAccounts).length - 1 >= 3 ? ref.watch(listAccounts)[3].username : "..."}",
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Text(
                        "${ref.watch(listAccounts).length - 1 >= 3 ? ref.watch(listAccounts)[3].score : "..."}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 350,
                  child: Card(
                    color: Colors.purple,
                    child: ListTile(
                      leading: Text(
                        "5",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        "${ref.watch(listAccounts).length - 1 >= 4 ? ref.watch(listAccounts)[4].username : "..."}",
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Text(
                        "${ref.watch(listAccounts).length - 1 >= 4 ? ref.watch(listAccounts)[4].score : "..."}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Lottie.asset("assets/line.json"),
                    Center(
                      child: TextButton(
                       // color: Colors.red,
                        onPressed: () async {
                          await resetRank();
                          ref.read(listAccounts.notifier).loadData();
                        },
                        child: Text(
                          "RESET RANK",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
