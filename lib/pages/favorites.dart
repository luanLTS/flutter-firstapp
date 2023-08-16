import 'package:firstapp/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var favorites = appState.favorites;
    return ListView(children: [
      Padding(
        padding: EdgeInsets.all(20),
        child: Text("Tap in the word to remove it!"),
      ),
      ...favorites
          .map(
            (f) => ListTile(
              onTap: () {
                appState.removeFavorite(f);
              },
              title: Text(f.asUpperCase),
              leading: Icon(Icons.star),
            ),
          )
          .toList(),
    ]);
  }
}
