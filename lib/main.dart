import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));

}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void showURL(){
    lunch('http://www.google.com');

  }

  void showEmail(){
    lunch('mailto:sndasnsu@gmail.com');
  }

  void showTelephone(){
    lunch('tel: 017834584...');
  }

  void showSMS(){
 lunch('sms: 017834584...');
  }

   void lunch(String urlString) async{
    if(await canLaunch(urlString)){
      await lunch(urlString);
    } else{
      throw 'Could not lunch URL';
    }
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Name'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new RaisedButton(onPressed: showURL , child: Text('URL'),),
              new RaisedButton(onPressed: showEmail , child: Text('Email'),),
              new RaisedButton(onPressed: showSMS , child: Text('SMS'),),
              new RaisedButton(onPressed: showTelephone , child: Text('Telephone'),),
            ],
          ),
        ),
      ),
    );
  }
}
