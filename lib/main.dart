import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title:  Text('Dicee'),
          backgroundColor: Colors.teal,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _MyWidgetState extends State<DicePage> {

    var leftDiceNum = 2;
    var rightDiceNum = 4; 

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: (){
                print('Ashutosh');
              },
              child: Image.asset('images/dice$leftDiceNum.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: (){
                print('Rai');
              },
              child: Image.asset('images/dice$rightDiceNum.png'),
            ),
          )
        ],
      ),
    );
  }
}
