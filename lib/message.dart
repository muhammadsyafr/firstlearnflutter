import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Message();
  }
}

class _Message extends State<Message> {
  String gfriend = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Message'),
        backgroundColor: Colors.red[200],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String input) {
                setState(() {
                  gfriend = input;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text('Your girlfriend is $gfriend'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          setState(() {
            gfriend = 'Alvina';
          });
        },
        child: Icon(Icons.bookmark),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
