import 'package:flutter/material.dart';

extension ContainerModifier on Widget {
  Widget backgroundColor(Color color, {double? minWidth, double? minHeight}) {
    return Container(
      color: color,
      child: this,
    );
  }

  Widget container({
    Color? color,
    BoxDecoration? decoration,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    AlignmentGeometry? alignment,
    double? width,
    double? height,
  }) {
    return Container(
      color: color,
      decoration: decoration,
      padding: padding,
      margin: margin,
      alignment: alignment,
      width: width,
      height: height,
      child: this,
    );
  }
}
