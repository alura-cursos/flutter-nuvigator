import 'package:flutter/material.dart';
import 'package:proj/components/orgs_packages_card.dart';
import 'package:proj/core/app_colors.dart';
import 'package:proj/core/app_images.dart';
import 'package:proj/models/package_model.dart';
import 'package:proj/models/producer_model.dart';

class PackageDetailsScreen extends StatelessWidget {

  final Package package;
  final Producer producer;

  PackageDetailsScreen({
    @required this.package,
    @required this.producer,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          'Detalhe da cesta',
          style: TextStyle(
              fontWeight: FontWeight.w700
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            AppImages.package_details,
            fit: BoxFit.fitWidth,
            width: double.infinity,
            height: 180,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                      package.title,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                ),
                Text(
                  '${producer.distance} km',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.asset(producer.logo, width: 50,),
                ),
                SizedBox(width: 10,),
                Text(
                  producer.name,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
            child: Text(
              producer.description,
              style: TextStyle(
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
            child: Text(
              'R\$ ${package.price}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: AppColors.green,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: double.infinity),
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  primary: AppColors.green, // background
                  onPrimary: Colors.white, // foreground
                ),
                child: Text('Comprar'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Text(
              'Itens da cesta',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 25,
              ),
            ),
          ),
          Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: ListView(
                  children: _generatePackageItems(package)
                ),
              )
          ),
        ],
      ),
    );
  }

  List<Widget> _generatePackageItems(Package package) {
    List<Widget> children = [];

    for(final item in package.items) {
      children.add(
        OrgsPackagesCard(
          description: "",
          title: item,
          price: null
      ));
    }

    return children;
  }
}
