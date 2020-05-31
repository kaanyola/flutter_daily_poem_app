import 'package:flutter/material.dart';

import 'model/Siir.dart';

class HomePage extends StatefulWidget {
  Siir siir1;
  HomePage(this.siir1);

  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.pink, Colors.yellow])),
      child: siirCard(context),
    );
  }

  Widget siirCard(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(5),
    color: Colors.black.withOpacity(0.5),
    margin: EdgeInsets.all(30),
    child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Text(widget.siir1.poetName,
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1,
                    fontSize: 20,
                    fontStyle: FontStyle.italic)),
          ],
        ),
        Container(
          margin: EdgeInsets.only(bottom: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(widget.siir1.name,
                  style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.w900)),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: widget.siir1.lines.length,
              itemBuilder: (context, int index) {
                return Align(
                  alignment: Alignment.center,
                  child: Text(
                    widget.siir1.lines[index],
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,),
                  ),
                );
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              "${widget.siir1.favCount}",
              style: TextStyle(color: Colors.white),
            ),
            Icon(
              Icons.favorite,
              color: Colors.white,
            )
          ],
        ),
        Spacer(),
        RaisedButton(
          child: Container(
            width: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Favorilere Ekle"),
                Icon(Icons.favorite_border)
              ],
            ),
          ),
          onPressed: (){},
        )
      ],
    ),
  );
}

}

