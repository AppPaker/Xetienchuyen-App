// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:xetienchuyen/src/app/presentation/components/custom_button.dart';
import 'package:xetienchuyen/src/app/presentation/theme/color_theme.dart';
import 'package:xetienchuyen/src/app/presentation/utils/assets.dart';
import 'package:xetienchuyen/src/app/presentation/utils/consts.dart';
import 'package:flutter/material.dart';

class BookingSuccessfulScreen extends StatefulWidget {
  const BookingSuccessfulScreen({
    super.key,
  });

  @override
  State<BookingSuccessfulScreen> createState() =>
      _BookingSuccessfulScreenState();
}

class _BookingSuccessfulScreenState extends State<BookingSuccessfulScreen> {
  final TextEditingController notesController = TextEditingController();
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: kPrimaryColor,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(kPadding * 2),
          child: SizedBox(
            height: size.height / 100 * 6,
            child: CustomButton(
                onPressed: () {
              
                },
                showLoadingIndicator: true,
                text: "Xem chuyến đi của tôi"),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SizedBox(
                        height: 350,
                        width: 350,
                        child: Image.asset(
                          Assets.images.bookingCompleteIMG,
                        )),
                  ),
                  const SizedBox(height: kPadding * 3),

                  const Center(
                    child: Text(
                      "Đặt chuyến thành công",
                      style: TextStyle(
                          fontSize: 15,
                          color: kWhiteColor,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(height: kPadding),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: kPadding * 3),
                      child: Text(
                        "Sau khi tài xế xác nhận, hãy liện hệ với tài xế để thống nhất về điểm đón và cách thức thanh toán",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14,
                            color: kWhiteColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  const SizedBox(height: kPadding * 2),
                  Container(
                    padding: const EdgeInsets.all(kPadding * 2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kRadius * 2),
                        color: kGoldColor),
                    child: const Center(
                      child: Text(
                        "Chờ tài xế xác nhận",
                        style: TextStyle(
                            fontSize: 20,
                            color: kWhiteColor,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  const SizedBox(height: kPadding * 2),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(kPadding * 2),
                          decoration: BoxDecoration(
                              color: kWhiteColor,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: kTBorderColor)),
                          child: const Row(
                            children: [
                              Icon(
                                CupertinoIcons.calendar,
                                color: kBlackColor,
                              ),
                              SizedBox(
                                width: kPadding,
                              ),
                              Text(
                                "Thứ 3, 16/07/2024",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: kSecondaryColor,
                                    fontSize: 14),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: kPadding,
                      ),
                      Container(
                        padding: const EdgeInsets.all(kPadding * 2),
                        decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: kTBorderColor)),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              Assets.svg.personAddSVG,
                              height: 20,
                              color: kBlackColor,
                            ),
                            const SizedBox(
                              width: kPadding / 2,
                            ),
                            const Text(
                              "1",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: kBlackColor,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: kPadding * 2),
                  SizedBox(
                    height: size.height * 0.63,
                    child: Stack(
                      children: [
                        Container(
                           height: size.height * 0.22,
                       
                          padding: const EdgeInsets.all(kPadding * 2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(kRadius * 2),
                              color: kWhiteColor),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Tìm tài xế có cùng lộ trình để di chuyển cùng nhau",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: kBlackColor,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(height: kPadding * 2),
                              Container(
                                padding: const EdgeInsets.all(kPadding * 2),
                                decoration: BoxDecoration(
                                    color: kSecondaryColor.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: kTBorderColor)),
                                child: const Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.calendar,
                                      color: kBlackColor,
                                    ),
                                    SizedBox(
                                      width: kPadding,
                                    ),
                                    Text(
                                      "Thứ 3, 16/07/2024",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: kSecondaryColor,
                                          fontSize: 14),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 140,
                          left: 20,
                          right: 20,
                          child: Container(
                              decoration: BoxDecoration(
                                color: kWhiteColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: kBlackColor.withOpacity(0.2),
                                    blurRadius: 10.0,
                                    spreadRadius: 5,
                                    offset: const Offset(5, 5.0),
                                  ),
                                ],
                                borderRadius:
                                    BorderRadius.circular(kRadius * 2),
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: kPadding * 2,
                                          vertical: kPadding),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "TP. Hà Nội",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: kSecondaryColor,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Container(
                                            padding:
                                                const EdgeInsets.all(kPadding),
                                            decoration: BoxDecoration(
                                                color: kSecondaryColor
                                                    .withOpacity(0.2),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        kRadius * 3),
                                                border: Border.all(
                                                    color: kTBorderColor)),
                                            child: const Row(
                                              children: [
                                                Icon(
                                                  Icons.access_time_rounded,
                                                  color: kSecondaryColor,
                                                  size: 20,
                                                ),
                                                SizedBox(width: kPadding),
                                                Text(
                                                  "15:20",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: kSecondaryColor,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: kPadding),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: kPadding * 2,
                                      ),
                                      child: Text(
                                        "Q.Thanh Xuân, TP. Hà Nội",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: kBlackColor,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    const SizedBox(height: kPadding * 2),
                                    // <------------------------  DIVIDER ------------------------>
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: kPadding * 2,
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                              child: Divider(
                                            color: kLightGreyColor,
                                          )),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: kPadding),
                                            child: Icon(
                                              Icons.keyboard_arrow_down,
                                              color: kBlackColor,
                                              size: 20,
                                            ),
                                          ),
                                          Expanded(
                                              child: Divider(
                                            color: kLightGreyColor,
                                          )),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: kPadding * 2),

                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: kPadding * 2,
                                      ),
                                      child: Text(
                                        "TP. Sóc Trăng",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: kSecondaryColor,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    const SizedBox(height: kPadding),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: kPadding * 2),
                                      child: Text(
                                        "Q.Thanh Xuân, TP. Hà Nội",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: kBlackColor,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: kPadding * 2,
                                      ),
                                      child: Divider(
                                        height: 40,
                                        color: kLightGreyColor,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: kPadding * 2,
                                      ),
                                      child: Row(
                                        children: [
                                          const Text(
                                            "Số lượng hành khách",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: kSecondaryColor,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          const Spacer(),
                                          SvgPicture.asset(
                                            Assets.svg.personAddSVG,
                                            height: 20,
                                            color: kSecondaryColor,
                                          ),
                                          const SizedBox(
                                            width: kPadding / 2,
                                          ),
                                          const Text(
                                            "1",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: kSecondaryColor,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: kPadding),

                                    Container(
                                      padding:
                                          const EdgeInsets.all(kPadding * 2),
                                      decoration: const BoxDecoration(
                                        color: kTertiaryColor,
                                        borderRadius: BorderRadius.only(
                                            bottomLeft:
                                                Radius.circular(kRadius * 2),
                                            bottomRight:
                                                Radius.circular(kRadius * 2)),
                                      ),
                                      child: const Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Giá",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: kLightGreyColor,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              Text(
                                                "1 hành khách x 300.000 đ/chỗ",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: kWhiteColor,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                          Divider(
                                            height: 30,
                                            color: kWhiteColor,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Tổng giá",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: kWhiteColor,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              Text(
                                                "300.000đ",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: kWhiteColor,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ])),
                        ),
                      ],
                    ),
                  ),
                 const SizedBox(height: kPadding * 2),
                ],
              ),
            ),
          ),
        ));
  }
}
