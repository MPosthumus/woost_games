import 'package:flutter/material.dart';

class NextBlock extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NextBlockState();
}

class _NextBlockState extends State<NextBlock> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.black,
      ),
      width: double.infinity,
      padding: EdgeInsets.all(5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Next',
            style: TextStyle(
              color: Colors.yellow,
              fontWeight: FontWeight.bold
            )
          ),
          SizedBox(height: 5),
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              color: Colors.yellow,
            ),
          )
        ]
      )
    );
  }
}