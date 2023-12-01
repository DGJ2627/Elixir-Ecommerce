import 'package:flutter/cupertino.dart';

import 'curved_edges.dart';

class CurvedEgeWidget extends StatelessWidget {
  const CurvedEgeWidget({
    super.key, this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdges(),
      child: child,
    );
  }
}