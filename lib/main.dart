import 'package:flutter/material.dart';

void main() {
  runApp(HelloWorldApp());
}

class HelloWorldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title:  Text(
            'Hello world',
            textDirection: TextDirection.ltr,
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: [
              HelloWordBox(),
              Expanded(
                child: Row(
                  children: [
                    HelloWordBox(),
                    HelloWordBox(),
                    HelloWordBox(),
                    HelloWordBox(),
                  ],
                ),
              ),
              HelloWordBox(),
              HelloWordBox(),
            ],
          ),
        ),
      ),
    );
  }
}

class HelloWordBox extends StatelessWidget {
  const HelloWordBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 200,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.black26,
        ),
        alignment: Alignment.center,
        margin: EdgeInsets.all(20),
        child: Text(
          'Hello world',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
