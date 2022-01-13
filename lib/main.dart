import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  playSound(int soundNumber){
    final player = AudioCache();
    player.play("note$soundNumber.wav");
    return soundNumber;
  }

  Expanded criaBotao(Color cor, int sound){
    return Expanded(
      child: FlatButton(
          color: cor,
          onPressed: (){
            playSound(sound);
          }
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
            children: [
              criaBotao(Colors.red, 1),
              criaBotao(Colors.orange, 2),
              criaBotao(Colors.yellow, 3),
              criaBotao(Colors.green, 4),
              criaBotao(Colors.teal, 5),
              criaBotao(Colors.blue, 6),
              criaBotao(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
