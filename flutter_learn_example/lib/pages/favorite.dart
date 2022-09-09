import 'package:flutter/material.dart';
import 'package:flutter_learn_example/pages/home_pages.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Theme.of(context).colorScheme.onPrimary,
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text("FAVORITE CHARACTERS"),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 15),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.bookmark_outlined),
              color: Colors.red,
              iconSize: 25,
            ),
          )
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 135,
            child: ImageAdd(name: ImagePath().nullValue),
          ),
          spaceforText(),
          Text(
            "No Characters Yet",
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Colors.black.withOpacity(0.6)),
          ),
          spaceforText(),
          SizedBox(
            width: 300,
            child: Text(
              "You did not add any character to your favorite list yet",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: Colors.black.withOpacity(0.4)),
              //maxLines: 3,
              textAlign: TextAlign.center,
            ),
          )
        ],
      )),
    );
  }

  SizedBox spaceforText() {
    return const SizedBox(
      height: 15,
    );
  }
}
