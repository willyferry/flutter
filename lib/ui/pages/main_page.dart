import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import '../widgets/bottom_navigation.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bottomNavigation() {
      return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              width: double.infinity,
              height: 60,
              margin: EdgeInsets.only(
                bottom: 30,
                left: defaultMargin,
                right: defaultMargin,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  color: kWhiteColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  BottomNavigation(
                      icon: 'assets/icon_home.png', isSelected: true),
                  BottomNavigation(icon: 'assets/icon_booking.png'),
                  BottomNavigation(icon: 'assets/icon_card.png'),
                  BottomNavigation(icon: 'assets/icon_settings.png'),
                ],
              )));
    }

    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: Stack(
          children: [
            Text('MainPage'),
            bottomNavigation(),
          ],
        ));
  }
}
