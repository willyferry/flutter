import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class Button extends StatelessWidget {
  final String text;
  final double width;
  final String routesName;

  const Button({
    Key? key,
    required this.text,
    required this.routesName,
    this.width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 55,
      margin: const EdgeInsets.only(bottom: 20),
      child: TextButton(
        onPressed: () => Navigator.pushNamed(context, routesName),
        style: TextButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultRadius))),
        child: Text(
          text,
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
