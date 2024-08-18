// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:xetienchuyen/src/app/presentation/components/custom_app_bar.dart';
import 'package:xetienchuyen/src/app/presentation/components/custom_button.dart';
import 'package:xetienchuyen/src/app/presentation/routes/routes_navigator.dart';
import 'package:xetienchuyen/src/app/presentation/screens/search/booking_succesful_screen.dart';
import 'package:xetienchuyen/src/app/presentation/theme/color_theme.dart';
import 'package:xetienchuyen/src/app/presentation/utils/assets.dart';
import 'package:xetienchuyen/src/app/presentation/utils/consts.dart';
import 'package:flutter/material.dart';

class TripDetailsScreen extends StatefulWidget {
  const TripDetailsScreen({
    super.key,
  });

  @override
  State<TripDetailsScreen> createState() => _TripDetailsScreenState();
}

class _TripDetailsScreenState extends State<TripDetailsScreen> {
  final TextEditingController notesController = TextEditingController();
  bool isOn = false;
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
                      context, const BookingSuccessfulScreen());
                },
                showLoadingIndicator: true,
                text: "Tiếp tục"),
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
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://s3-alpha-sig.figma.com/img/69f8/72de/045569de9ba67256a6c8e13c63449bc9?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=qSY5sGKLkYweQzF-1yBQj0C-X7OnKJBEX-B8Hon3S73w-isqR2vz43eyRIMjzusSZh6oOlsWnrntnG5pVX79SNxkAIfCDxC0AvPFgZqUbAzUxxKqzOG~~~0CyQnbsh6rPIk7obncEYMrvJ88~tV6NOCiwtMNN8zYhId~vs~PyNMxT-dKMcfQj~aRysyc-tCBi1DY3K5~FzwpD4pDHRG6-DNJqPs2IsMwo2I8doHShKBJIchcw3hSH~SPf4oT78rjAbtc311jSl31vt3VmTEcv5mlX9327oIaygE059PrCGqENKCmKrbuloYLiDjXf4GhBhRqVCWqlt7k66fdemYn~g__"),
                                ),
                                SizedBox(width: kPadding * 1.5),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Xe tiện chuyến",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: kGreyColor,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      height: kPadding,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "5.0",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: kOrangeColor,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                          width: kPadding,
                                        ),
                                        Icon(
                                          CupertinoIcons.star_fill,
                                          color: kOrangeColor,
                                          size: 15,
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ]),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: kPadding),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.phone_android,
                                  color: kBlackColor,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: kPadding,
                                ),
                                Text(
                                  "093237282 - 077909248",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: kBlackColor,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: kPadding),
                            child: Text(
                              "An toàn là trên hết\nXe hợp đồng đưa đón khách\nLiên hệ biết được giá",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: kBlackColor,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: kPadding),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.camera_front_outlined,
                                  color: kBlackColor,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: kPadding,
                                ),
                                Text(
                                  "Kinh nghiệm lái xe:  năm",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: kBlackColor,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: kPadding),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.phone_iphone,
                                  color: kBlackColor,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: kPadding,
                                ),
                                Text(
                                  "*** ",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: kSecondaryColor,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "(Đặt chuyến đê có số ĐT của tài xế)",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: kBlackColor,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                  const SizedBox(height: kPadding * 3),
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
                  const SizedBox(height: kPadding * 2),
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
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              CupertinoIcons.car,
                              color: kGreyColor,
                            ),
                            const SizedBox(width: kPadding * 1.5),
                            const Text(
                              "Chỉ nhận bao xe",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: kGreyColor,
                                  fontWeight: FontWeight.w700),
                            ),
                            const Spacer(),
                            SizedBox(
                                height: 10,
                                child: Switch(
                                    activeColor: kPrimaryColor,
                                    value: isOn,
                                    onChanged: (value) {
                                      setState(() {
                                        isOn = value;
                                      });
                                    })),
                          ])),
                  const SizedBox(height: kPadding * 2),
                ],
              ),
            ),
          ),
        ));
  }
}
