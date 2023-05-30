// To parse this JSON data, do
//
//     final account = accountFromJson(jsonString);

import 'package:cnpmapp/services/remote_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:flutter/foundation.dart';

part 'account.freezed.dart';
part 'account.g.dart';

List<Account> AccountFromJson(String str) =>
    List<Account>.from(json.decode(str).map((x) => Account.fromJson(x)));

String accountToJson(Account data) => json.encode(data.toJson());

@freezed
abstract class Account with _$Account {
  const factory Account({
    String? id,
    String? username,
    String? password,
    String? score,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}

class actionAccount extends StateNotifier<List<Account>> {
  actionAccount(List<Account>? state) : super(state ?? []);
  Future<void> loadData() async {
    state = await getDataAccount();
  }

  void delAccount(Account) {
    state = state.where((info) => info.id != Account.id).toList();
  }

  void sortRank() {
    state.sort(
        ((a, b) => int.parse(b.score!).compareTo(int.parse(a.score ?? '0'))));
    print("SORT");
  }
}
//https://app.quicktype.io/