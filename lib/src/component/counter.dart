import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state/global_state.dart';
import 'common/outer_border.dart';

class Counter extends ConsumerWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int timesMagicUsed = ref.watch(timesMagicUsedStateState);
    final int numberMagicGraveyard = ref.watch(numberMagicGraveyardState);
    return (OuterBorder(
        insertionContents:
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      CounterView(title: '発動した魔法の回数', counter: timesMagicUsed),
      CounterView(title: '墓地の魔法の枚数', counter: numberMagicGraveyard),
    ])));
  }
}

class CounterView extends StatefulWidget {
  final String title;
  final int counter;

  const CounterView({Key? key, required this.title, required this.counter})
      : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        Expanded(
            child: Center(
                child:
                    Text(widget.title, style: const TextStyle(fontSize: 15)))),
        Expanded(
            child: Text(
          widget.counter.toString(),
          style: const TextStyle(fontSize: 55),
        )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CounterButton(operationSymbol: '+', counterType: widget.title),
            const Text('      '),
            CounterButton(operationSymbol: '-', counterType: widget.title),
          ],
        ),
      ],
    ));
  }
}

class CounterButton extends StatefulWidget {
  final String operationSymbol;
  final String counterType;

  const CounterButton(
      {Key? key, required this.operationSymbol, required this.counterType})
      : super(key: key);

  @override
  State<CounterButton> createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
  @override
  Widget build(BuildContext context) {
    return (TextButton(
      onPressed: () {
        if (widget.counterType == '発動した魔法の回数') {
          if (widget.operationSymbol == '+') {}
        }
      },
      child: Text(
        (widget.operationSymbol),
        style: const TextStyle(
          fontSize: 55,
        ),
      ),
    ));
  }
}
