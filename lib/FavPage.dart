import 'package:daily_poem_app/model/Siir.dart';
import 'package:flutter/material.dart';

class FavPage extends StatefulWidget {
  List<Siir> favPoems;
  Siir sendedPoem;
  FavPage(this.sendedPoem);

  @override
  _FavPageState createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.yellow, Colors.pink])),
      child: ListView.builder(
          itemCount: 12,
          itemBuilder: (context, int index) {
            return Container(
              decoration: BoxDecoration(border: Border.all()),
              child: ListTile(
                title: Text(
                  "Şiirin İsmi",
                  style: TextStyle(fontSize: 22),
                ),
                subtitle: Text(
                  "Şairin İsmi",
                  style: TextStyle(fontSize: 16),
                ),
                leading: CircleAvatar(
                  child: Text("A"),
                ),
                trailing: RaisedButton(
                  child: Icon(Icons.warning),
                  onPressed: () {},
                ),
              ),
            );
          }),
    );
  }
}
