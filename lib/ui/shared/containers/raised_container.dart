import 'package:flutter/material.dart';
import 'package:github_issue_tracker/core/enums/curvature.dart';

class RaisedContainer extends StatelessWidget {
  static const double borderRadius = 40.0;
  final Widget child;
  final EdgeInsets padding;
  final Curvature curvature;

  RaisedContainer({
    @required this.child,
    this.padding = const EdgeInsets.all(10.0),
    this.curvature = Curvature.Flat,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      padding: padding,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: getBorderRadius(curvature, borderRadius),
        ),
        padding: EdgeInsets.only(
          top: 10.0,
          left: 20.0,
          right: 20.0,
          bottom: MediaQuery.of(context).viewInsets.bottom + 10.0,
        ),
        child: child,
      ),
    );
  }

  BorderRadius getBorderRadius(Curvature curvature, double borderRadiusWidth) {
    BorderRadius borderRadius;

    switch (curvature) {
      case Curvature.Flat:
        borderRadius = BorderRadius.all(Radius.zero);
        break;
      case Curvature.CurvedTop:
        borderRadius = BorderRadius.only(
          topLeft: Radius.circular(borderRadiusWidth),
          topRight: Radius.circular(borderRadiusWidth),
        );
        break;
      case Curvature.CurvedBottom:
        borderRadius = BorderRadius.only(
          bottomLeft: Radius.circular(borderRadiusWidth),
          bottomRight: Radius.circular(borderRadiusWidth),
        );
        break;
      case Curvature.CurvedAround:
        borderRadius = BorderRadius.all(Radius.circular(borderRadiusWidth));
        break;
    }

    return borderRadius;
  }
}
