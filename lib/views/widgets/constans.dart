import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xff62FCD7);
const kNotesBox = 'notes';

class GradientColorModel {
  final Color startColor;
  final Color endColor;

  GradientColorModel({required this.startColor, required this.endColor});
}

final List<GradientColorModel> kGradients = [
  GradientColorModel(
    startColor: const Color(0xffFFCC80),
    endColor: const Color(0xffF48FB1),
  ),
  GradientColorModel(
    startColor: const Color(0xff80DEEA),
    endColor: const Color(0xffCF93D9),
  ),
  GradientColorModel(
    startColor: const Color(0xffE7EDAF),
    endColor: const Color(0xff82FFB1),
  ),
  GradientColorModel(
    startColor: const Color(0xffFFAB91),
    endColor: const Color(0xffFFCC80),
  ),
];
