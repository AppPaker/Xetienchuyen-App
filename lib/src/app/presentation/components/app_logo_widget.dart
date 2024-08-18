import 'package:flutter_svg/svg.dart';
import 'package:xetienchuyen/src/app/presentation/utils/assets.dart';
import 'package:flutter/material.dart';

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
   
    return SvgPicture.asset(
      Assets.svg.appLogoSVG,
 
      height: height,
    );
  }
}
