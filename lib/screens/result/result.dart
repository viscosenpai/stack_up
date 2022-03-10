import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  final List<bool> _selections = List.generate(4, (_) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40.0),
        child: AppBar(
          title: const Text('成績/収支'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          GroupButton(
            buttons: const [
              '総合',
              '年間',
              '月間',
              '当日',
            ],
            controller: GroupButtonController(selectedIndex: 0),
            options: GroupButtonOptions(
              selectedShadow: const [],
              unselectedShadow: const [],
              unselectedColor: Colors.transparent,
              unselectedTextStyle: TextStyle(
                color: Colors.grey[600],
                fontSize: 12,
              ),
              borderRadius: BorderRadius.circular(30),
              buttonWidth: 52,
              buttonHeight: 32,
            ),
            onSelected: (i, selected) {},
          ),
        ],
      ),
    );
  }
}
