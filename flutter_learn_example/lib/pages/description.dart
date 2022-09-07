import 'package:flutter/material.dart';

class MoreInfoPages extends StatefulWidget {
  const MoreInfoPages({
    Key? key,
    required this.images,
    required this.names,
    required this.characters,
    required this.description,
  }) : super(key: key);
  final ImageProvider images;
  final String names;
  final String characters;
  final String description;

  @override
  State<MoreInfoPages> createState() => _MoreInfoPagesState();
}

class _MoreInfoPagesState extends State<MoreInfoPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Container(
                  width: 500,
                  color: Colors.white,
                  child: Image(
                    image: widget.images,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.arrow_back_ios_new_outlined)),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Align(
                    alignment: AlignAlignment().alignTop,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.characters,
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(fontFamily: "ArchivoBlack"),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_border),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignAlignment().alignTop,
                    child: Text(
                      widget.names,
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                            fontSize: 15,
                          ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: AlignAlignment().alignTop,
                    child: Text(
                      widget.description,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AlignAlignment {
  final alignTop = Alignment.topLeft;
}
