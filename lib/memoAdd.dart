import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'memo.dart';

class MemoAddPage extends StatefulWidget {
  //const MemoAddPage({Key? key}) : super(key: key);
  final DatabaseReference reference;
  MemoAddPage(this.reference);

  @override
  _MemoAddPageState createState() => _MemoAddPageState();
}

class _MemoAddPageState extends State<MemoAddPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
