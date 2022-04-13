import 'package:flutter/material.dart';
import 'package:sky_striker_app/src/ui/atoms/app_size_list.dart';
import 'package:sky_striker_app/src/ui/atoms/common_outer_border.dart';

class HomeOuterBorder extends StatelessWidget {
  final insertionWidget;

  const HomeOuterBorder({Key? key, required this.insertionWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonOuterBorder(
        BorderWidth: AppSizeList.smallBorderWidth,
        insertionWidget: insertionWidget);
  }
}
