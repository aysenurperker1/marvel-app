import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String titles = "Marvel Comics";
    return Scaffold(
      appBar: AppBar(
        title: const Text(titles),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_outlined),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: Column(
        children: const [],
      ),
      bottomNavigationBar: SizedBox(
        width: 100,
        height: 80,
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 8.0,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.show_chart),
              ),
              const SizedBox(
                width: 48,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.filter_list),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: PhysicalModel(
        color: Colors.white,
        shape: BoxShape.circle,
        shadowColor: Colors.black,
        elevation: 10,
        borderRadius: BorderRadius.circular(10),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor:
              Theme.of(context).floatingActionButtonTheme.backgroundColor,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
