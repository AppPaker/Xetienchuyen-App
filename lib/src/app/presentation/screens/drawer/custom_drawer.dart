// ignore_for_file: use_build_context_synchronously, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:xetienchuyen/src/app/presentation/theme/color_theme.dart';
import 'package:xetienchuyen/src/app/presentation/utils/assets.dart';
import 'package:xetienchuyen/src/app/presentation/utils/consts.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.topEnd,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(kRadius * 2),
              bottomLeft: Radius.circular(kRadius * 2)),
          child: SafeArea(
            child: Scaffold(
              backgroundColor: kWhiteColor,
              appBar: AppBar(
                backgroundColor: kWhiteColor,
                elevation: 0,
                title: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: kPadding * 2),
                      child: SvgPicture.asset(
                        Assets.svg.filterIconSVG,
                        color: kPrimaryColor,
                      ),
                    ),
                    const Text("Sắp xếp theo",
                        style: TextStyle(
                          color: kBlackColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        )),
                  ],
                ),
                automaticallyImplyLeading: false,
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: kPadding * 2),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        CupertinoIcons.clear,
                        color: kBlackColor,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kPadding * 3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: kPadding * 2),
                      const Text("Giá",
                          style: TextStyle(
                            color: kBlackColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          )),
                      const SizedBox(height: kPadding),
                      const Row(
                        children: [
                          Icon(
                            Icons.check_circle_outline,
                            color: kBlackColor,
                            size: 20,
                          ),
                          SizedBox(width: kPadding),
                          Text("Giảm dần",
                              style: TextStyle(
                                color: kBlackColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              )),
                        ],
                      ),
                      const SizedBox(height: kPadding),
                      const Row(
                        children: [
                          Icon(
                            Icons.check_circle_outline,
                            color: kBlackColor,
                            size: 20,
                          ),
                          SizedBox(width: kPadding),
                          Text("Tăng dần",
                              style: TextStyle(
                                color: kBlackColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              )),
                        ],
                      ),
                      const SizedBox(height: kPadding * 3),
                      const Text("Thời gian xuất phát",
                          style: TextStyle(
                            color: kBlackColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          )),
                      const SizedBox(height: kPadding),
                      Container(
                        padding: const EdgeInsets.all(kPadding / 2),
                        decoration: BoxDecoration(
                            color: kSecondaryColor.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(kRadius)),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.check_circle,
                              color: kSecondaryColor,
                              size: 20,
                            ),
                            SizedBox(width: kPadding),
                            Text("Sớm nhất",
                                style: TextStyle(
                                  color: kSecondaryColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(height: kPadding),
                      const Row(
                        children: [
                          Icon(
                            Icons.check_circle_outline,
                            color: kBlackColor,
                            size: 20,
                          ),
                          SizedBox(width: kPadding),
                          Text("Muộn nhất",
                              style: TextStyle(
                                color: kBlackColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
