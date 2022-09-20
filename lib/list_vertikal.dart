import 'package:flutter/material.dart';

class Listvertikal extends StatelessWidget {
  String img, name, date;

  Listvertikal(this.img, this.name, this.date);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(119, 144, 155, 1),
          width: 2,
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromRGBO(119, 144, 155, 1),
                width: 2,
              ),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Image.network(
                    img,
                  ),
                ),
                Expanded(
                  child: Text(name),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10.0),
            child: Text(date, textAlign: TextAlign.start),
          ),
        ],
      ),
    );
  }
}
