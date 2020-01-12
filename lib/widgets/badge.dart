import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  int _count;
  Icon _icon;
  double _size;
  Color _color, _textColor;
  Badge(
      {int count,
      Icon icon,
      double size,
      Color color = Colors.green,
      Color textColor = Colors.white}) {
    _count = count;
    _color = color;
    _icon = icon;
    _size = size;
    _textColor = textColor;
  }

  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: _size != null ? _size : 25.0,
          height: _size != null ? _size : 25.0,
          decoration: BoxDecoration(color: _color, shape: BoxShape.circle),
          child: Center(
              child: _icon != null
                  ? _icon
                  : Text(
                      _count.toString(),
                      style: TextStyle(color: _textColor, fontSize: 14.0),
                    )),
        )
      ],
    );
  }
}
