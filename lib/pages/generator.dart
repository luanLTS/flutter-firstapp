import 'package:firstapp/main.dart';
import 'package:firstapp/widgets/bid_card.dart';
import 'package:firstapp/widgets/favorite_icon.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GeneratorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 5 * 24,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ListView(
                    addAutomaticKeepAlives: true,
                    shrinkWrap: true,
                    children: [
                      ListTile(
                        title: Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [Icon(Icons.abc), Text("asdadasd")],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          BigCard(pair: pair),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                  onPressed: () {
                    appState.toggleFavorite();
                  },
                  icon: FavoriteIcon(),
                  label: Text('Like')),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    appState.getNext();
                  },
                  child: Text("Próxima")),
            ],
          )
        ],
      ),
    );
  }
}
