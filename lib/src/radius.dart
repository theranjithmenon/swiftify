import 'package:flutter/material.dart';

extension RadiusModifier on Widget {
  Widget borderRadius({
    double? radius,
    double? topLeft,
    double? topRight,
    double? bottomLeft,
    double? bottomRight,
  }) {
    // Check if no values are provided and set a default radius
    if (radius == null &&
        topLeft == null &&
        topRight == null &&
        bottomLeft == null &&
        bottomRight == null) {
      radius = 25; // Default radius
    }

    // Ensure that either `radius` or individual corners are used, but not both
    assert(
      (radius == null &&
              (topLeft != null ||
                  topRight != null ||
                  bottomLeft != null ||
                  bottomRight != null)) ||
          (radius != null &&
              topLeft == null &&
              topRight == null &&
              bottomLeft == null &&
              bottomRight == null),
      'You can specify either "radius" or individual corner radii, not both.',
    );

    return ClipRRect(
      borderRadius: radius != null
          ? BorderRadius.all(Radius.circular(radius))
          : BorderRadius.only(
              topLeft: Radius.circular(topLeft ?? 0),
              topRight: Radius.circular(topRight ?? 0),
              bottomLeft: Radius.circular(bottomLeft ?? 0),
              bottomRight: Radius.circular(bottomRight ?? 0),
            ),
      child: this,
    );
  }
}
