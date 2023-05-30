import 'dart:convert';

import 'package:cnpmapp/global_provider.dart';
import 'package:cnpmapp/models/account.dart';
import 'package:cnpmapp/models/newword.dart';
import 'package:cnpmapp/models/post.dart';
import 'package:cnpmapp/models/quiz.dart';
import 'package:cnpmapp/models/wordlearn.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<List<Word>?> getPosts(String word) async {
    var client = http.Client();
    var uri =
        Uri.parse('https://api.dictionaryapi.dev/api/v2/entries/en/$word');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return wordFromJson(json);
    } else if (response.statusCode == 404) {
      return [];
    } else {
      return [];
    }
  }
}

Future<bool> checkLogin(String user, String password) async {
  var url = Uri.parse("http://192.168.0.106/localconnect/login.php");
  var response = await http.post(url, body: {
    "username": user,
    "password": password,
  });
  var data = json.decode(response.body);
  print(data);
  if (data == "ok") {
    return true;
  } else
    return false;
}

Future<bool> checkRegister(
    String user, String password, String repassword) async {
  var url = Uri.parse("http://192.168.0.106/localconnect/register.php");
  var response = await http.post(url, body: {
    "username": user,
    "password": password,
  });
  var data = json.decode(response.body);
  print(data);
  if (data == "DANG KI THANH CONG") {
    return true;
  } else
    return false;
}

Future<List<Account>> getDataAccount() async {
  var url = Uri.parse("http://192.168.0.106/localconnect/account.php");
  var response = await http.post(url);
  //var data = json.decode(response.body);
  var data = response.body;
  print("Alo");
  return AccountFromJson(data);
}

Future<bool> deleteDataAccount(String id) async {
  var url = Uri.parse("http://192.168.0.106/localconnect/deleteAccount.php");
  var response = await http.post(url, body: {
    "ID": id,
  });
  //var data = json.decode(response.body);
  return true;
}

Future<int> getoneAccount() async {
  var url = Uri.parse("http://192.168.0.106/localconnect/loadaAccount.php");
  var response = await http.post(url, body: {
    "username": accountCurrent,
  });
  //var data = json.decode(response.body);
  var data = response.body;
  List<Account> temp = AccountFromJson(data);
  return int.parse(temp[0].score ?? '0');
}

Future<List<Quiz>> getDataQuiz(String qTopic) async {
  var url = Uri.parse("http://192.168.0.106/localconnect/loadquiz.php");
  var response = await http.post(url, body: {
    "qTopic": qTopic,
  });
  var data = response.body;
  print(QuizFromJson(data));
  return QuizFromJson(data);
}

Future<void> updateScore(int score) async {
  var url = Uri.parse("http://192.168.0.106/localconnect/updateScore.php");
  var response = await http.post(url, body: {
    "username": accountCurrent,
    "score": "${score}",
  });
  print(accountCurrent);
  print("${score}");
  //var data = json.decode(response.body);
}

Future<int> getidAccount() async {
  var url = Uri.parse("http://192.168.0.106/localconnect/loadaAccount.php");
  var response = await http.post(url, body: {
    "username": accountCurrent,
  });
  //var data = json.decode(response.body);
  var data = response.body;
  List<Account> temp = AccountFromJson(data);
  return int.parse(temp[0].id ?? '0');
}

Future<void> saveWord(String word, String? definition, String? vietnam,
    String? example, String? imagePath) async {
  var url = Uri.parse("http://192.168.0.106/localconnect/savenewwords.php");
  var response = await http.post(url, body: {
    "id": "${idCurrent}",
    "word": word,
    "definition": definition ?? '',
    "vietnam": vietnam ?? '',
    "example": example ?? '',
    "imagePath": imagePath ?? '',
  });
  print(idCurrent);
  //var data = json.decode(response.body);
}

Future<List<NewWord>> getDataNewWords() async {
  var url = Uri.parse("http://192.168.0.106/localconnect/loadnewwords.php");
  var response = await http.post(url, body: {
    "id": "${idCurrent}",
  });
  //var data = json.decode(response.body);
  var data = response.body;
  print(newWordFromJson(data));
  return newWordFromJson(data);
}

Future<void> addQuiz(String content, String topic, String answer, String a,
    String b, String c, String d) async {
  var url = Uri.parse("http://192.168.0.106/localconnect/addQuiz.php");
  var response = await http.post(url, body: {
    "topic": topic,
    "content": content,
    "answer": answer,
    "A": a,
    "B": b,
    "C": c,
    "D": d,
  });
  // print(idCurrent);
  //var data = json.decode(response.body);
}

Future<void> resetRank() async {
  var url = Uri.parse("http://192.168.0.106/localconnect/resetRank.php");
  var response = await http.post(url, body: {});
  //var data = json.decode(response.body);
}

Future<List<WordLearn>> getDataWordLearn(String topic) async {
  var url = Uri.parse("http://192.168.0.106/localconnect/loadwordlearn.php");
  var response = await http.post(url, body: {
    "topic": "${topic}",
  });
  //var data = json.decode(response.body);
  var data = response.body;
  print(WordLearnFromJson(data));
  return WordLearnFromJson(data);
}

Future<void> updateAccount(String id, String username, String passWord) async {
  var url = Uri.parse("http://192.168.0.106/localconnect/updateAccount.php");
  var response = await http.post(url, body: {
    "username": username,
    "passWord": passWord,
    "id": id,
  });
  //var data = json.decode(response.body);
}
