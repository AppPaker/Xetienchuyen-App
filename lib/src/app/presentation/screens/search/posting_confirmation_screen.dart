import 'package:flutter/cupertino.dart';
import 'package:xetienchuyen/src/app/presentation/components/custom_app_bar.dart';
import 'package:xetienchuyen/src/app/presentation/components/custom_button.dart';
import 'package:xetienchuyen/src/app/presentation/routes/routes_navigator.dart';
import 'package:xetienchuyen/src/app/presentation/screens/search/trip_posting_completed_screen.dart';
import 'package:xetienchuyen/src/app/presentation/theme/color_theme.dart';
import 'package:xetienchuyen/src/app/presentation/utils/consts.dart';
import 'package:flutter/material.dart';

class PostingConfirmationScreen extends StatefulWidget {
  const PostingConfirmationScreen({
    super.key,
  }); 

  @override
  State<PostingConfirmationScreen> createState() =>
      _PostingConfirmationScreenState();
}

class _PostingConfirmationScreenState extends State<PostingConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: kPrimaryColor,
        appBar:
            customAppBar(title: "Chi tiết chuyến đi", isDetail: true, context),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(kPadding * 2),
          child: SizedBox(
            height: size.height / 100 * 6,
            child: CustomButton(
                onPressed: () {
                  RouteNavigator.route(
                      context, const TripPostingCompletedScreen());
                },
                showLoadingIndicator: true,
                text: "Đăng chuyến"),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.5,
                    child: Stack(
                      children: [
                        Container(
                          height: 150,
                          padding: const EdgeInsets.all(kPadding * 2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(kRadius * 2),
                              color: kWhiteColor),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                          top: 100,
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
                                    const SizedBox(height: kPadding),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: kPadding * 2,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "TP. Sóc Trăng",
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
                                          horizontal: kPadding * 2),
                                      child: Text(
                                        "TP. Sóc Trăng, T. Sóc Trăng",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: kBlackColor,
                                            fontWeight: FontWeight.w400),
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
                                                "Số chỗ ngồi",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: kLightGreyColor,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              Text(
                                                "3 chỗ",
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
                                                "Giá của mỗi chỗ ngồi",
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
                  const SizedBox(height: kPadding),
                  const Text(
                    "Thông tin xe",
                    style: TextStyle(
                        fontSize: 15,
                        color: kWhiteColor,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: kPadding * 2),
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
                                  "HYUNDAI Stargazer (2023)",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: kGreyColor,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "Đen, 7 chỗ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: kGreyColor,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )
                          ])),
                  const SizedBox(height: kPadding * 3),
                  const Text(
                    "Ghi chú",
                    style: TextStyle(
                        fontSize: 15,
                        color: kWhiteColor,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: kPadding * 2),
                  Container(
                      padding: const EdgeInsets.all(kPadding * 2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kRadius * 1.5),
                          color: kWhiteColor),
                      child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.bubble_middle_bottom,
                              color: kGreyColor,
                            ),
                            SizedBox(width: kPadding * 1.5),
                            Text(
                              "Ghi lời nhắn (địa điểm, hành lý, ...)",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: kGreyColor,
                                  fontWeight: FontWeight.w700),
                            ),
                          ])),
                  const SizedBox(height: kPadding * 2),
                ],
              ),
            ),
          ),
        ));
  }
}
