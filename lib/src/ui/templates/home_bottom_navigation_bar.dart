import 'package:flutter/material.dart';
import 'package:sky_striker_app/src/ui/molecules/buttons/reset_button.dart';
import 'package:sky_striker_app/src/ui/molecules/buttons/turn_end_button.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          TurnEndButton(action: AlertDialog(title: Text('ターンエンド'))),
          ResetButton(action: AlertDialog(title: Text('リセット'))),
        ],
      ),
    );
  }
}
