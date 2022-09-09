import 'package:flutter/material.dart';
import 'package:flutter_learn_example/component/characters_class.dart';
import 'package:flutter_learn_example/component/description_class.dart';
import 'package:flutter_learn_example/component/images_class.dart';
import 'package:flutter_learn_example/component/names_class.dart';
import 'package:flutter_learn_example/pages/description.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: ImageAdd(name: ImagePath().blacksMarvel),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                ),
                child: ImageAdd(name: ImagePath().blacksIcon)),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30) +
            const EdgeInsets.only(top: 20),
        child: Column(
          children: const [
            SizedBox(height: 10),
            CharactersList(),
          ],
        ),
      ),
    );
  }
}

class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined))
        ],
      ),
    );
  }
}

class ImageAdd extends StatelessWidget {
  const ImageAdd({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _pathAdd,
      height: 40,
      width: 200,
    );
  }

  String get _pathAdd => "assets/images/png/$name.png";
}

class ImagePath {
  final String blacksMarvel = "logotrans";
  final String blacksIcon = "blacksIcon";
  final String nullValue = "deadpoolIcon";
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
  const CharactersList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) =>
            const Divider(color: Colors.transparent),
        //padding: const EdgeInsets.all(0.0),
        itemCount: ListCharacters().characters.length,
        itemBuilder: (BuildContext context, int index) {
          return PhysicalModel(
            color: Colors.white,
            elevation: 5,
            borderRadius: BorderRadius.circular(30),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: 170,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(ImagesPathsList().images[index]),
                          alignment: Alignment.centerLeft,
                          fit: BoxFit.fill,
                        ),
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            topLeft: Radius.circular(20))),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          textAlign: TextAlign.left,
                          ListCharacters().characters[index],
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(fontFamily: "ArchivoBlack"),
                        ),
                        Text(
                          NamesList().names[index],
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
                          child: Text(
                            DescriptionList().description[index],
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: Colors.black),
                            maxLines: 4,
                            //softWrap: false,
                            overflow: TextOverflow.ellipsis,
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
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => MoreInfoPages(
                                      images: AssetImage(
                                          ImagesPathsList().images[index]),
                                      characters:
                                          ListCharacters().characters[index],
                                      names: NamesList().names[index],
                                      description:
                                          DescriptionList().description[index],
                                    ),
                                  ));
                                },
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
