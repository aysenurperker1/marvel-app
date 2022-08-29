import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Image.asset(
            "images/marvelsred.png",
            height: 35,
            width: 100,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Icon(
                Icons.search_outlined,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ButtonElevat(
                  title: "Popular",
                  colorin: Colors.red,
                  textColorin: Colors.white,
                ),
                ButtonElevat(
                  title: "A-Z",
                  colorin: Colors.white,
                  textColorin: Colors.black,
                ),
                ButtonElevat(
                  title: "Last viewed",
                  colorin: Colors.white,
                  textColorin: Colors.black,
                ),
              ],
            ),
            const CharactersList(),
          ],
        ),
      ),
      bottomNavigationBar: const SizedBox(
        width: 100,
        height: 80,
        child: BottomBarFor(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const FloatingButtonExtract(),
    );
  }
}

class ButtonElevat extends StatelessWidget {
  const ButtonElevat({
    Key? key,
    required this.title,
    required this.colorin,
    required this.textColorin,
  }) : super(key: key);
  final String title;
  final Color colorin;
  final Color textColorin;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(colorin),
      ),
      child: Text(
        title,
        style: TextStyle(color: textColorin),
      ),
    );
  }
}

class FloatingButtonExtract extends StatelessWidget {
  const FloatingButtonExtract({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
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
    );
  }
}

class BottomBarFor extends StatelessWidget {
  const BottomBarFor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
    );
  }
}

class CharactersList extends StatelessWidget {
  const CharactersList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['DEADPOOL', 'THOR', 'HULK'];
    final List images = [
      "images/deadpooll.png",
      'images/thor.jpg',
      'images/hulk.jpg'
    ];

    return Expanded(
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return PhysicalModel(
            color: Colors.white,
            elevation: 10,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: 170,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(images[index]),
                          alignment: Alignment.centerLeft,
                          fit: BoxFit.fill,
                        ),
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10))),
                  ),
                  Text(entries[index],
                      style: Theme.of(context).textTheme.headline6),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
