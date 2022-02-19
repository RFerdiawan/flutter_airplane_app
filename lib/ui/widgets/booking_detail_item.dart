import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class BookingDetailItem extends StatelessWidget {
  final String title;
  final String detail;
  final Color warna;
  const BookingDetailItem({
    Key? key,
    required this.title,
    required this.detail,
    this.warna = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_checklist.png'),
              ),
            ),
          ),
          Text(
            title,
            style: whiteTextStyle,
          ),
          Spacer(),
          Text(
            detail,
            style: whiteTextStyle.copyWith(
              fontWeight: semiBold,
              color: warna,
            ),
          ),
        ],
      ),
    );
  }
}
