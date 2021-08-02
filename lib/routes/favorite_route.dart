import 'package:nuvigator/next.dart';
import 'package:flutter/material.dart';
import 'package:proj/screens/favorites_screen.dart';

class FavoriteRoute extends NuRoute {
  @override
  String get path => 'favorite';

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings settings) {
    return FavoritesScreen(
      onProducerDetailsClick: (parameters) => nuvigator.open('producer-details', parameters: parameters),
    );
  }
}