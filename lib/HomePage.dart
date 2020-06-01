import 'package:daily_poem_app/model/FavSiirler.dart';
import 'package:flutter/material.dart';

import 'model/Siir.dart';

class HomePage extends StatefulWidget {
  Siir siirMonitored;
  HomePage(this.siirMonitored);
  FavSiirler favSiirler = FavSiirler();

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
      color: Colors.black.withOpacity(0.4),
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              Text(widget.siirMonitored.poetName,
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
                Text(widget.siirMonitored.name,
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.w900)),
              ],
            ),
          ),
          Flexible(
            flex: 100,
            child: ListView.builder(
                itemCount: widget.siirMonitored.lines.length,
                itemBuilder: (context, int index) {
                  return Align(
                    alignment: Alignment.center,
                    child: Text(
                      widget.siirMonitored.lines[index],
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  );
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                "${widget.siirMonitored.favCount}",
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
                children: <Widget>[butonSec(), iconSec()],
              ),
            ),
            onPressed: () {
              setState(() {
                if (widget.favSiirler.favoriSiirler.contains(widget.siirMonitored)) {
                  widget.favSiirler.favoriSiirler.remove(widget.siirMonitored);
                  widget.siirMonitored.favCount--;
                }
                else{
                  widget.favSiirler.favoriSiirler.add(widget.siirMonitored);
                  widget.siirMonitored.favCount++;
                }
              });
            },
          )
        ],
      ),
    );
  }

  Widget butonSec() {
    if (widget.favSiirler.favoriSiirler.contains(widget.siirMonitored)) {
      return Text("Favoriden Çıkart", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),);
    } else {
      return Text("Favorilere Ekle",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14));
    }
  }

  Widget iconSec(){
    if (widget.favSiirler.favoriSiirler.contains(widget.siirMonitored)) {
      return Icon(Icons.remove, size: 14);
    } else {
      return Icon(Icons.favorite_border, size: 14,);
    }
  }
}
