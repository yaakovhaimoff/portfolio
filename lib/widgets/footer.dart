import 'package:flutter/cupertino.dart';

import '../constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return               Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: double.maxFinite,
      alignment: Alignment.center,
      child: const Text("Made by Yaakov Haimoff with flutter",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: CustomColor.whiteSecondary,
          )),
    );
  }
}