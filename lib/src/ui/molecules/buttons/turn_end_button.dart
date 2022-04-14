import 'package:flutter/material.dart';
import 'package:sky_striker_app/src/ui/atoms/app_size_list.dart';
import 'package:sky_striker_app/src/ui/atoms/buttons.dart';

class TurnEndButton extends StatelessWidget {
  final action;

  const TurnEndButton({Key? key, required this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonIconButton(
        action: action,
        textDetail: 'ターンエンド',
        textSize: AppSizeList.mediumTextSize,
        icon: const Icon(Icons.back_hand_outlined));
  }
}
