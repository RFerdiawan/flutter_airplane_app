import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final bool obscureText;
  final String hintText;
  final TextEditingController controller;

  const CustomTextFormField({
    Key? key,
    required this.title,
    this.obscureText = false,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: whiteTextStyle.copyWith(
              fontSize: 14,
              fontWeight: regular,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            controller: controller,
            obscureText: obscureText,
            style: whiteTextStyle,
            cursorColor: kWhiteColor,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: greyTextStyle,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(
                  color: kPrimaryColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  borderSide: BorderSide(
                    color: kInactiveColor,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
