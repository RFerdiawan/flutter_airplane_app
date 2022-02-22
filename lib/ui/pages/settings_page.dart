import 'package:airplanes/shared/theme.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Text(
          'Settings Page',
          style: whiteTextStyle,
        ),
      ),
    );
  }
}
