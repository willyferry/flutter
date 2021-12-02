import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class BottomNavigation extends StatelessWidget {
  final String icon;
  final bool isSelected;

  const BottomNavigation(
      {Key? key, required this.icon, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration:
              BoxDecoration(image: DecorationImage(image: AssetImage(icon))),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              color: isSelected ? kPrimaryColor : kTransparentColor),
        )
      ],
    );
  }
}
