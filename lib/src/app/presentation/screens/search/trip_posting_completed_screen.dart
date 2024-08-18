import 'package:flutter/cupertino.dart';
import 'package:xetienchuyen/src/app/presentation/components/custom_button.dart';
import 'package:xetienchuyen/src/app/presentation/routes/routes_navigator.dart';
import 'package:xetienchuyen/src/app/presentation/screens/search/route_registration_screen.dart';
import 'package:xetienchuyen/src/app/presentation/theme/color_theme.dart';
import 'package:xetienchuyen/src/app/presentation/utils/assets.dart';
import 'package:xetienchuyen/src/app/presentation/utils/consts.dart';
import 'package:flutter/material.dart';

class TripPostingCompletedScreen extends StatefulWidget {
  const TripPostingCompletedScreen({super.key});

  @override
  State<TripPostingCompletedScreen> createState() =>
      _TripPostingCompletedScreenState();
}

class _TripPostingCompletedScreenState
    extends State<TripPostingCompletedScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: kPrimaryColor,
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
                          Assets.images.carIMG,
                        )),
                  ),
                  const SizedBox(height: kPadding * 3),
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
                              Icons.notifications,
                              color: kGreyColor,
                            ),
                            SizedBox(width: kPadding * 1.5),
                            Flexible(
                              child: Text(
                                "Nhận thông báo ngay khi có khách tìm chuyến theo tuyến này",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: kGreyColor,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            SizedBox(width: kPadding),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: kGreyColor,
                            ),
                          ])),
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
                              Icons.notifications,
                              color: kGreyColor,
                            ),
                            SizedBox(width: kPadding * 1.5),
                            Flexible(
                              child: Text(
                                "Chạy xe thường xuyên, đăng ký ngay đăng chuyến tự động",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: kGreyColor,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            SizedBox(width: kPadding),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: kGreyColor,
                            ),
                          ])),
                  const SizedBox(height: kPadding * 2),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: kPadding),
                          child: SizedBox(
                            height: size.height / 100 * 6,
                            child: CustomButton(
                                negativeColor: true,
                                onPressed: () {
                                RouteNavigator.route(
                                      context, const RouteRegistrationScreen());
                                },
                                showLoadingIndicator: true,
                                text: "Đăng chuyến khác"),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: kPadding),
                          child: SizedBox(
                            height: size.height / 100 * 6,
                            child: CustomButton(
                                onPressed: () {
                                 
                                },
                                showLoadingIndicator: true,
                                text: "Xem chuyến đi"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: kPadding * 2),
                ],
              ),
            ),
          ),
        ));
  }
}
