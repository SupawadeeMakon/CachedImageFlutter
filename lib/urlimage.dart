import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:transparent_image/transparent_image.dart';

class Urlimage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _UrlimageState();
  }
}

class _UrlimageState extends State<Urlimage> {
  var titleString = 'Url Image Here';
  static String urlString = 'http://swiftcodingthai.com/ann/Friend0.JPG';
  var urlStrings = [
    'http://swiftcodingthai.com/ann/Friend0.JPG',
    'http://swiftcodingthai.com/ann/Friend1.JPG',
    'http://swiftcodingthai.com/ann/Friend2.JPG',
    'http://swiftcodingthai.com/ann/Friend3.JPG',
    'http://swiftcodingthai.com/ann/Friend4.JPG',
    'http://swiftcodingthai.com/ann/Friend5.JPG',
    'http://swiftcodingthai.com/ann/Friend6.JPG',
  ];

  int indexInt = 0;

  @override
  Widget build(BuildContext context) {
    CachedNetworkImage cachedNetworkImage = new CachedNetworkImage(
      height: 300.0,
      imageUrl: urlStrings[indexInt],
      placeholder: new CircularProgressIndicator(), //ตัวรอโหลด Progress dialog
    );

    return new Scaffold(
        appBar: new AppBar(
          title: new Text(titleString),
        ),
        body: new Container(
          child: new Column(
            children: <Widget>[
              new Center(
                child: cachedNetworkImage,
              ),
              new Container(
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new RaisedButton(
                        child: new Text('Back'),
                        onPressed: () {
                          setState(() {
                            indexInt = (indexInt <= 0) ? 6 : indexInt - 1;
                          });
                        },
                      ), //onPressed ถ้าเกิดมีการกฎ
                    ),
                    new Expanded(
                      child: new RaisedButton(
                        child: new Text('Next'),
                        onPressed: () {
                          setState(() {
                            indexInt = (indexInt >= urlStrings.length-1) ? 0 : indexInt + 1;
                          });
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
