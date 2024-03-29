import 'package:airplanes/cubit/page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/theme.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final int index;
  final String imageUrl;

  const CustomBottomNavigationItem({
    Key? key,
    required this.index,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Container(
            height: 24,
            width: 24,
            child: Image.asset(
              imageUrl,
              color: context.read<PageCubit>().state == index
                  ? kPrimaryColor
                  : kGreyColor,
            ),
          ),
          Container(
            height: 2,
            width: 30,
            decoration: BoxDecoration(
              color: context.read<PageCubit>().state == index
                  ? kPrimaryColor
                  : kTransparentColor,
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
          ),
        ],
      ),
    );
  }
}
