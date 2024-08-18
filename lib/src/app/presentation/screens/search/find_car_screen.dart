// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:xetienchuyen/src/app/presentation/components/custom_app_bar.dart';
import 'package:xetienchuyen/src/app/presentation/components/custom_button.dart';
import 'package:xetienchuyen/src/app/presentation/components/global_text_field.dart';
import 'package:xetienchuyen/src/app/presentation/theme/color_theme.dart';
import 'package:xetienchuyen/src/app/presentation/utils/assets.dart';
import 'package:xetienchuyen/src/app/presentation/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:xetienchuyen/src/app/presentation/utils/utils.dart';

class FindCarScreen extends StatefulWidget {
  const FindCarScreen({
    super.key,
  });

  @override
  State<FindCarScreen> createState() => _FindCarScreenState();
}

class _FindCarScreenState extends State<FindCarScreen> {
  final TextEditingController notesController = TextEditingController();
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: customAppBar(title: "Yêu cầu tìm xe", isDetail: true, context),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(kPadding * 2),
          child: SizedBox(
            height: size.height / 100 * 6,
            child: CustomButton(
                onPressed: () {
                
                },
                showLoadingIndicator: true,
                text: "Gửi yêu cầu tìm xe"),
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
                    height: size.height * 0.52,
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
                              padding: const EdgeInsets.all(kPadding * 2),
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
                                    Row(
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
                                    const SizedBox(height: kPadding),
                                    const Text(
                                      "Q.Thanh Xuân, TP. Hà Nội",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: kBlackColor,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    const SizedBox(height: kPadding * 2),
                                    // <------------------------  DIVIDER ------------------------>
                                    const Row(
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
                                    const SizedBox(height: kPadding * 2),

                                    const Text(
                                      "TP. Sóc Trăng",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: kSecondaryColor,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(height: kPadding),
                                    const Text(
                                      "Q.Thanh Xuân, TP. Hà Nội",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: kBlackColor,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    const Divider(
                                      height: 40,
                                      color: kLightGreyColor,
                                    ),
                                    Row(
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
                                  ])),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: kPadding * 2),

                  // <------------------------  EMAIL ------------------------>
                  GlobalTextField(
                    autofillHints: const [
                      AutofillHints.telephoneNumber,
                    ],
                    isFilled: true,
                    fieldTitle: "Ghi chú",
                    controller: notesController,
                    preffixIcon: const Icon(
                      CupertinoIcons.bubble_left_bubble_right,
                      color: kGreyColor,
                    ),
                    hintText: "Ghi lời nhắn (địa điểm, hành lý, ...)",
                    validator: (s) => Utils.validateInput(
                      s,
                    ),
                  ),
                  const SizedBox(height: kPadding * 3),

                  const Text(
                    "Bao xe",
                    style: TextStyle(
                        fontSize: 15,
                        color: kWhiteColor,
                        fontWeight: FontWeight.w700),
                  ),
                  const Text(
                    "Chú ý: giá bao xe có thẻ khác với giá đi ghép",
                    style: TextStyle(
                        fontSize: 14,
                        color: kWhiteColor,
                        fontWeight: FontWeight.w400),
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
                              "Bao xe",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: kGreyColor,
                                  fontWeight: FontWeight.w400),
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
