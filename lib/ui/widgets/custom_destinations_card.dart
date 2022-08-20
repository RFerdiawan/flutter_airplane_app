import 'package:airplanes/model/destination_model.dart';
import 'package:airplanes/shared/theme.dart';
import 'package:airplanes/ui/pages/detail_page.dart';
import 'package:flutter/material.dart';

class CustomDestinationsCard extends StatelessWidget {
  final DestinationModel destinations;

  const CustomDestinationsCard(
    this.destinations, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(left: defaultMargin),
        width: 200,
        height: 323,
        decoration: BoxDecoration(
          color: kInnerBackgroundColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 20, left: 10, right: 10),
            width: 180,
            height: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              image: DecorationImage(
                image: NetworkImage(destinations.imageUrl),
              ),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 55,
                height: 30,
                decoration: BoxDecoration(
                  color: kInnerBackgroundColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(defaultRadius),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 18,
                      width: 18,
                      margin: EdgeInsets.only(right: 4),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icon_star.png'),
                        ),
                      ),
                    ),
                    Text(
                      '${destinations.rating}',
                      style: whiteTextStyle.copyWith(fontWeight: medium),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  destinations.name,
                  style: whiteTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  destinations.city,
                  style: greyTextStyle.copyWith(fontWeight: light),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
