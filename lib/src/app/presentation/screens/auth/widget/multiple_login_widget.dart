
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:xetienchuyen/src/app/presentation/theme/color_theme.dart';
import 'package:xetienchuyen/src/app/presentation/utils/consts.dart';

class MultipleLoginWidget extends StatelessWidget {
  final String img;
  final String title;
  final Color? color;

  const MultipleLoginWidget({
    super.key,
    required this.img,
    required this.title,
     this.color ,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kPadding * 2),
      decoration: BoxDecoration(
          color: color ?? kWhiteColor,
          borderRadius: BorderRadius.circular(kRadius * 2.5)),
      child: Row(
        children: [
          SvgPicture.asset(img, height: 25),
          const SizedBox(width: kPadding*2),
           Text(title.toUpperCase(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style:  TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color:color!=null? kWhiteColor: kPrimaryColor)),
        ],
      ),
    );
  }
}
