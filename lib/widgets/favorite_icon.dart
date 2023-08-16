import 'package:firstapp/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteIcon extends StatelessWidget {
  const FavoriteIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var current = appState.current;
    var favorites = appState.favorites;
    if (favorites.contains(current)) return Icon(Icons.star);
    return Icon(Icons.star_border);
  }
}
