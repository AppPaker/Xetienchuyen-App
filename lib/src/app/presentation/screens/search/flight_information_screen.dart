import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:xetienchuyen/src/app/presentation/components/custom_app_bar.dart';
import 'package:xetienchuyen/src/app/presentation/components/custom_button.dart';
import 'package:xetienchuyen/src/app/presentation/routes/routes_navigator.dart';
import 'package:xetienchuyen/src/app/presentation/screens/search/add_car_screen.dart';
import 'package:xetienchuyen/src/app/presentation/screens/search/posting_confirmation_screen.dart';
import 'package:xetienchuyen/src/app/presentation/theme/color_theme.dart';
import 'package:xetienchuyen/src/app/presentation/utils/consts.dart';
import 'package:flutter/material.dart';

class FlightInformationScreen extends StatefulWidget {
  const FlightInformationScreen({
    super.key,
  }); 

  @override
  State<FlightInformationScreen> createState() =>
      _FlightInformationScreenState();
}

class _FlightInformationScreenState extends State<FlightInformationScreen> {
  int selectedCar = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: kPrimaryColor,
        appBar:
            customAppBar(title: "Thông tin chuyến", isDetail: true, context),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(kPadding * 2),
          child: SizedBox(
            height: size.height / 100 * 6,
            child: CustomButton(
                onPressed: () {
                  RouteNavigator.route(
                      context, const PostingConfirmationScreen());
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
                  Container(
                      padding: const EdgeInsets.all(kPadding * 3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kRadius * 1.5),
                          color: kWhiteColor),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text.rich(
                              TextSpan(
                                text:
                                    "Vui lòng chọn mức giá cho mỗi chỗ ngồi trong khong cho phép đối với chuyến đi.",
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: kBlackColor),
                                children: [
                                  TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () async {},
                                    text: " Tìm hiểu thêm",
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: kSecondaryColor),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: kPadding * 2),
                          Container(
                            padding: const EdgeInsets.all(kPadding * 2),
                            decoration: BoxDecoration(
                                color: kSecondaryColor.withOpacity(0.2),
                                border: Border.all(color: kSecondaryColor),
                                borderRadius:
                                    BorderRadius.circular(kRadius * 1.5)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.attach_money_outlined,
                                  color: kBlackColor,
                                  size: 30,
                                ),
                                Text(
                                  "580.000đ",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: kBlackColor,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: kPadding * 2),
                          Container(
                            padding: const EdgeInsets.all(kPadding * 2),
                            decoration: BoxDecoration(
                                color: kGreyColor.withOpacity(0.2),
                                border: Border.all(color: kSecondaryColor),
                                borderRadius:
                                    BorderRadius.circular(kRadius * 3)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Mức giá",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: kBlackColor,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "220.000 - 580.000đ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: kBlackColor,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: kPadding * 3),
                          Row(
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
                                      color: kBlackColor,
                                      fontWeight: FontWeight.w700),
                                ),
                                const Spacer(),
                                SizedBox(
                                    height: 10,
                                    child: Switch(
                                        activeColor: kPrimaryColor,
                                        value: false,
                                        onChanged: (value) {
                                          // setState(() {
                                          //   isOn = value;
                                          // });
                                        })),
                              ])
                        ],
                      )),
                  const SizedBox(height: kPadding * 3),
                  const Text(
                    "Chọn xe",
                    style: TextStyle(
                        fontSize: 15,
                        color: kWhiteColor,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: kPadding),
                  const Text(
                    "Bạn sẽ di chuyển bằng xe nào?",
                    style: TextStyle(
                        fontSize: 12,
                        color: kWhiteColor,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: kPadding * 2),
                  ListView.separated(
                      itemCount: 2,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: kPadding * 2),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCar = index;
                            });
                          },
                          child: Container(
                              padding: const EdgeInsets.all(kPadding * 2),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(kRadius * 1.5),
                                  color: kWhiteColor),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      CupertinoIcons.car,
                                      color: kGreyColor,
                                    ),
                                    const SizedBox(width: kPadding * 1.5),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                    ),
                                    const Spacer(),
                                    selectedCar == index
                                        ? const Icon(
                                            Icons.check_circle,
                                            color: kSecondaryColor,
                                          )
                                        : const Icon(
                                            Icons.circle,
                                            color: kLightGreyColor,
                                          )
                                  ])),
                        );
                      }),
                  const SizedBox(height: kPadding * 3),
                  GestureDetector(
                    onTap: (){
                      RouteNavigator.route(context, const AddCarScreen());
                    },
                    child: Container(
                      padding: const EdgeInsets.all(kPadding * 2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kRadius * 1.5),
                          color: kWhiteColor.withOpacity(0.9)),
                      child: const Center(
                          child: Text(
                        "Thêm xe",
                        style: TextStyle(
                            fontSize: 14,
                            color: kSecondaryColor,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
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
