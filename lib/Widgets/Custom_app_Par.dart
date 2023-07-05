import 'package:flutter/material.dart';

import 'Custom_Search_Icon.dart';

class CustomAppPar extends StatelessWidget {
  const CustomAppPar({super.key, required this.Title, required this.icon});
  final String Title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          Title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
        Spacer(),
        CustomSearchIcon(
          icon: icon,
        ),
      ],
    );
  }
}
