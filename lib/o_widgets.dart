import 'package:flutter/material.dart';

enum ApplyTextDecoration { underline, overline, lineThrough }

class OText extends StatelessWidget {
  BuildContext context;
  String text;
  double size;
  Color color;
  Color decorationColor;
  Color backgrounColor;
  ApplyTextDecoration textDecoration;

  OText(
    this.context, {
    this.text,
    this.size,
    this.color,
    this.decorationColor,
    this.backgrounColor,
    this.textDecoration,
  }) : assert(text != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text ?? "",
        style: TextStyle(
          fontSize: size ?? 16,
          color: color ?? Theme.of(context).accentColor,
          decoration: _getDecoration(),
          decorationColor: decorationColor ?? Theme.of(context).accentColor,
          backgroundColor: backgrounColor ?? Colors.transparent,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }

  _getDecoration() {
    if (textDecoration == ApplyTextDecoration.underline) {
      return TextDecoration.underline;
    } else if (textDecoration == ApplyTextDecoration.overline) {
      return TextDecoration.overline;
    } else if (textDecoration == ApplyTextDecoration.lineThrough) {
      return TextDecoration.lineThrough;
    } else {
      return TextDecoration.none;
    }
  }
}
