import 'package:airplane/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget imageHolder() {
      return Container(
        width: 300,
        height: 233,
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/image_card.png'),
            ),
            boxShadow: [
              BoxShadow(
                color: kPrimaryColor.withOpacity(0.5),
                blurRadius: 50,
                offset: const Offset(0, 10),
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'name',
                        style: whiteTextStyle.copyWith(fontWeight: light),
                      ),
                      Text(
                        'Willy Ferry',
                        style: whiteTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: medium,
                        ),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Container(
                    width: 24,
                    height: 24,
                    margin: const EdgeInsets.only(right: 16),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/icon_plane.png'),
                    ))),
                Text(
                  'Pay',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                )
              ],
            ),
            Container(
                margin: const EdgeInsets.only(top: 71),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Balance',
                      style: whiteTextStyle.copyWith(
                          fontSize: 14, fontWeight: light),
                    ),
                    Text(
                      'Rp, 200.000',
                      style: whiteTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: medium,
                      ),
                    )
                  ],
                ))
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Text(
              'Bonus Page',
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: medium,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'You can watch drakors for free here!',
              style: greyTextStyle.copyWith(
                fontSize: 14,
                fontWeight: light,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            imageHolder(),
            title(),
            const Button(text: "Start Watching Now", routesName: '/main-page')
          ],
        ),
      ),
    );
  }
}
