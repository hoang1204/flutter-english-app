import 'package:cnpmapp/adminpages/updateUser.dart';
import 'package:cnpmapp/global_provider.dart';
import 'package:flutter/material.dart';
import 'package:cnpmapp/services/remote_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../pages/signuppage.dart';

class UserManager extends ConsumerStatefulWidget {
  const UserManager({Key? key}) : super(key: key);

  @override
  ConsumerState<UserManager> createState() => _UserManagerState();
}

class _UserManagerState extends ConsumerState<UserManager> {
  @override
  void initState() {
    super.initState();
    ref.read(listAccounts.notifier).loadData();
  }

  @override
  Widget build(BuildContext context) {
    int dem = 1;
    return Scaffold(
      appBar: AppBar(
        title: Text("ADMIN MANAGER"),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          TextButton.icon(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => SignUp()));
            },
            icon: Icon(Icons.add),
            label: Text("Add user"),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: ref.watch(listAccounts).length,
              itemBuilder: ((context, index) {
                final item = ref.watch(listAccounts)[index];
                return Card(
                  child: ListTile(
                    leading: Text("STT = ${dem++}"),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Username: ${item.username}"),
                        Text("Password: ${item.password}"),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => UpdateUser(
                                  id: item.id ?? '',
                                  user: item.username ?? '',
                                  passWord: item.password ?? '')));
                    },
                    trailing: IconButton(
                        onPressed: () {
                          if (item.id == "1") {
                            Fluttertoast.showToast(
                              msg: "Can't delete admin account",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 20,
                            );
                          } else {
                            Fluttertoast.showToast(
                              msg: "Delete successful",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.blue,
                              textColor: Colors.white,
                              fontSize: 20,
                            );
                            deleteDataAccount(item.id ?? '');
                            ref.read(listAccounts.notifier).delAccount(item);
                          }
                        },
                        icon: Icon(Icons.delete)),
                  ),
                );
              })),
        ],
      )),
    );
  }
}
