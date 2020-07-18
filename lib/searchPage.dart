import 'package:flutter/material.dart';
import 'package:prototype/widget/navDrawer.dart';
class SearchActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        hoverColor: Colors.transparent,
//         splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SearchPage(),
    );
  }
}

class SearchPage extends StatelessWidget {
//       GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        elevation: 0,
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
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 80,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                  child: Container(
                    color: Colors.red,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Positioned(
                  top: 5,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(25.0),
                          border: Border.all(
                              color: Colors.grey.withOpacity(0.4), width: 1.0),
                          color: Colors.white),
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search",
                                enabledBorder: new UnderlineInputBorder(
                                  borderSide:
                                  new BorderSide(color: Colors.transparent),
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.search,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              print("your menu action here");
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 130,
              child: Center(
                child: Row(
                  children: <Widget>[],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}