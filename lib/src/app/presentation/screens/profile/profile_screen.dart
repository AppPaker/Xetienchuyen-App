// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:xetienchuyen/src/app/presentation/theme/color_theme.dart';
import 'package:xetienchuyen/src/app/presentation/utils/assets.dart';
import 'package:xetienchuyen/src/app/presentation/utils/consts.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int selectedType = 1;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: kPadding * 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Tài khoản",
                        style: TextStyle(
                            fontSize: 15,
                            color: kWhiteColor,
                            fontWeight: FontWeight.w700),
                      ),
                      SvgPicture.asset(
                        Assets.svg.settingsIconSVG,
                        height: 30,
                      ),
                    ],
                  ),
                  const SizedBox(height: kPadding * 3),
                  Container(
                      padding: const EdgeInsets.all(kPadding * 2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kRadius * 2),
                          color: kWhiteColor),
                      child: Row(children: [
                        Container(
                          padding: const EdgeInsets.all(kPadding * 2),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: kSecondaryColor, width: 5)),
                          child: const Icon(
                            Icons.camera_alt_outlined,
                            color: kSecondaryColor,
                            size: 45,
                          ),
                        ),
                        const SizedBox(width: kPadding * 2),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "Tài khoản",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: kBlackColor,
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(
                                  width: kPadding,
                                ),
                                const Text(
                                  "5.0",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: kGoldColor,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  width: kPadding,
                                ),
                                const Icon(
                                  CupertinoIcons.star_fill,
                                  color: kGoldColor,
                                  size: 20,
                                ),
                                const SizedBox(
                                  width: kPadding * 3,
                                ),
                                SvgPicture.asset(Assets.svg.editIconSVG)
                              ],
                            ),
                            const SizedBox(
                              height: kPadding * 2,
                            ),
                            const Text(
                              "0 lượt đánh giá ",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: kSecondaryColor,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ])),
                  const SizedBox(height: kPadding * 3),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                               margin: const EdgeInsets.only(right: kPadding),
                            padding: const EdgeInsets.all(kPadding * 2),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(kRadius * 1.5),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  const Color(0xFFEF18CD),
                                  const Color(0xFFEF18CD).withOpacity(0.3),
                                ],
                              ),
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "500.000đ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: kWhiteColor,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(height: kPadding,),
                                Text(
                                  "Số dư Ví Hoa Hồng",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: kWhiteColor,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )),
                      ),
                     Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: kPadding),
                            padding: const EdgeInsets.all(kPadding * 2),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(kRadius * 1.5),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  const Color(0xFFFCB82D),
                                  const Color(0xFFFCB82D).withOpacity(0.3),
                                ],
                              ),
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "1.000.000đ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: kWhiteColor,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(height: kPadding,),
                                Text(
                                  "Số dư nạp",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: kWhiteColor,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )),
                      ),
                    
                    
                    ],
                  ),
                  const SizedBox(height: kPadding * 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Giới thiệu",
                        style: TextStyle(
                            fontSize: 15,
                            color: kWhiteColor,
                            fontWeight: FontWeight.w700),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(right: kPadding * 2),
                          child: SvgPicture.asset(
                            Assets.svg.editIconSVG,
                            color: kWhiteColor,
                          )),
                    ],
                  ),
                  const SizedBox(height: kPadding),
                  Container(
                      width: size.width,
                      padding: const EdgeInsets.all(kPadding * 2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kRadius * 1.5),
                          color: kWhiteColor),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bạn chưa có giới thiệu về bản thân.",
                            style: TextStyle(
                                fontSize: 14,
                                color: kGreyColor,
                                fontWeight: FontWeight.w700),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: kPadding),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.drive_eta,
                                  color: kBlackColor,
                                ),
                                SizedBox(
                                  width: kPadding,
                                ),
                                Text(
                                  "Kinh nghiệm lái xe: Không",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: kGreyColor,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: kPadding),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.smoke_free,
                                  color: kBlackColor,
                                ),
                                SizedBox(
                                  width: kPadding,
                                ),
                                Text(
                                  "Không hút thuốc trên xe",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: kGreyColor,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                  const SizedBox(height: kPadding * 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Thông tin liên lạc",
                        style: TextStyle(
                            fontSize: 15,
                            color: kWhiteColor,
                            fontWeight: FontWeight.w700),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(right: kPadding * 2),
                          child: SvgPicture.asset(
                            Assets.svg.editIconSVG,
                            color: kWhiteColor,
                          )),
                    ],
                  ),
                  const SizedBox(height: kPadding),
                  Container(
                      width: size.width,
                      padding: const EdgeInsets.all(kPadding * 2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kRadius * 1.5),
                          color: kWhiteColor),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.mail_outline,
                                color: kBlackColor,
                              ),
                              SizedBox(
                                width: kPadding,
                              ),
                              Text(
                                "Cập nhật email để nhận thêm ưu đãi",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: kGreyColor,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: kPadding),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.check_circle,
                                  color: kSecondaryColor,
                                ),
                                SizedBox(
                                  width: kPadding,
                                ),
                                Text(
                                  "0983546543",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: kSecondaryColor,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                  const SizedBox(height: kPadding * 3),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Xe của bạn",
                        style: TextStyle(
                            fontSize: 15,
                            color: kWhiteColor,
                            fontWeight: FontWeight.w700),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: kPadding * 2),
                        child: Icon(
                          CupertinoIcons.add_circled,
                          color: kWhiteColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: kPadding),
                  Container(
                      padding: const EdgeInsets.all(kPadding * 2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kRadius * 1.5),
                          color: kWhiteColor),
                      child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.car,
                              color: kGreyColor,
                            ),
                            SizedBox(width: kPadding * 1.5),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Honda Brio (2020)",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: kGreyColor,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "Xám, 4 chỗ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: kGreyColor,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )
                          ])),
                  const SizedBox(height: kPadding * 3),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "Tuyến đường bạn thường xuyên di chuyển",
                          style: TextStyle(
                              fontSize: 15,
                              color: kWhiteColor,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: kPadding * 2),
                        child: Icon(
                          CupertinoIcons.add_circled,
                          color: kWhiteColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: kPadding),
                  Container(
                      width: size.width,
                      padding: const EdgeInsets.all(kPadding * 2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kRadius * 1.5),
                          color: kWhiteColor),
                      child: const Text(
                        "Bạn không có tuyến thường xuyên nào",
                        style: TextStyle(
                            fontSize: 14,
                            color: kGreyColor,
                            fontWeight: FontWeight.w700),
                      )),
                  const SizedBox(height: kPadding * 2),
                ],
              ),
            ),
          ),
        ));
  }
}
