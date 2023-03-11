import 'package:flutter/material.dart';

extension SizeMediaQuery on BuildContext {
  double get h => MediaQuery.of(this).size.height;
  double get w => MediaQuery.of(this).size.width;
  Size get size => MediaQuery.of(this).size;
  double get viewPaddingTop => MediaQuery.of(this).viewPadding.top;
}
