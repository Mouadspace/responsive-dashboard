import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:responsive/model/info_card_model.dart';

import '../responsive/constants/constant.dart';
import 'custom_section.dart';
import 'dashboard_card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomSection(
      title: "Today",
      child: SizedBox(
        width: 538,
        height: 180,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: infoCardList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 12),
              child: DashboardCard(data: infoCardList[index]),
            );
          },
        ),
      ),
    );
  }
}
