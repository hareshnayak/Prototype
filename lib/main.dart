import 'package:flutter/material.dart';
import 'package:prototype/widget/navDrawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Kalakar(),
    );
  }
}

class Kalakar extends StatelessWidget {
//       GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text(
          "Kalakar",
          style: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.notifications), onPressed: () {})
        ],
      ),
//           key: _scaffoldKey,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 130,
                child: Center(
                  child: Text(
                    'Slider Corousel',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  image: new DecorationImage(
                      image: NetworkImage(
                          'https://i.ytimg.com/vi/ROKdFtHbEjw/maxresdefault.jpg'),
                      fit: BoxFit.cover),
                ),
                height: 70,
                child: FlatButton(
                  onPressed: () {},
                  splashColor: Colors.amber.shade500,
                  child: Text('Dance',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: new DecorationImage(
                        image: NetworkImage(
                            'https://wallpapercave.com/wp/PvKBonY.jpg'),
                        fit: BoxFit.cover),
                  ),
                  height: 70,
                  child: FlatButton(
                    onPressed: () {},
                    splashColor: Colors.amber.shade500,
                    child: Text('Instruments',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                  ),
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: new DecorationImage(
                      image: NetworkImage(
                          'https://ak.picdn.net/shutterstock/videos/33772630/thumb/1.jpg'),
                      fit: BoxFit.cover),
                ),
                height: 70,
                child: FlatButton(
                  onPressed: () {},
                  splashColor: Colors.amber.shade500,
                  child: Text('Singing',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 5.0), //(x,y)
                      blurRadius: 3.0,
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  image: new DecorationImage(
                      image: NetworkImage(
                          'https://i.pinimg.com/originals/4c/90/77/4c9077de75230074f427cc72b9cba8b7.jpg'),
                      fit: BoxFit.cover),
                ),
                height: 70,
                child: FlatButton(
                  onPressed: () {},
                  splashColor: Colors.amber.shade500,
                  child: Text('Yoga',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            //navigation bar starts
            SizedBox(height: 10),
            Padding(padding: EdgeInsets.fromLTRB(0,5,0,0),child: Container(
              height: 50,
              color: Colors.red,
              width: MediaQuery.of(context).size.width,
            ),),
            //navigation bar ends
          ],
        ),
      ),
    );
  }
}