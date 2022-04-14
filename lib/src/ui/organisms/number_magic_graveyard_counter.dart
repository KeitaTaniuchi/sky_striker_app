import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sky_striker_app/src/state/global_state.dart';
import 'package:sky_striker_app/src/ui/atoms/app_size_list.dart';
import 'package:sky_striker_app/src/ui/atoms/outer_border.dart';
import 'package:sky_striker_app/src/ui/molecules/buttons/decrement_button.dart';
import 'package:sky_striker_app/src/ui/molecules/buttons/increment_button.dart';

class NumberMagicGraveyardCounter extends ConsumerWidget {
  const NumberMagicGraveyardCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int numberMagicGraveyard = ref.watch(numberMagicGraveyardState);

    return CommonOuterBorder(
        borderWidth: AppSizeList.smallBorderWidth,
        insertionWidget: Column(
          children: [
            const Expanded(
                flex: 4,
                child: Center(
                    child: Text(
                  '墓地の魔法の枚数',
                  style: TextStyle(fontSize: AppSizeList.mediumTextSize),
                ))),
            Expanded(
                flex: 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IncrementButton(action: AlertDialog(title: Text('墓地枚数+'))),
                    Text(
                      numberMagicGraveyard.toString(),
                      style:
                          const TextStyle(fontSize: AppSizeList.largeTextSize),
                    ),
                    DecrementButton(action: AlertDialog(title: Text('墓地枚数-')))
                  ],
                )),
          ],
        ));
  }
}
