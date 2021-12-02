import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class GetSartedPage extends StatelessWidget {
  const GetSartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image_get_started.png'),
                fit: BoxFit.cover),
          ),
        ),
        Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Drakorasia',
              style: whiteTextStyle.copyWith(
                fontSize: 32,
                fontWeight: semiBold,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                'Watch your favorit drama \nin this app for free!',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                ),
                textAlign: TextAlign.center,
                // margin in text
              ),
            ),
            Container(
              width: 220,
              height: 55,
              margin: const EdgeInsets.only(top: 50, bottom: 80),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-up');
                },
                style: TextButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                ),
                child: Text("Let's Watch Now!",
                    style: whiteTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    )),
              ),
            )
          ],
        ))
      ],
    ));
  }
}
