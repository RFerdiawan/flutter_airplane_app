import 'package:flutter/material.dart';
import 'package:airplanes/shared/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        padding: EdgeInsets.all(defaultMargin),
        width: 300,
        height: 211,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image_card.png'),
          ),
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor.withOpacity(0.5),
              blurRadius: 50,
              offset: Offset(0, 10),
            ),
          ],
        ),
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
                        'Name',
                        style: whiteTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        'Kezia Anne',
                        style: whiteTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: medium,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 6),
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icon_airplane.png'),
                        ),
                      ),
                    ),
                    Text(
                      'Pay',
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 41,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Balance',
                  style: whiteTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: light,
                  ),
                ),
                Text(
                  'IDR 280.000.000',
                  style: whiteTextStyle.copyWith(
                    fontSize: 26,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget contentSection() {
      return Container(
        margin: EdgeInsets.only(
          top: 80,
          bottom: 50,
        ),
        child: Center(
          child: Column(
            children: [
              Text(
                'Big Bonus 🎉',
                style: whiteTextStyle.copyWith(
                  fontSize: 32,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'We give you early credit so that\nyou can buy a flight ticket',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    }

    Widget startButton() {
      return Container(
        width: 220,
        height: 55,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          child: Text(
            'Start Fly Now',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [bonusCard(), contentSection(), startButton()],
        ),
      ),
    );
  }
}
