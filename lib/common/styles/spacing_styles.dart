import 'package:flutter/cupertino.dart';

import '../../utils/constants/size.dart';

class SpacingStyles{
  static  EdgeInsetsGeometry paddingWithAppBArHeight = const EdgeInsets.only(
    top: CustomSize.appBarHeight,
    left: CustomSize.defaultSpace,
    bottom: CustomSize.defaultSpace,
    right: CustomSize.defaultSpace,
  );
}