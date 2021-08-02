import 'package:flutter/material.dart';
import 'package:proj/components/orgs_highlights_card.dart';
import 'package:proj/components/orgs_cards_list.dart';
import 'package:proj/components/orgs_search_bar.dart';
import 'package:proj/components/orgs_spotlight_card.dart';
import 'package:proj/components/orgs_stores_card.dart';
import 'package:proj/components/orgs_drawer.dart';
import 'package:proj/core/app_colors.dart';
import 'package:proj/core/app_images.dart';
import 'package:proj/models/producer_model.dart';
import 'package:proj/repository/data.dart';
import 'package:proj/screens/producer_details_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.grey[100],
      drawer: OrgsDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    AppImages.logo,
                    height: kToolbarHeight,
                  ),
                  IconButton(
                    color: Colors.transparent,
                    icon: Icon(Icons.menu, color: AppColors.green), // set your color here
                    onPressed: () => _scaffoldKey.currentState.openDrawer(),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Text(
                'Olá, Leonardo',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: AppColors.darkGrey
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Encontre os melhores produtores',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10),
              OrgsSearchBar(),
              SizedBox(height: 10),
              FutureBuilder(
                future: _generateHighlightsCards(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return snapshot.data;
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
              SizedBox(height: 10),
              Text(
                'Cestas em destaque',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: AppColors.darkGrey
                ),
              ),
              SizedBox(height: 10),
              FutureBuilder(
                future: _generateSpotlightCards(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return snapshot.data;
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
              SizedBox(height: 20),
              Text(
                'Mais acessados',
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              FutureBuilder(
                future: _generateProducerList(context),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                     return Column(children: snapshot.data);
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Future _generateProducerList(BuildContext context) async {
    List<Widget> children = [];
    final data = await Data.getJson();
    final producers = data["producers"];

    for(final producer in producers.keys) {

      final prod = Producer.fromJson(producers[producer]);

      children.add(OrgsStoresCard(
        action: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProducerDetailsScreen(producer: prod)),
        ),
        img: prod.logo,
        distance: prod.distance,
        title: prod.name,
      ));

      children.add(SizedBox(height: 10));
    }

    return children;
  }

  Future<OrgsCardsList> _generateHighlightsCards() async {
    List<Widget> children = [];
    final data = await Data.getJson();
    final highlights = data["highlights"];

    for(final highlight in highlights) {

      children.add(OrgsHighlightsCard(
        img: highlight["image"],
        title: highlight["name"],
        description: highlight["description"],
        color: AppColors.white,
        btnAction: (){},
      ));
    }

    return OrgsCardsList(
      heightList: 160,
      cards: children
    );
  }

  Future<OrgsCardsList> _generateSpotlightCards() async {
    List<Widget> children = [];
    final data = await Data.getJson();
    final spotlights = data["spotlights"];

    for(final spotlight in spotlights) {

      children.add(OrgsSpotlightCard(
        img: spotlight["image"],
        price: spotlight["price"],
        description: spotlight["description"],
        color: AppColors.frostMint,
        store: spotlight["store"]
      ));
    }

    return OrgsCardsList(
        heightList: 140,
        cards: children
    );
  }
}