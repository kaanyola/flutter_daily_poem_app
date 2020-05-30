import 'package:flutter/material.dart';
import 'package:daily_poem_app/HomePage.dart';
import 'package:daily_poem_app/FavPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Daily Poem App", home: _tabController(context));
  }
}

Color color1;
Color color2;

DefaultTabController _tabController(BuildContext context) {
  color1 = Theme.of(context).primaryColor;
  color2 = Theme.of(context).bottomAppBarColor;
  return DefaultTabController(
    length: 2,
    child: Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Daily Poem App")),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Material(
          color: color1,
          child: TabBar(
            indicatorColor: color2,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.favorite),
              )
            ],
          ),
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          HomePage(),
          FavPage(),
        ],
      ),
    ),
  );
}
