import 'package:flutter/material.dart';

extension TextModifiers on Text {
  Text _withStyle(TextStyle Function(TextStyle base) update) {
    final baseStyle = style ?? const TextStyle();
    final newStyle = update(baseStyle);
    return Text(
      data ?? '',
      key: key,
      style: newStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      strutStyle: strutStyle,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
    );
  }

  Text fontSize(double size) => _withStyle((s) => s.copyWith(fontSize: size));

  Text fontWeight(FontWeight weight) =>
      _withStyle((s) => s.copyWith(fontWeight: weight));

  Text fontFamily(String family) =>
      _withStyle((s) => s.copyWith(fontFamily: family));

  Text color(Color color) => _withStyle((s) => s.copyWith(color: color));

  Text italic() => _withStyle((s) => s.copyWith(fontStyle: FontStyle.italic));

  Text bold() => _withStyle((s) => s.copyWith(fontWeight: FontWeight.bold));

  Text align(TextAlign align) => Text(
        data ?? '',
        key: key,
        style: style,
        textAlign: align,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        strutStyle: strutStyle,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior,
        selectionColor: selectionColor,
      );
}
