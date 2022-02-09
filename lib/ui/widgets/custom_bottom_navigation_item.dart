import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final String imageUrl;
  final bool isSelected;
  const CustomBottomNavigationItem({
    Key? key,
    required this.imageUrl,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          height: 24,
          width: 24,
          child: Image.asset(
            imageUrl,
            color: isSelected ? kPrimaryColor : kGreyColor,
          ),
        ),
        Container(
          height: 2,
          width: 30,
          decoration: BoxDecoration(
            color: isSelected ? kPrimaryColor : kTransparentColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
      ],
    );
  }
}
