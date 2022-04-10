import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Container(
      width: double.infinity,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.5),
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            CounterView(title: '発動した魔法の回数'),
            CounterView(title: '墓地の魔法の枚数'),
          ]),
    ));
  }
}

class CounterView extends StatefulWidget {
  final String title;

  const CounterView({Key? key, required this.title}) : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        Expanded(flex: 5, child: (Center(child: Text(widget.title)))),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            CounterButton(operationSymbol: '+'),
            CounterButton(operationSymbol: '-'),
          ],
        ),
      ],
    ));
  }
}

class CounterButton extends StatefulWidget {
  final String operationSymbol;

  const CounterButton({Key? key, required this.operationSymbol})
      : super(key: key);

  @override
  State<CounterButton> createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
  @override
  Widget build(BuildContext context) {
    return (TextButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text(widget.operationSymbol),
              );
            });
      },
      child: Text(
        (widget.operationSymbol),
        style: const TextStyle(
          fontSize: 40,
        ),
      ),
    ));
  }
}
