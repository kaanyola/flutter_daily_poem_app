import 'package:flutter/material.dart';
import 'package:daily_poem_app/HomePage.dart';
import 'package:daily_poem_app/FavPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Daily Poem App",
      home: _tabController()
    );
  }
}

DefaultTabController _tabController() {
  return DefaultTabController(
    length: 2,
    child: Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Daily Poem App")),
        bottom: TabBar(
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
      body: TabBarView(
        children: <Widget>[
          HomePage(),
          FavPage(),
        ],
      ),
    ),
  );
}
