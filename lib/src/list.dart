import 'package:flutter/material.dart';

/// Allows any list to be converted into ListViews using itemBuilder
extension GenericListViewBuilder<T> on List<T> {
  /// Builds a ListView.builder from any list
  Widget asListViewBuilder({
    required Widget Function(BuildContext, int, T item) itemBuilder,
    Axis scrollDirection = Axis.vertical,
    bool shrinkWrap = false,
    ScrollPhysics? physics,
    EdgeInsetsGeometry? padding,
    bool? primary,
    ScrollController? controller,
    bool reverse = false,
  }) {
    return ListView.builder(
      itemCount: length,
      itemBuilder: (context, index) => itemBuilder(context, index, this[index]),
      scrollDirection: scrollDirection,
      shrinkWrap: shrinkWrap,
      physics: physics,
      padding: padding,
      primary: primary,
      controller: controller,
      reverse: reverse,
    );
  }

  /// Builds a ListView.separated from any list
  Widget asSeparatedListView({
    required Widget Function(BuildContext, int, T item) itemBuilder,
    required Widget Function(BuildContext, int) separatorBuilder,
    Axis scrollDirection = Axis.vertical,
    bool shrinkWrap = false,
    ScrollPhysics? physics,
    EdgeInsetsGeometry? padding,
    bool? primary,
    ScrollController? controller,
    bool reverse = false,
  }) {
    return ListView.separated(
      itemCount: length,
      itemBuilder: (context, index) => itemBuilder(context, index, this[index]),
      separatorBuilder: separatorBuilder,
      scrollDirection: scrollDirection,
      shrinkWrap: shrinkWrap,
      physics: physics,
      padding: padding,
      primary: primary,
      controller: controller,
      reverse: reverse,
    );
  }
}
