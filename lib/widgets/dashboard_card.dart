import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:percent_indicator/percent_indicator.dart';
import 'package:responsive/model/info_card_model.dart';

import '../responsive/constants/constant.dart';

class DashboardCard extends StatelessWidget {
  final InfoCardModel data;
  const DashboardCard({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      height: 180,
      decoration: BoxDecoration(
        color: data.color ?? Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            data.title,
            style: TextStyle(
              color: data.color != color1 ? Colors.black : Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            data.subTitle,
            style: TextStyle(
              color: data.color != color1 ? Colors.black54 : Colors.white54,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Spacer(),
          data.pourcent != null
              ? Column(
                  children: [
                    Center(
                      child: Text(
                        "${data.pourcent.toString()}%",
                        style: TextStyle(
                          color: data.color != color1
                              ? Colors.black54
                              : Colors.white54,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    LinearPercentIndicator(
                      padding: const EdgeInsets.only(right: 15),
                      lineHeight: 8,
                      percent: data.pourcent! / 100,
                      progressColor: color3,
                      backgroundColor: color4,
                      barRadius: const Radius.circular(15),
                      animation: true,
                      animationDuration: 1000,
                    ),
                    const SizedBox(height: 20)
                  ],
                )
              : Align(
                  alignment: Alignment.bottomRight,
                  child: Column(
                    children: [
                      SvgPicture.asset("assets/icons/dart.svg"),
                      const SizedBox(height: 10)
                    ],
                  ),
                ),
        ]),
      ),
    );
  }
}
