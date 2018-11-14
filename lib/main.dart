import 'package:flutter/material.dart';
import 'urlimage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var titleString = 'Cache Image Form Internet';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: titleString,
      home: new Scaffold(
       /* appBar: new AppBar(
          title: new Text(titleString),
        ),*///เอาออกเนื่องจากมันจะได้ไม่ซ้อนหน้ากัน
        body: new Urlimage()
      ),
    );
  }
}
