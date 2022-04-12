import 'package:flutter/material.dart';

import 'common/outer_border.dart';

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
        child: const OuterBorder(insertionContents: Text('うまくいった'))));
  }
}
