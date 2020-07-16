import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void play(int n){
    String s;
    s=n.toString();
    final player=AudioCache();
    player.play('note'+s+'.wav');
  }

  Expanded buildkey(int wave, Color color){
    return Expanded(
      child: FlatButton(
        onPressed: (){
          play(wave);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(1,Colors.deepPurple),
              buildkey(2,Colors.indigo),
              buildkey(3,Colors.blue),
              buildkey(4,Colors.green),
              buildkey(5,Colors.yellow),
              buildkey(6,Colors.orange),
              buildkey(7,Colors.red),
            ],
            ),
          ),

          ),
        );
  }
}
