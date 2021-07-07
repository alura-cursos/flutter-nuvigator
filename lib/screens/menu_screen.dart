import 'package:flutter/material.dart';
import 'package:proj/components/orgs_menu_card.dart';
import 'package:proj/components/orgs_rate_app.dart';
import 'package:proj/core/app_colors.dart';
import 'package:proj/screens/favorites_screen.dart';
import 'package:proj/screens/home_screen.dart';
import 'package:proj/screens/payment_screen.dart';
import 'package:proj/screens/profile_screen.dart';
import 'login_screen.dart';

class MenuScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Menu',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: AppColors.darkGrey
                ),
              ),
              SizedBox(height: 20),
              OrgsRateApp(),
              SizedBox(height: 30),
              OrgsMenuCard(
                text: 'Início',
                icon: Icons.home,
                action: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                ),
              ),
              Divider(),
              OrgsMenuCard(
                text: 'Favoritos',
                icon: Icons.favorite,
                action: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FavoritesScreen()),
                ),
              ),
              Divider(),
              OrgsMenuCard(
                text: 'Perfil',
                icon: Icons.person,
                action: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                ),
              ),
              Divider(),
              OrgsMenuCard(
                text: 'Métodos de pagamento',
                icon: Icons.credit_card,
                action: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentScreen()),
                ),
              ),
              Divider(),
              OrgsMenuCard(
                text: 'Sair',
                icon: Icons.logout,
                action: () => Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                  (route) => false
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}