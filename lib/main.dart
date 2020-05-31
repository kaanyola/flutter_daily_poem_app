import 'package:daily_poem_app/model/Siir.dart';
import 'package:flutter/material.dart';
import 'package:daily_poem_app/HomePage.dart';
import 'package:daily_poem_app/FavPage.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

List<String> lines = [
  "Öyle sevdim ki seni",
  "Öylesine sensin ki!",
  "Kuşlar gibi cıvıldar",
  "Tattırdığın acılar."
];
Siir siir1 = new Siir(
    name: "Park", poetName: "Cemal Süreya", lines: lines, favCount: 354);

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.pink),
      title: "Daily Poem App", home: _tabController(context),);
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
        backgroundColor: Colors.yellow,
        title: Center(child: Text("Daily Poem App", style: TextStyle(color: Colors.black),)),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Material(
          color: Colors.pink,
          child: TabBar(
            indicatorColor: Colors.lime,
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
          HomePage(siir1),
          FavPage(siir1),
        ],
      ),
    ),
  );
}
