import 'package:airplanes/shared/theme.dart';
import 'package:airplanes/ui/widgets/custom_destinations_card.dart';
import 'package:airplanes/ui/widgets/custom_destinations_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin:
            EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 30),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy, \nKezia Anne',
                    style: whiteTextStyle.copyWith(
                        fontWeight: semiBold, fontSize: 24),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Where to fly today?',
                    style:
                        greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
                  )
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/image_profile.png'))),
            )
          ],
        ),
      );
    }

    Widget popularDestinations() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CustomDestinationsCard(
                name: 'Lake Ciliwung',
                city: 'Tangerang',
                imageUrl: 'assets/image_destination1.png',
                rating: 4.5,
              ),
              CustomDestinationsCard(
                name: 'White Houses',
                city: 'Santorini',
                imageUrl: 'assets/image_destination2.png',
                rating: 4.7,
              ),
              CustomDestinationsCard(
                name: 'Hill Heyo',
                city: 'Monaco',
                imageUrl: 'assets/image_destination3.png',
                rating: 4.8,
              ),
              CustomDestinationsCard(
                name: 'Menarra',
                city: 'Japan',
                imageUrl: 'assets/image_destination4.png',
                rating: 5.0,
              ),
              CustomDestinationsCard(
                name: 'Payung Teduh',
                city: 'Singapore',
                imageUrl: 'assets/image_destination5.png',
                rating: 4.8,
              )
            ],
          ),
        ),
      );
    }

    Widget newDestinations() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
          bottom: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: whiteTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            CustomDestinationTile(
              name: 'Pura',
              city: 'Bali',
              imageUrl: 'assets/image_destination6.png',
              rating: 4.9,
            ),
            CustomDestinationTile(
              name: 'Sydney Opera',
              city: 'Australia',
              imageUrl: 'assets/image_destination7.png',
              rating: 4.7,
            ),
            CustomDestinationTile(
              name: 'Roma',
              city: 'Italy',
              imageUrl: 'assets/image_destination8.png',
              rating: 4.8,
            ),
            CustomDestinationTile(
              name: 'Payung Teduh',
              city: 'Singapore',
              imageUrl: 'assets/image_destination9.png',
              rating: 4.5,
            ),
            CustomDestinationTile(
              name: 'Hill Hey',
              city: 'Monaco',
              imageUrl: 'assets/image_destination10.png',
              rating: 4.7,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestinations(),
        newDestinations(),
      ],
    );
  }
}
