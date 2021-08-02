import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:proj/core/app_colors.dart';

class OrgsProfileCard extends StatelessWidget {
  final IconData icon;
  final String textArea;
  final String data;

  OrgsProfileCard({
    @required this.icon,
    @required this.textArea,
    @required this.data,
  }): assert(icon != null),
      assert(textArea != null),
      assert(data != null);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(50),
            ),
            width: 60,
            height: 60,
            child: Icon(
              icon,
              color: AppColors.darkGrey,
              size: 40,
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  textArea,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    color: AppColors.grey
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  data,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ],
            ),
          ),
          Icon(Icons.arrow_forward_ios_outlined)
        ],
      ),
    );
  }
}
