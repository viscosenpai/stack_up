import 'package:flutter/material.dart';
import 'package:stack_up/constants/tab_item.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var currentTab = TabItem.result;
  // boolean used to handle container animation which expands from the FAB
  // FABから拡張されるコンテナアニメーションを処理するために使用されるブール値
  bool clickedCentreFAB = false;
  // to handle which item is currently selected in the bottom app bar
  // 下部のアプリバーで現在選択されているアイテムを処理する
  int selectedIndex = 0;
  String text = "Home";

  //call this method on click of each bottom app bar item to update the screen
  // 画面を更新するには、下部の各アプリバーアイテムをクリックしてこのメ​​ソッドを呼び出します
  void _updateTabSelection(TabItem tabItem) {
    setState(() {
      currentTab = tabItem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(tabName[currentTab].toString())),
      //specify the location of the FAB
      // FABの場所を指定します
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Stack",
        child: Container(
          margin: const EdgeInsets.all(15.0),
          child: const Icon(Icons.add),
        ),
        elevation: 4.0,
      ),
      bottomNavigationBar: BottomNavBar(
        currentTab: currentTab,
        onSelectTab: _updateTabSelection,
      ),
    );
  }
}

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
