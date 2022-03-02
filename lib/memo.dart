import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';

class Memo {
  String? key;
  String title;
  String content;
  String createTime;

  Memo(this.title, this.content, this.createTime);

  Memo.fromSnapShot(DataSnapshot snapshot)
      : key = snapshot.key,
        title = (snapshot.value as dynamic)['title'],
        content = (snapshot.value as dynamic)['content'],
        createTime = (snapshot.value as dynamic)['createTime'];
  toJson(){
    return{
      'title': title,
      'content': content,
      'createTime': createTime
    };
  }
}
