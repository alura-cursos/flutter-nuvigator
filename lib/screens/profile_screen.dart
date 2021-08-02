import 'package:flutter/material.dart';
import 'package:proj/components/orgs_drawer.dart';
import 'package:proj/components/orgs_profile_card.dart';
import 'package:proj/core/app_colors.dart';
import 'package:proj/core/app_images.dart';

class ProfileScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: OrgsDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Perfil',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          color: AppColors.darkGrey
                      ),
                    ),
                    IconButton(
                      color: Colors.transparent,
                      icon: Icon(Icons.menu, color: AppColors.green), // set your color here
                      onPressed: () {
                        _scaffoldKey.currentState.openDrawer();
                      }
                    ),
                  ]
              ),
              SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                AppImages.person,
                                width: 80,
                              ),
                            ),
                            Positioned(
                              bottom: 4,
                              right: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.green,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(
                                  Icons.enhance_photo_translate,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                width: 30,
                                height: 30,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Leonardo Alurano',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ]
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Informações do perfil',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 20),
                  OrgsProfileCard(
                    textArea: 'Nome completo',
                    data: 'Leonardo Alurano',
                    icon: Icons.person,
                  ),
                  Divider(),
                  OrgsProfileCard(
                    textArea: 'Endereço',
                    data: 'Rua dos devs, 20',
                    icon: Icons.home,
                  ),
                  Divider(),
                  OrgsProfileCard(
                    textArea: 'Pagamento',
                    data: 'DevCard',
                    icon: Icons.credit_card,
                  ),
                  Divider(),
                  OrgsProfileCard(
                    textArea: 'Contato',
                    data: '(22) 9.8877-6655',
                    icon: Icons.phone,
                  ),
                ],
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}