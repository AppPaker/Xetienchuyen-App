import 'package:flutter/cupertino.dart';
import 'package:xetienchuyen/src/app/presentation/theme/color_theme.dart';
import 'package:xetienchuyen/src/app/presentation/utils/consts.dart';
import 'package:flutter/material.dart';

class MyTripsScreen extends StatefulWidget {
  const MyTripsScreen({super.key});

  @override
  State<MyTripsScreen> createState() => _MyTripsScreenState();
}

class _MyTripsScreenState extends State<MyTripsScreen> {
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
                  const Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Chuyến của tôi",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: kWhiteColor,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Xem các chuyến xe đã đăng đã đặt và lịch sử chuyến đi của bạn",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: kWhiteColor,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: kWhiteColor,
                        child: Icon(Icons.replay_outlined,color: kPrimaryColor),
                      )
                    ],
                  ),
                  const SizedBox(height: kPadding * 3),
                  Container(
                      width: size.width,
                      padding: const EdgeInsets.all(kPadding * 1.5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kRadius * 2),
                          color: kWhiteColor),
                      child: Container(
                        padding: const EdgeInsets.all(kPadding),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(kRadius * 2),
                            color: kSecondaryColor.withOpacity(0.2)),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedType = 0;
                                    });
                                    debugPrint("selectedType: $selectedType");
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(kPadding * 2),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(kRadius * 2),
                                        color: selectedType == 0
                                            ? kWhiteColor
                                            : null),
                                    child: Text(
                                      "Chuyến đã đặt",
                                      style: TextStyle(
                                               fontSize: 13,
                                          color: selectedType == 0
                                              ? kBlackColor
                                              : kSecondaryColor,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: kPadding,
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedType = 1;
                                    });
                                    debugPrint("selectedType: $selectedType");
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(kPadding * 2),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(kRadius * 2),
                                        color: selectedType == 1
                                            ? kWhiteColor
                                            : null),
                                    child: Text(
                                      "Chuyến đã đăng",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: selectedType == 1
                                              ? kBlackColor
                                              : kSecondaryColor,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                      )),
                  const SizedBox(height: kPadding * 3),
                  selectedType == 0
                      ? ListView.separated(
                          itemCount: 2,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: kPadding * 2),
                          itemBuilder: (context, index) {
                            return SizedBox(
                              height: size.height * 0.3,
                              child: Stack(
                                children: [
                                  Container(
                                    height: size.height * 0.24,
                                    padding: const EdgeInsets.all(kPadding * 3),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(kRadius * 2),
                                        color: kWhiteColor),
                                    child: const Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Q. Hoàn Kiếm",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: kBlackColor,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  SizedBox(height: kPadding),
                                                  Text(
                                                    "TP. Hà Nội",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: kGreyColor,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  Divider(),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.access_time,
                                                        color: kGreyColor,
                                                      ),
                                                      SizedBox(width: kPadding),
                                                      Text(
                                                        "07:59",
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            color: kGreyColor,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: kPadding * 2),
                                                child: Icon(
                                                  Icons.arrow_forward,
                                                  color: kGreyColor,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Q. Hoàn Kiếm",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: kBlackColor,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  SizedBox(height: kPadding),
                                                  Text(
                                                    "TP. Hà Nội",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: kGreyColor,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  Divider(),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.access_time,
                                                        color: kGreyColor,
                                                      ),
                                                      SizedBox(width: kPadding),
                                                      Text(
                                                        "07:59",
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            color: kGreyColor,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: kPadding * 2),
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              CircleAvatar(
                                                backgroundImage: NetworkImage(
                                                    "https://s3-alpha-sig.figma.com/img/69f8/72de/045569de9ba67256a6c8e13c63449bc9?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=qSY5sGKLkYweQzF-1yBQj0C-X7OnKJBEX-B8Hon3S73w-isqR2vz43eyRIMjzusSZh6oOlsWnrntnG5pVX79SNxkAIfCDxC0AvPFgZqUbAzUxxKqzOG~~~0CyQnbsh6rPIk7obncEYMrvJ88~tV6NOCiwtMNN8zYhId~vs~PyNMxT-dKMcfQj~aRysyc-tCBi1DY3K5~FzwpD4pDHRG6-DNJqPs2IsMwo2I8doHShKBJIchcw3hSH~SPf4oT78rjAbtc311jSl31vt3VmTEcv5mlX9327oIaygE059PrCGqENKCmKrbuloYLiDjXf4GhBhRqVCWqlt7k66fdemYn~g__"),
                                              ),
                                              SizedBox(width: kPadding * 1.5),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Xe tiện chuyến",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: kGreyColor,
                                                        fontWeight:
                                                            FontWeight.w700),
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
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                      SizedBox(
                                                        width: kPadding,
                                                      ),
                                                      Icon(
                                                        CupertinoIcons
                                                            .star_fill,
                                                        color: kOrangeColor,
                                                        size: 15,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Spacer(),
                                              Text(
                                                "Xe tiện chuyến",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: kGreyColor,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ]),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: 185,
                                    left: 25,
                                    right: 25,
                                    child: Container(
                                        padding: const EdgeInsets.all(kPadding),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(kRadius),
                                            color: index == 0
                                                ? kGoldColor
                                                : kGreyColor),
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Chờ tài xế xác nhận",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: kWhiteColor,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Text(
                                              "16/07/2024 1 chỗ",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: kWhiteColor,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        )),
                                  )
                                ],
                              ),
                            );
                          })
                      : ListView.separated(
                          itemCount: 2,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: kPadding * 2),
                          itemBuilder: (context, index) {
                            return Container(
                              padding: const EdgeInsets.all(kPadding * 3),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(kRadius * 2),
                                  color: kWhiteColor),
                              child: const Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.calendar_month,
                                        color: kGreyColor,
                                      ),
                                      SizedBox(width: kPadding * 2),
                                      Text(
                                        "Thứ Ba, 16/07/2024",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: kBlackColor,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  Divider(),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Q. Hoàn Kiếm",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: kBlackColor,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            SizedBox(height: kPadding),
                                            Text(
                                              "TP. Hà Nội",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: kGreyColor,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Divider(),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.access_time,
                                                  color: kGreyColor,
                                                ),
                                                SizedBox(width: kPadding),
                                                Text(
                                                  "07:59",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: kGreyColor,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: kPadding * 2),
                                          child: Icon(
                                            Icons.arrow_forward,
                                            color: kGreyColor,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Q. Hoàn Kiếm",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: kBlackColor,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            SizedBox(height: kPadding),
                                            Text(
                                              "TP. Hà Nội",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: kGreyColor,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Divider(),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.access_time,
                                                  color: kGreyColor,
                                                ),
                                                SizedBox(width: kPadding),
                                                Text(
                                                  "07:59",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: kGreyColor,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: kPadding * 2),
                                  Divider(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Chưa có khách",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: kGoldColor,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Text(
                                        "580.000đ/chỗ",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: kBlackColor,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            );
                          }),
                  const SizedBox(height: kPadding * 2),
                ],
              ),
            ),
          ),
        ));
  }
}
