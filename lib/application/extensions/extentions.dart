import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension WidgetPadding on Widget {
  Widget padding(EdgeInsetsGeometry edgeInsets) {
    return Padding(
      padding: edgeInsets,
      child: this,
    );
  }
}

extension ContextExtension on BuildContext {
  double getHeight([double factor = 1]) {
    assert(factor != 0);
    return MediaQuery.of(this).size.height * factor;
  }

  double getWidth([double factor = 1]) {
    assert(factor != 0);
    return MediaQuery.of(this).size.width * factor;
  }

  double get height => getHeight();

  double get width => getWidth();

  TextTheme get textTheme => Theme.of(this).textTheme;

  ThemeData get theme => Theme.of(this);

  Size get size => MediaQuery.of(this).size;

  RelativeRect getRelativeRect(Offset offset) {
    double left = offset.dx;
    double top = offset.dy;
    double right = offset.dx;
    double bottom = offset.dy;

    return RelativeRect.fromLTRB(left, top, right, bottom);
  }
}
