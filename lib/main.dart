import 'package:flutter/material.dart';

void main() {
  runApp(WoostGames());
}

class WoostGames extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Woost Games',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: GameSelection(title: 'Woost Games'),
    );
  }
}

class GameSelection extends StatefulWidget {
  GameSelection({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _GameSelectionState createState() => _GameSelectionState();
}

class _GameSelectionState extends State<GameSelection> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
