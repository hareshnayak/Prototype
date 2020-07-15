import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Box',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Messages(title: 'ChatBox'),
    );
  }
}

class Messages extends StatefulWidget {
  Messages({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {

  TextEditingController sendMessageController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _loadMessages(context),
      bottomNavigationBar: TextField(
          decoration: InputDecoration(
            hintText: 'Type Message',
            suffix: FloatingActionButton(
              onPressed: (){

              },
              child: Icon(Icons.send),
              mini: true,
              heroTag: 'sendMessageBtn',
              ),
            ),
          controller: sendMessageController,
        ),
    );
  }



}
