import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Counter());
}

class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text(
            'ॐ नमः शिवाय',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: const Dice(),
      ),
    );
  }
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int image = 0;
  void imagechange() {

    if (image <= 8)
      setState(()
      {
        image = image + 1;
      });

    else
    {
      Center(child: Image.asset('assets/ompicfinal.jpg',
      width: 50,
      height: 50,
      )
      );
      final player = AudioCache();
      player.load('assets/hariomfinal.mp3');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          imagechange();
        },
        child: Image.asset(
          'assets/img$image.png',
          width: 50,
          height: 50,
        ),
      ),
    );
  }
}
