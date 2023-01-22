import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';
import 'package:responsive_admin_dashboard/data/data.dart';

import 'discussion_info_detail.dart';

class Discussions extends StatelessWidget {
  const Discussions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 540,
      padding: EdgeInsets.all(appPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Places (Sorted by Cleanliness)',
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          SizedBox(
            height: appPadding,
          ),
          Expanded(
            child: ListView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: discussionData.length,
              itemBuilder: (context, index) => DiscussionInfoDetail(
                info: discussionData[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}
