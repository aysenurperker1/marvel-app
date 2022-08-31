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
          child: _ImageAdd(name: ImagePath().blacksMarvel),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                ),
                child: _ImageAdd(name: ImagePath().blacksIcon)),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30) +
            const EdgeInsets.only(top: 20),
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
            const SizedBox(height: 10),
            CharactersList(),
          ],
        ),
      ),
    );
  }
}

class _ImageAdd extends StatelessWidget {
  const _ImageAdd({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _pathAdd,
      height: 28,
      width: 100,
    );
  }

  String get _pathAdd => "assets/images/png/$name.png";
}

class ImagePath {
  final String blacksMarvel = "blacksmarvel";
  final String blacksIcon = "blacksIcon";
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
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        )),
      ),
      child: Text(
        title,
        style: TextStyle(color: textColorin),
      ),
    );
  }
}

class CharactersList extends StatelessWidget {
  CharactersList({
    Key? key,
  }) : super(key: key);
  final List<String> entries = <String>['DEADPOOL', 'THOR', 'HULK'];
  final List<String> names = <String>[
    'Wade Wilson',
    'Thor Odinson',
    'Bruce Wayne'
  ];
  final List<String> description = <String>[
    "Ajax, a twisted scientist, experiments on Wade Wilsona mercenary to cure him of",
    "Thor Odinson, usually simply Thor, is a fictional character appearing in American comic books published by Marvel Comics",
    'Usually simply Hulk, is a fictional character appearing in American comic books published by Marvel Comics'
  ];

  final List images = [
    "assets/images/png/deadpooll.png",
    'assets/images/jpg/thor.jpg',
    'assets/images/jpg/hulk.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return PhysicalModel(
            color: Colors.white,
            elevation: 10,
            borderRadius: BorderRadius.circular(30),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
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
                            bottomLeft: Radius.circular(30),
                            topLeft: Radius.circular(30))),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          textAlign: TextAlign.left,
                          entries[index],
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(fontFamily: "ArchivoBlack"),
                        ),
                        Text(
                          names[index],
                          style:
                              Theme.of(context).textTheme.subtitle1?.copyWith(
                                    fontSize: 15,
                                  ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        SizedBox(
                          width: 125,
                          height: 100,
                          child: Flexible(
                            child: Text(
                              description[index],
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(color: Colors.black),
                              maxLines: 4,
                              //softWrap: false,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("More Info",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(color: Colors.black)),
                              const SizedBox(
                                width: 20,
                              ),
                              IconButton(
                                iconSize: 25,
                                alignment: Alignment.bottomRight,
                                onPressed: () {},
                                icon: const Icon(
                                    Icons.arrow_forward_ios_outlined),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
