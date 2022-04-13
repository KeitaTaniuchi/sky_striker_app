import 'package:flutter/material.dart';
import 'package:sky_striker_app/src/ui/organisms/number_magic_graveyard_counter.dart';
import 'package:sky_striker_app/src/ui/organisms/times_magic_used_counter.dart';

class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        NumberMagicGraveyardCounter(),
        TimesMagicUsedCounter(),
      ],
    ));
  }
}
