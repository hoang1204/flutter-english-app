import 'dart:io';

import 'package:cnpmapp/models/newword.dart';
import 'package:cnpmapp/models/post.dart';
import 'package:cnpmapp/models/quiz.dart';
import 'package:cnpmapp/models/wordlearn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'models/account.dart';

final stateContact = StateProvider((ref) => 0);

final listNewWord = StateNotifierProvider<saveNewWord, List<NewWord>>((_) {
  return saveNewWord(null);
});

final listWords = StateNotifierProvider<actionWord, List<Word>>((_) {
  return actionWord(null);
});
final listTempWords = StateNotifierProvider<tempWord, List<Word>>((_) {
  return tempWord(null);
});
File? temp;

final listAccounts = StateNotifierProvider<actionAccount, List<Account>>((_) {
  return actionAccount(null);
});

final listQuiz = StateNotifierProvider<actionQuiz, List<Quiz>>((_) {
  return actionQuiz([]);
});

final listWordLearn =
    StateNotifierProvider<actionWordLearn, List<WordLearn>>((_) {
  return actionWordLearn([]);
});

final stateAccount = StateProvider((ref) => '');
final indexQuiz = StateProvider((ref) => 0);
String accountCurrent = '';
int scoreCurrent = 0;
int idCurrent = 0;
// final adminUser = 'admin';
// final passWord = '123456';
List<Image> gridView = [
  Image.asset('assets/images/gridview1.jpg'),
  Image.asset('assets/images/gridview2.jpg'),
  Image.asset('assets/images/gridview3.jpg'),
  Image.asset('assets/images/gridview4.jpg'),
  Image.asset('assets/images/gridview5.jpg'),
  Image.asset('assets/images/gridview6.jpg'),
];

List<String> textGridView = [
  "Animal",
  "Car",
  "Room",
  "Tree",
  "People",
  "Work",
];
List<Image> imageTopic = [
  Image.asset(
    'assets/images/imageTopic1.jpg',
    height: 300,
    width: 500,
    fit: BoxFit.fill,
  ),
  Image.asset(
    'assets/images/imageTopic2.jpg',
    fit: BoxFit.fill,
    width: 500,
    height: 300,
  ),
  Image.asset(
    'assets/images/imageTopic3.jpg',
    fit: BoxFit.fill,
    width: 500,
    height: 300,
  ),
  Image.asset(
    'assets/images/imageTopic4.jpg',
    fit: BoxFit.fill,
    height: 300,
    width: 500,
  ),
  Image.asset(
    'assets/images/imageTopic5.jpg',
    fit: BoxFit.fill,
    height: 300,
    width: 500,
  ),
];

List<String> textTopic = [
  "Alphabet",
  "Fruits",
  "Animals",
  "Body",
  "National flag",
];
