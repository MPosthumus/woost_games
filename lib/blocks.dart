import 'package:flutter/material.dart';
import 'package:woost_games/block.dart';
import 'package:woost_games/sub_block.dart';

class IBlock extends Block {
  IBlock(int orientationIndex)
    : super([
      [SubBlock(0, 0), SubBlock(0, 1), SubBlock(0, 2), SubBlock(0, 3)],
      [SubBlock(0, 0), SubBlock(1, 0), SubBlock(2, 0), SubBlock(3, 0)],
      [SubBlock(0, 0), SubBlock(0, 1), SubBlock(0, 2), SubBlock(0, 3)],
      [SubBlock(0, 0), SubBlock(1, 0), SubBlock(2, 0), SubBlock(3, 0)],
    ], Colors.red, orientationIndex);
}

class JBlock extends Block {
  JBlock(int orientationIndex)
    : super([
      [SubBlock(1, 0), SubBlock(1, 1), SubBlock(1, 2), SubBlock(0, 2)],
      [SubBlock(0, 0), SubBlock(0, 1), SubBlock(1, 1), SubBlock(2, 1)],
      [SubBlock(0, 0), SubBlock(1, 0), SubBlock(0, 1), SubBlock(0, 2)],
      [SubBlock(0, 0), SubBlock(1, 0), SubBlock(2, 0), SubBlock(2, 1)],
    ], Colors.blue, orientationIndex);
}

class LBlock extends Block {
  LBlock(int orientationIndex)
    : super([
      [SubBlock(0, 0), SubBlock(0, 1), SubBlock(0, 2), SubBlock(1, 2)],
      [SubBlock(0, 0), SubBlock(1, 0), SubBlock(2, 0), SubBlock(0, 1)],
      [SubBlock(0, 0), SubBlock(1, 0), SubBlock(1, 1), SubBlock(1, 2)],
      [SubBlock(2, 0), SubBlock(0, 1), SubBlock(1, 1), SubBlock(2, 1)],
    ], Colors.green, orientationIndex);
}

class OBlock extends Block {
  OBlock(int orientationIndex)
    : super([
      [SubBlock(0, 0), SubBlock(1, 0), SubBlock(0, 1), SubBlock(1, 1)],
      [SubBlock(0, 0), SubBlock(1, 0), SubBlock(0, 1), SubBlock(1, 1)],
      [SubBlock(0, 0), SubBlock(1, 0), SubBlock(0, 1), SubBlock(1, 1)],
      [SubBlock(0, 0), SubBlock(1, 0), SubBlock(0, 1), SubBlock(1, 1)],
    ], Colors.orange, orientationIndex);
}

class TBlock extends Block {
  TBlock(int orientationIndex)
    : super([
      [SubBlock(0, 0), SubBlock(1, 0), SubBlock(2, 0), SubBlock(1, 1)],
      [SubBlock(1, 0), SubBlock(0, 1), SubBlock(1, 1), SubBlock(1, 2)],
      [SubBlock(1, 0), SubBlock(0, 1), SubBlock(1, 1), SubBlock(2, 1)],
      [SubBlock(0, 0), SubBlock(0, 1), SubBlock(1, 1), SubBlock(0, 1)],
    ], Colors.purple, orientationIndex);
}

class SBlock extends Block {
  SBlock(int orientationIndex)
    : super([
      [SubBlock(0, 0), SubBlock(2, 0), SubBlock(0, 1), SubBlock(1, 1)],
      [SubBlock(1, 0), SubBlock(0, 1), SubBlock(1, 1), SubBlock(1, 2)],
      [SubBlock(0, 0), SubBlock(2, 0), SubBlock(0, 1), SubBlock(1, 1)],
      [SubBlock(1, 0), SubBlock(0, 1), SubBlock(1, 1), SubBlock(1, 2)],
    ], Colors.white, orientationIndex);
}

class ZBlock extends Block {
  ZBlock(int orientationIndex)
    : super([
      [SubBlock(0, 0), SubBlock(1, 0), SubBlock(1, 1), SubBlock(2, 1)],
      [SubBlock(1, 0), SubBlock(0, 1), SubBlock(1, 1), SubBlock(0, 2)],
      [SubBlock(0, 0), SubBlock(1, 1), SubBlock(1, 1), SubBlock(2, 1)],
      [SubBlock(1, 0), SubBlock(0, 1), SubBlock(1, 1), SubBlock(0, 2)],
    ], Colors.pink, orientationIndex);
}