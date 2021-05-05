import 'package:flutter/material.dart';

class SubBlock {
  int x;
  int y;
  Color color;
  SubBlock(int x, int y, [color = Colors.transparent]) {
    this.x = x;
    this.y = y;
    this.color = color;
  }
}