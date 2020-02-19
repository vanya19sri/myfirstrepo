import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
          
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
int leftDice =4;

int rightDice =5;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
           
             child: FlatButton(
              onPressed: (){
             
                setState((){
                 leftDice = Random().nextInt(5)+1;
                });
                print('left dice is pressed');
              },
               child: Image.asset('images/dice$leftDice.png',
          ),
          ),
          ),
          Expanded(
            child:FlatButton(
              onPressed: (){
                setState((){
                  rightDice = Random().nextInt(5)+1;
                });
              },
              child:Image.asset('images/dice$rightDice.png',
          ),
            ),
          ),
        ],
      ),
    );
  }
}
