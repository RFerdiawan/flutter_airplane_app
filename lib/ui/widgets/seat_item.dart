import 'package:airplanes/cubit/seat_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/theme.dart';

class SeatItem extends StatelessWidget {
  // NOTE: 0. UNAVAILABLE 1. AVAILABLE 2. SELECTED
  final bool isAvailable;
  final String id;

  const SeatItem({Key? key, this.isAvailable = true, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SeatCubit>().isSelected(id);

    backgroundColor() {
      if (!isAvailable) {
        return kUnavailableColor;
      } else {
        if (isSelected) {
          return kPrimaryColor;
        } else {
          return kAvailableColor;
        }
      }
    }

    borderColor() {
      if (!isAvailable) {
        return kUnavailableColor;
      } else {
        return kPrimaryColor;
      }
    }

    child() {
      if (isSelected) {
        return Center(
            child: Text(
          'YOU',
          style: whiteTextStyle.copyWith(
            fontWeight: semiBold,
          ),
        ));
      } else {
        return SizedBox();
      }
    }

    return GestureDetector(
      onTap: () {
        if (isAvailable) {
          context.read<SeatCubit>().selectSeat(id);
        }
      },
      child: Container(
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
      ),
    );
  }
}
