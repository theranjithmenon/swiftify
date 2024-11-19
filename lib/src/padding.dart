import 'package:flutter/material.dart';

extension PaddingModifer on Widget {
  /// Adds padding to a widget using various styles.
  Widget padding({
    PaddingStyle? paddingStyle,
    EdgeInsetsGeometry? padding,
    double? top,
    double? bottom,
    double? left,
    double? right,
    double? vertical,
    double? horizontal,
    BuildContext? context, // Required for `fromViewPadding`
  }) {
    // Assertions to validate parameter usage
    assert(
      paddingStyle != PaddingStyle.only ||
          (top != null || bottom != null || left != null || right != null),
      'PaddingStyle.only requires at least one of top, bottom, left, or right to be specified.',
    );
    assert(
      paddingStyle != PaddingStyle.symmetric ||
          (vertical != null || horizontal != null),
      'PaddingStyle.symmetric requires either vertical or horizontal to be specified.',
    );
    assert(
      paddingStyle == null || padding == null,
      'Specify either a PaddingStyle or a custom padding, not both.',
    );
    assert(
      paddingStyle != PaddingStyle.fromViewPadding || context != null,
      'A BuildContext must be provided when using PaddingStyle.fromViewPadding.',
    );

    EdgeInsetsGeometry computeEdgeInsets() {
      switch (paddingStyle) {
        case PaddingStyle.all:
          return padding ?? const EdgeInsets.all(8.0);
        case PaddingStyle.only:
          return EdgeInsets.only(
            top: top ?? 0,
            bottom: bottom ?? 0,
            left: left ?? 0,
            right: right ?? 0,
          );
        case PaddingStyle.symmetric:
          return EdgeInsets.symmetric(
            vertical: vertical ?? 0,
            horizontal: horizontal ?? 0,
          );
        case PaddingStyle.fromViewPadding:
          // Use MediaQuery to fetch view padding
          return MediaQuery.of(context!).viewPadding;
        default:
          return padding ?? const EdgeInsets.all(8.0);
      }
    }

    return Padding(
      padding: computeEdgeInsets(),
      child: this,
    );
  }
}

enum PaddingStyle { all, only, symmetric, fromViewPadding }
