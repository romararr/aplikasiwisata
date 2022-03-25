import 'package:flutter/material.dart';

class IncreaseText extends StatefulWidget {
  final String text;

  const IncreaseText({required this.text});

  @override
  _IncreaseTextState createState() => _IncreaseTextState();
}

class _IncreaseTextState extends State<IncreaseText> {
  double _textSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            widget.text,
            style: TextStyle(fontSize: _textSize),
          ),
          ElevatedButton(
            child: Text("Increase Size"),
            onPressed: () {
              setState(() {
                _textSize = _textSize + 3;
              });
            },
          )
        ]);
  }
}
