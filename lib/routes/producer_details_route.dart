import 'package:nuvigator/next.dart';
import 'package:flutter/material.dart';
import 'package:proj/screens/producer_details_screen.dart';

class ProducerDetailsRoute extends NuRoute {
  @override
  String get path => 'producer-details';

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings settings) {
    return ProducerDetailsScreen(
      onPackageDetailsClick: (parameters) => nuvigator.open('package-details', parameters: parameters),
      producer: settings.rawParameters['producer'],
    );
  }
}