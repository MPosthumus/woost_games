import 'package:flutter/material.dart';
import 'package:woost_games/game.dart';
import 'package:woost_games/next_block.dart';
import 'package:woost_games/score_bar.dart';

void main() => runApp(WoostGames());

class WoostGames extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Tetris());
  }
}

class Tetris extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TetrisState();
}

class _TetrisState extends State<Tetris> {
  GlobalKey<GameState> _keyGame = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Woost Tetris',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Neue Montreal',
            fontSize: 25,
            fontWeight: FontWeight.w700
          )
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      backgroundColor: Colors.yellow,
      body: SafeArea(
        child: Column(children: <Widget>[
          ScoreBar(),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Flexible(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 2.5, 5),
                    child: Game(key: _keyGame),
                  )
                ),Flexible(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(2.5, 0, 5, 5),
                    child: Column(
                      children: <Widget>[
                        NextBlock(),
                        SizedBox(height: 30),
                        ElevatedButton(
                          child: Text(
                            (_keyGame.currentState != null && _keyGame.currentState.isPlaying)
                              ? 'End' : 'Start',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.yellow
                            )
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.black)
                          ),
                          onPressed: () {
                            (_keyGame.currentState != null && _keyGame.currentState.isPlaying)
                              ? _keyGame.currentState.endGame()
                              : _keyGame.currentState.startGame();
                          },
                        )
                      ]
                    )
                  )
                ),
              ],
            ),
          )
        ])
      )
    );
  }
}