import 'package:flutter/material.dart';

extension SafeAreaModifier on Widget {
  Widget respectSafeArea() {
    return SafeArea(
      child: this,
    );
  }
}
