import 'package:flutter/material.dart';

import '../models/models.dart';

class DetailPage extends StatelessWidget {

  final User user;

  DetailPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              padding: EdgeInsets.only(top: 10.0, bottom: 30.0),
              child: new Center(
                child: new Image.network(
                  user.picture,
                  fit: BoxFit.contain,
                  width: 100.0,
                  height: 100.0,
                ),
              ),
              decoration: new BoxDecoration(
                border: Border.all(width: 2.0, color: Colors.white),
                borderRadius: BorderRadius.circular(5.0)
              ),
            ),
            new Text(
              user.name,
              style: new TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            new Text(
              user.email,
              style: new TextStyle(
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            new Container(
              padding: EdgeInsets.only(top:10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    "About User",
                    style: new TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  new Text(
                    user.about,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}