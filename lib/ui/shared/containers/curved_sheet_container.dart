import 'package:flutter/material.dart';

class CurvedSheetContainer extends StatelessWidget {
  static const double borderRadius = 40.0;
  final Widget child;
  final EdgeInsets padding;

  CurvedSheetContainer({@required this.child, this.padding = const EdgeInsets.all(10.0)});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      padding: padding,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(borderRadius),
            topRight: Radius.circular(borderRadius),
          ),
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
}
