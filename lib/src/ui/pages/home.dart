import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sky_striker_app/src/ui/atoms/app_size_list.dart';
import 'package:sky_striker_app/src/ui/atoms/common_text_button.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ホーム画面'),
      ),
      body: const Body(),
      bottomNavigationBar: const BottomAppButton(),
    );
  }
}

void _countUp() {
  AlertDialog(title: Text('テスト'));
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Column(children: [
      CommonTextButton(
          action: _countUp,
          textDetail: 'テストERsssええffs',
          textSize: AppSizeList.mediumTextSize)
    ]));
  }
}

class BottomAppButton extends StatelessWidget {
  const BottomAppButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton.icon(
              onPressed: () {
                AlertDialog(title: Text('ターンエンド'));
              },
              icon: const Icon(Icons.back_hand_outlined),
              label: const Text('ターンエンドB')),
          TextButton.icon(
            onPressed: () {
              AlertDialog(title: Text('リセット'));
            },
            icon: const Icon(Icons.restart_alt),
            label: const Text('リセットA'),
          ),
        ],
      ),
    );
  }
}
