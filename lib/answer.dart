import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String _option;

  Answer(this.selectHandler, this._option);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(_option),
        onPressed: selectHandler,
      ),
    );
  }
}
