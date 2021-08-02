import 'package:nuvigator/next.dart';
import 'package:flutter/material.dart';
import 'package:proj/models/package_model.dart';
import 'package:proj/models/producer_model.dart';
import 'package:proj/screens/package_details_screen.dart';

class PackageDetailsArgs {
  PackageDetailsArgs({this.producer, this.package});
  final Producer producer;
  final Package package;

  static PackageDetailsArgs fromJson(Map<String, dynamic> json) {
    return PackageDetailsArgs(
      producer: json['producer'],
      package: json['package'],
    );
  }

  @override
  String toString() {
    return 'PackageDetailsArgs(producer: $producer, package: $package)';
  }
}

class PackageDetailsRoute extends NuRoute<NuRouter, PackageDetailsArgs, String> {
  @override
  String get path => 'package-details';

  @override
  ScreenType get screenType => materialScreenType;

  @override
  ParamsParser<PackageDetailsArgs> get paramsParser => PackageDetailsArgs.fromJson;

  @override
  Widget build(BuildContext context,  NuRouteSettings<PackageDetailsArgs> settings) {

    /// Map<String, dynamic> com a linha de argumentos passados para a rota
    print(settings.rawParameters);

    /// Instância de PackageDetailsArgs com os argumentos parseados
    print(settings.arguments);

    print(settings.args);

    return PackageDetailsScreen(
      package: settings.args.package,
      producer: settings.args.producer,
    );
  }
}