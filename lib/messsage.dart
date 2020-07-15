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
      body: Text('Messages'),
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

//  Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
//    return ListView(
//      padding: const EdgeInsets.only(top: 20.0),
//      children: snapshot.map((data) => _buildListItem(context, data)).toList(),
//    );
//  }
//
//  Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
//    final record = Record.fromSnapshot(data);
//
//    return Padding(
//      padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
//      child: SizedBox(
//        child: Card(
//          child: InkWell(
//            splashColor: Colors.amber[300],
//            onTap: () {},
//            child: ListTile(
//              trailing: FloatingActionButton(
//                mini: true,
//                backgroundColor: Colors.blueGrey[900],
//                onPressed: () {
//                  String url = record.link;
//                  launch(url);
//                },
//                child: Icon(Icons.cloud_download, color: Colors.white),
//              ),
//              title: Text(record.heading),
//              subtitle: Text(
//                record.date,
//                style: TextStyle(fontSize: 10.0),
//              ),
//            ),
//          ),
//        ),
//      ),
//    );
//  }

}
