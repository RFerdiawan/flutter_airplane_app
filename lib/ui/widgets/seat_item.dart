import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class SeatItem extends StatelessWidget {
  // NOTE: 0. UNAVAILABLE 1. AVAILABLE 2. SELECTED
  final int status;
  const SeatItem({
    Key? key,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return kUnavailableColor;
        case 1:
          return kAvailableColor;
        case 2:
          return kPrimaryColor;
        default:
          return kUnavailableColor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return kUnavailableColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kPrimaryColor;
        default:
          return kUnavailableColor;
      }
    }

    child() {
      switch (status) {
        case 0:
          return Center(
              child: Text(
            '',
            style: greyTextStyle.copyWith(
              fontSize: 16,
            ),
          ));
        case 1:
          return Center(
              child: Text(
            '',
            style: greyTextStyle.copyWith(
              fontSize: 16,
            ),
          ));
        case 2:
          return Center(
              child: Text(
            'YOU',
            style: whiteTextStyle.copyWith(
              fontWeight: semiBold,
            ),
          ));
        default:
          return Center(
              child: Text(
            '',
            style: greyTextStyle.copyWith(
              fontSize: 16,
            ),
          ));
      }
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: backgroundColor(),
        borderRadius: BorderRadius.circular(defaultRadius),
        border: Border.all(
          color: borderColor(),
          width: 3,
        ),
      ),
      child: child(),
    );
  }
}
