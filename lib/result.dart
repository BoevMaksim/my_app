import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final Function funcState;
  final int resultScore;

  Result(this.funcState, this.resultScore);

  String get resultGeter {
    var resultText = 'You did it!';
    if(resultScore <= 8){
      resultText = 'You are awesome and innocent ';
    } else if (resultScore <= 12){
resultText = 'Pretty likeable';
    }else if (resultScore <= 16){
      resultText = 'You are ... strenge!';
    }else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        Text(resultGeter, textAlign: TextAlign.center),
                        RaisedButton(
                          textColor: Colors.white,
                          color: Colors.blue,
                          child: Text('Press on Start'),
                          onPressed: funcState,
                        ),
                      ],
                    ),
                  ),
                ],
              );
  }
}