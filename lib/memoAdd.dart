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
  TextEditingController? titleController;
  TextEditingController? contentController;

  @override
  void initState(){
    super.initState();
    titleController = TextEditingController();
    contentController = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('메모추가'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  labelText: '제목', fillColor: Colors.blueAccent
                ),
              ),
              Expanded(
                  child: TextField(
                    controller: contentController,
                    keyboardType: TextInputType.multiline,
                    maxLines: 100,
                    decoration: InputDecoration(
                      labelText: '내용'
                    ),
                  ),
              ),
              MaterialButton(
                  onPressed: (){
                    widget.reference
                        .push()
                        .set(value)

                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}
