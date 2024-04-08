import 'package:flutter/material.dart';
import 'package:medlink/widgets/custom%20shapes/curve_widget.dart';

class complete_curved_widget extends StatelessWidget {
  const complete_curved_widget({
    super.key, this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CurveEdges() ,
      child: child,
    );
  }
}