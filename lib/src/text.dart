import 'package:flutter/material.dart';

extension TextModifiers on Text {
  Text fontSize(double size) {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle()).copyWith(fontSize: size),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  Text fontWeight(FontWeight weight) {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle()).copyWith(fontWeight: weight),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  Text fontFamily(String fontFamily) {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle()).copyWith(fontFamily: fontFamily),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  Text color(Color color) {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle()).copyWith(color: color),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  Text italic() {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle()).copyWith(fontStyle: FontStyle.italic),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  Text bold() {
    return Text(
      data ?? '',
      style: (style ?? const TextStyle()).copyWith(fontWeight: FontWeight.bold),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }

  Text align(TextAlign align) {
    return Text(
      data ?? '',
      style: style,
      textAlign: align,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
