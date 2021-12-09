import 'package:airplane/ui/widgets/card_carousel.dart';
import 'package:airplane/ui/widgets/card_container.dart';
import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin:
            EdgeInsets.only(right: defaultMargin, left: defaultMargin, top: 20),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Drama Korea, \nAsia',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Watch your favorit drakor',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image_profile.png'),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      );
    }

    Widget carousel() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            // scrollDirection: Axis.horizontal,
            children: const [
              CardCarousel(
                title: "Kapuas",
                subtitle: "Kalimantan",
                imagePath: "assets/image_destination1.png",
                score: "4.5",
              ),
              CardCarousel(
                title: "Anu",
                subtitle: "Jakarta",
                imagePath: "assets/image_destination2.png",
                score: "4.2",
              ),
              CardCarousel(
                title: "Sorewa",
                subtitle: "Japan",
                imagePath: "assets/image_destination3.png",
                score: "4.6",
              ),
              CardCarousel(
                title: "Aree",
                subtitle: "Kyoto",
                imagePath: "assets/image_destination4.png",
                score: "5.0",
              ),
              CardCarousel(
                title: "Kono wa",
                subtitle: "China",
                imagePath: "assets/image_destination5.png",
                score: "3.5",
              ),
            ],
          ),
        ),
      );
    }

    Widget container() {
      return Container(
          margin: EdgeInsets.only(
            top: 30,
            left: defaultMargin,
            right: defaultMargin,
            bottom: 140,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Popular Drakor',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const CardContainer(
                title: "Kapuas",
                subtitle: "Kalimantan Barat",
                imagePath: "assets/image_photo1.png",
                rating: "4.5",
              ),
              const CardContainer(
                title: "Kyoto",
                subtitle: "Japan",
                imagePath: "assets/image_photo2.png",
                rating: "4.3",
              ),
              const CardContainer(
                title: "Amazon",
                subtitle: "Luar Negeri",
                imagePath: "assets/image_photo3.png",
                rating: "4.9",
              ),
              const CardContainer(
                title: "Sungai Jawi",
                subtitle: "Pontianak",
                imagePath: "assets/image_photo3.png",
                rating: "4.4",
              ),
            ],
          ));
    }

    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          header(),
          carousel(),
          container(),
        ],
      )),
    );
  }
}
