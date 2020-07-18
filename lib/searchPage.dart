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

class SearchPage extends StatefulWidget {
//       GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  SearchPage({Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String dropdownValue = 'One';

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
                        height:60,
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
              height: 80,
//               decoration: BoxDecoration(
//                 border: Border.all(),
//               ),
              child: Center(
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        child: Filter(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        child: Sortby(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
               for (int j = 0; j < 3; j++)
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                child: Container(
                  child: Card(
                    child: ListTile(
                      title: Text('XYZ Academy'),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://wallpapercave.com/wp/PvKBonY.jpg'),
                      ),
                      subtitle: Row(
                        children: <Widget>[
                          for (int i = 0;
                              i < ((j == 1) ? 3 : ((j == 2) ? 4 : 5));
                              i++)
                            Icon(Icons.star, color: Colors.amber),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class Sortby extends StatefulWidget {
  @override
  _Sortby createState() => _Sortby();
}

class _Sortby extends State<Sortby> {
  String dropdownValue = 'Sort By';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        DropdownButton<String>(
          value: dropdownValue,
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: <String>['Sort By', 'Fees', 'Reviews']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text("$value"),
              ),
            );
          }).toList(),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Icon(Icons.sort),
        ),
      ],
    );
  }
}

class Filter extends StatefulWidget {
  @override
  _Filter createState() => _Filter();
}

class _Filter extends State<Filter> {
  String dropdownValue = 'Filter';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        DropdownButton<String>(
          value: dropdownValue,
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: <String>['Filter', 'Full','Week']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text("$value"),
              ),
            );
          }).toList(),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Icon(Icons.filter_list),
        ),
      ],
    );
  }
}
