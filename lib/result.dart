import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final Function funcState;

  Result(this.funcState);
  @override
  Widget build(BuildContext context) {
    return Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        Text('You did it!', textAlign: TextAlign.center),
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