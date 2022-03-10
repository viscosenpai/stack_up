import 'package:flutter/material.dart';
import 'package:stack_up/constants/tab_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.currentTab,
    required this.onSelectTab,
  }) : super(key: key);
  final TabItem currentTab;
  final void Function(TabItem) onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.blueGrey,
      type: BottomNavigationBarType.fixed,
      onTap: (index) => onSelectTab(TabItem.values[index]),
      currentIndex: currentTab.index,
      selectedItemColor: Colors.white,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.home,
            color: Colors.white,
          ),
          label: tabName[TabItem.ruleset],
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.home,
            color: Colors.white,
          ),
          label: tabName[TabItem.result],
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.home,
            color: Colors.white,
          ),
          label: tabName[TabItem.gamestuts],
        ),
      ],
    );
  }
}
