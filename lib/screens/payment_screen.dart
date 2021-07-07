import 'package:flutter/material.dart';
import 'package:proj/components/orgs_drawer.dart';
import 'package:proj/components/orgs_profile_card.dart';
import 'package:proj/core/app_colors.dart';
import 'package:proj/core/app_images.dart';

class PaymentScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: OrgsDrawer(),
        appBar: AppBar(
        iconTheme: IconThemeData(
          color: AppColors.green, //change your color here
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Pagamento',
          style: TextStyle(
            color: AppColors.darkGrey,
            fontWeight: FontWeight.w700
          ),
        ),
        centerTitle: true,
      ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                AppImages.cart,
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Formas de pagamento',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 26
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10
                ),
                child: Text(
                  'Formas de pagamento cadastradas',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: AppColors.darkGrey
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: OrgsProfileCard(
                  textArea: 'Cartão de crédito',
                  icon: Icons.credit_card,
                  data: 'Aluracard XXXX.4569',
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: OrgsProfileCard(
                  textArea: 'Cartão de crédito',
                  icon: Icons.credit_card,
                  data: 'Startcard',
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: OrgsProfileCard(
                  textArea: 'Cartão de crédito',
                  icon: Icons.credit_card,
                  data: 'PM3card',
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: OrgsProfileCard(
                  textArea: 'Boleto bancário',
                  icon: Icons.money,
                  data: 'Pessoa física',
                ),
              ),
              Divider(),
              SizedBox(height: 20,),
            ],
          ),
        )
    );
  }
}
