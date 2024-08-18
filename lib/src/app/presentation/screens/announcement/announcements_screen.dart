import 'package:xetienchuyen/src/app/presentation/theme/color_theme.dart';
import 'package:xetienchuyen/src/app/presentation/utils/consts.dart';
import 'package:flutter/material.dart';

class AnnouncementScreen extends StatefulWidget {
  const AnnouncementScreen({
    super.key,
  });

  @override
  State<AnnouncementScreen> createState() => _AnnouncementScreenState();
}

class _AnnouncementScreenState extends State<AnnouncementScreen> {
  int selectedType = 1;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: const Padding(
            padding: EdgeInsets.only(left: kPadding / 2),
            child: Text(
              "Thông báo",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: kWhiteColor,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                                      "Quan trọng",
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
                                      "Khác",
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
                  ListView.separated(
                      itemCount: 4,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: kPadding * 2),
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.all(kPadding * 2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(kRadius * 2),
                              color: kWhiteColor),
                          child: const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.check_circle,
                                color: kPrimaryColor,
                                size: 20,
                              ),
                              SizedBox(
                                width: kPadding,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Đặt chuyến thành công",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: kBlackColor,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(height: kPadding),
                                    Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: kBlackColor,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(height: kPadding * 1.5),
                                    Text(
                                      "15 phút trước",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: kGreyColor,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
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
