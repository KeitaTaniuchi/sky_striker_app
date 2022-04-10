import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('電卓コンポーネントタップ時の動作確認'),
              );
            });
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 0.5),
        ),
        child: (const Center(child: Text('電卓コンポーネント'))),
      ),
    ));
  }
}
