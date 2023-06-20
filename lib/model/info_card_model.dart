import 'package:flutter/material.dart';
import 'package:responsive/responsive/constants/constant.dart';

class InfoCardModel {
  final String title, subTitle;
  final Color? color;
  final int? pourcent;
  final String? iconSrc;

  const InfoCardModel(
      {required this.title,
      required this.subTitle,
      this.pourcent,
      this.color,
      this.iconSrc});
}

List<InfoCardModel> infoCardList = [
  const InfoCardModel(
      pourcent: 100, subTitle: "Go on", title: "480", color: color1),
  const InfoCardModel(pourcent: 60, subTitle: "Attention", title: "180"),
  const InfoCardModel(pourcent: 10, subTitle: "Deal", title: "72"),
  const InfoCardModel(
      subTitle: "No intention",
      title: "72",
      iconSrc: 'assets/icons/dart.svg',
      color: color2),
];
