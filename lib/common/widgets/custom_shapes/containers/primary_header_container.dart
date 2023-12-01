import 'package:flutter/cupertino.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_widget.dart';
import 'circular_container.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CurvedEgeWidget(
      child: Container(
        color: CustomColors.primary,
        padding: const EdgeInsets.only(bottom: 0),
        child: SizedBox(
          height: 380,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -150,
                child: CircularContainer(
                  backgroundColor: CustomColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right:-200,
                child: CircularContainer(
                  backgroundColor: CustomColors.textWhite.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}