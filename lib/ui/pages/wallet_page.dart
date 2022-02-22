import 'package:airplanes/shared/theme.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
          child: Text(
        'Wallet Page',
        style: whiteTextStyle,
      )),
    );
  }
}
