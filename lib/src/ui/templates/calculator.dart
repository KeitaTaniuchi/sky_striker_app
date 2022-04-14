import 'package:flutter/material.dart';
import 'package:sky_striker_app/src/ui/atoms/app_size_list.dart';
import 'package:sky_striker_app/src/ui/atoms/outer_border.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (InkWell(
        onTap: () {
          showDialog(
              context: context,
              builder: (context) {
                return const AlertDialog(
                  title: Text('電卓コンポーネントタップ時の動作確認'),
                );
              });
        },
        child: const WidthInfinityOuterBorder(
          borderWidth: AppSizeList.smallBorderWidth,
          insertionWidget: Center(child: Text('電卓コンポーネント')),
        )));
  }
}
