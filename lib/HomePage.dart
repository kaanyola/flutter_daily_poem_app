import 'package:flutter/material.dart';

import 'model/Siir.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

List<String> lines = [
  "Öyle sevdim ki seni",
  "Öylesine sensin ki!",
  "Kuşlar gibi cıvıldar",
  "Tattırdığın acılar."
];
Siir siir1 = new Siir(
    name: "Park", poetName: "Cemal Süreya", lines: lines, favCount: 354);

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: siirCard(context),
    );
  }
}

Widget siirCard(BuildContext context) {
  return Container(
    color: Colors.amber,
    margin: EdgeInsets.all(10),
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(siir1.name),
            Text(siir1.poetName),
          ],
        ),
        Align(
          child: Container(
            margin: EdgeInsets.all(10),
            height: 300,
            color: Colors.cyan,
            child: ListView.builder(
                itemCount: siir1.lines.length,
                itemBuilder: (context, int index) {
                  return Text(
                    siir1.lines[index],
                    style: TextStyle(fontSize: 29),
                  );
                }),
          ),
        ),
        Row(
          children: <Widget>[
            Text("${siir1.favCount}"),
            Icon(Icons.favorite)
          ],
        )
      ],
    ),
  );
}
