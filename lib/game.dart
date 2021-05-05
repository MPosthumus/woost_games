import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:woost_games/block.dart';
import 'package:woost_games/blocks.dart';

const BLOCK_X = 10;
const BLOCK_Y = 20;
const REFRESH_RATE = 300;
const GAME_AREA_BORDER_WIDTH = 2;
const SUB_BLOCK_EDGE_WIDTH = 2;

class Game extends StatefulWidget {
  Game({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => GameState();
}

class GameState extends State<Game> {
  double subBlockWidth;
  Duration duration = Duration(milliseconds: REFRESH_RATE);

  GlobalKey _keyGameArea = GlobalKey();

  Block block;
  Timer timer;
  bool isPlaying = false;

  Block getNewBlock() {
    int blockType = Random().nextInt(7);
    int orientationIndex = Random().nextInt(4);

    switch (blockType) {
      case 0:
        return IBlock(orientationIndex);
      case 1:
        return JBlock(orientationIndex);
      case 2:
        return LBlock(orientationIndex);
      case 3:
        return TBlock(orientationIndex);
      case 4:
        return OBlock(orientationIndex);
      case 5:
        return SBlock(orientationIndex);
      case 6:
        return ZBlock(orientationIndex);
      default:
        return null;
    }
  }

  void startGame() {
    isPlaying = true;

    RenderBox renderBoxGame = _keyGameArea.currentContext.findRenderObject();
    subBlockWidth = (renderBoxGame.size.width - GAME_AREA_BORDER_WIDTH * 2) / BLOCK_X;

    block = getNewBlock();

    timer = Timer.periodic(duration, onPlay);
  }

  void endGame() {
    isPlaying = false;
  }

  void onPlay(Timer timer) {
    setState(() {
      block.move(BlockMovement.DOWN);
    });
  }

  Widget getPositionedSquareContainer(Color color, int x, int y) {
    return Positioned(
      left: x * subBlockWidth,
      top: y * subBlockWidth,
      child: Container(
        width: subBlockWidth - SUB_BLOCK_EDGE_WIDTH,
        height: subBlockWidth - SUB_BLOCK_EDGE_WIDTH,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8)
        ),
      )
    );
  }

  Widget drawBlocks() {
    if (block == null) return null;
    List<Positioned> subBlocks = [];

    block.subBlocks.forEach((subBlock) {
      subBlocks.add(getPositionedSquareContainer(subBlock.color, subBlock.x + subBlock.x, subBlock.y + subBlock.y));
    });

    return Stack(children: subBlocks);
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: BLOCK_X / BLOCK_Y,
      child: Container(
        key: _keyGameArea,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
            width: 2,
            color: Colors.black
          ),
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: drawBlocks(),
      )
    );
  }
}