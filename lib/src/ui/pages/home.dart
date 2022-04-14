import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sky_striker_app/src/ui/templates/calculator.dart';
import 'package:sky_striker_app/src/ui/templates/counter.dart';
import 'package:sky_striker_app/src/ui/templates/home_bottom_navigation_bar.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ホーム画面'),
        ),
        body: Column(children: const [
          Expanded(flex: 2, child: Calculator()),
          Expanded(flex: 2, child: Text('発動済みの効果')),
          Expanded(flex: 3, child: Text('召喚済みのリンクモンスター')),
          Expanded(flex: 2, child: Counter())
        ]),
        bottomNavigationBar: const HomeBottomNavigationBar());
  }
}
