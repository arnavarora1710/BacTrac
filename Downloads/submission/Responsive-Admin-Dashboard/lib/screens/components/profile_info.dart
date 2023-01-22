import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';
import 'package:responsive_admin_dashboard/constants/responsive.dart';
import 'package:responsive_admin_dashboard/screens/components/submit_button.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: appPadding),
          padding: EdgeInsets.symmetric(
            horizontal: appPadding,
            vertical: appPadding / 2,
          ),
          child: Row(
            children: [
              ButtonWidget(text: "+ SUBMIT REVIEW", onClicked: (() => {}))
            ],
          ),
        )
      ],
    );
  }
}
