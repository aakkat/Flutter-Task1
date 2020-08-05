import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


AudioPlayer newPlayer = new AudioPlayer();
AudioCache audio = new AudioCache(fixedPlayer: newPlayer);
bool play = false;
bool stop = true;
playAudio() {
  if (play == false || stop == true) {
    audio.play("note1.wav"); //My Favourite Audio.mpeg
    play = true;
    stop = false;
  }
}

pauseAudio() {
  if (play == true) {
    newPlayer.pause();
    play = false;
  }
}

stopAudio() {
  if (play == true && stop == false) {
    newPlayer.stop();
    play = false;
    stop = true;
  }
}

myapp() {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Music Player'),
        backgroundColor: Colors.deepOrange,
     ),
     body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.stretch,
       children: <Widget>[
         Container(
           //width: 200,
           //height: 100,
           child: Card(
             color:Colors.lightBlue,
             child: Image.asset('images/Aakash7.jpg'),
             elevation: 5,
           ),
         ),
         Row(children: <Widget>[
           FlatButton(
             onPressed: playAudio,
             child: Icon(Icons.play_arrow),
            ),
            FlatButton(
               onPressed: pauseAudio,
               child: Icon(Icons.pause),
            ),
            FlatButton(
              onPressed: stopAudio,
              child: Icon(Icons.stop),
            ),
         ],)
       ],
     ),
   ),
  );
}
