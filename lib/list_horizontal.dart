import 'package:flutter/material.dart';

class Listhorizontal extends StatelessWidget {
  String img, title, subtitle;

  Listhorizontal(this.img, this.title, this.subtitle);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(224, 64, 251, 1),
          width: 2,
        ),
      ),
      width: 450,
      height: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Image.network(img),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10.0),
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            color: Color.fromRGBO(224, 64, 251, 1),
            width: double.infinity,
            padding: EdgeInsets.all(10.0),
            child: Text(
              subtitle,
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}
