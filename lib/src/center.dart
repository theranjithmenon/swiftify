import 'package:flutter/material.dart';

extension CenterModifier on Widget {
  Widget center() {
    return Center(
      child: this,
    );
  }
}
