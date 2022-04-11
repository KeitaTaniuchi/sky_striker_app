import 'package:flutter/material.dart';

import '../component/calculator.dart';
import '../component/counter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ホーム'),
      ),
      body: const Body(),
      bottomNavigationBar: const BottomAppButton(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        const Expanded(flex: 2, child: Calculator()),
        Expanded(
          flex: 4,
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 0.5),
            ),
            child: Column(
              children: [
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [],
                )),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('カガリ'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('シズク'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('ハヤテ'),
                    ),
                  ],
                )),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('カイナ'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('ジーク'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('光属性'),
                    ),
                  ],
                )),
              ],
            ),
          ),
        ),
        const Expanded(flex: 3, child: Counter()),
      ],
    ));
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
              onPressed: () {},
              icon: const Icon(Icons.back_hand_outlined),
              label: const Text('ターンエンド')),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.restart_alt),
            label: const Text('リセット'),
          ),
        ],
      ),
    );
  }
}
