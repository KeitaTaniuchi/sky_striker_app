import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sky_striker_app/src/state/global_state.dart';
import 'package:sky_striker_app/src/ui/atoms/app_size_list.dart';
import 'package:sky_striker_app/src/ui/atoms/outer_border.dart';
import 'package:sky_striker_app/src/ui/molecules/buttons/decrement_button.dart';
import 'package:sky_striker_app/src/ui/molecules/buttons/increment_button.dart';

class TimesMagicUsedCounter extends ConsumerWidget {
  const TimesMagicUsedCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int timesMagicUsed = ref.watch(timesMagicUsedState);

    return CommonOuterBorder(
        borderWidth: AppSizeList.smallBorderWidth,
        insertionWidget: Column(
          children: [
            const Expanded(
                child: Center(
                    child: Text(
              '発動した魔法の回数',
              style: TextStyle(fontSize: AppSizeList.mediumTextSize),
            ))),
            Expanded(
                child: Text(
              timesMagicUsed.toString(),
              style: const TextStyle(fontSize: AppSizeList.largeTextSize),
            )),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                IncrementButton(action: AlertDialog(title: Text('発動回数+'))),
                DecrementButton(action: AlertDialog(title: Text('発動回数-')))
              ],
            ))
          ],
        ));
  }
}
