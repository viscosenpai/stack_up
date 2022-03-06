import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  // boolean used to handle container animation which expands from the FAB
  // FABから拡張されるコンテナアニメーションを処理するために使用されるブール値
  bool clickedCentreFAB = false;
  // to handle which item is currently selected in the bottom app bar
  // 下部のアプリバーで現在選択されているアイテムを処理する
  int selectedIndex = 0;
  String text = "Home";

  //call this method on click of each bottom app bar item to update the screen
  // 画面を更新するには、下部の各アプリバーアイテムをクリックしてこのメ​​ソッドを呼び出します
  void updateTabSelection(int index, String buttonText) {
    setState(() {
      selectedIndex = index;
      text = buttonText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(),
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
      bottomNavigationBar: BottomAppBar(
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home),
              ),
            ],
          ),
        ),
        // to add a space between the FAB and BottomAppBar
        // FABとBottomAppBarの間にスペースを追加します
        shape: const CircularNotchedRectangle(),
        // color of the BottomAppBar
        // BottomAppBarの色
        color: Colors.blueGrey,
      ),
    );
  }
}
