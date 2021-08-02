import 'package:flutter/material.dart';
import 'package:proj/core/app_colors.dart';

class OrgsMenuCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function() action;

  OrgsMenuCard({
    @required this.icon,
    @required this.text,
    @required this.action,
  }): assert(icon != null),
      assert(text != null);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              width: 30,
              height: 30,
              child: Icon(
                icon,
                color: AppColors.darkGrey,
                size: 20,
              ),
            ),
            SizedBox(width: 20),
            Text(
             text,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400
              ),
            )
          ],
        ),
      ),
    );
  }
}
