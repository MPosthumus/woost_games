import 'package:flutter/material.dart';

class ScoreBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ScoreBarState();
}

class _ScoreBarState extends State {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.yellow
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Score 0',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Neue Montreal'
              )
            ),
          )
        ]
      ),
    );
  }
}