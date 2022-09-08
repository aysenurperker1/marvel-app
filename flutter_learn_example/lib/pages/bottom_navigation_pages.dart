import 'package:flutter/material.dart';
import 'package:flutter_learn_example/pages/favorite.dart';
import 'package:flutter_learn_example/pages/home_pages.dart';

class ChangePages extends StatefulWidget {
  const ChangePages({Key? key}) : super(key: key);

  @override
  State<ChangePages> createState() => _ChangePagesState();
}

class _ChangePagesState extends State<ChangePages> {
  int selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const FavoritePage(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[selectedIndex],
      ),
      bottomNavigationBar: SizedBox(
        height: 65,
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          selectedItemColor: Colors.red,
          onTap: onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.filter_list),
              label: 'Characters',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: 'Favorite',
            ),
          ],
        ),
      ),
    );
  }
}
