import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:xetienchuyen/src/app/presentation/components/custom_app_bar.dart';
import 'package:xetienchuyen/src/app/presentation/routes/routes_navigator.dart';
import 'package:xetienchuyen/src/app/presentation/screens/drawer/custom_drawer.dart';
import 'package:xetienchuyen/src/app/presentation/screens/search/find_car_screen.dart';
import 'package:xetienchuyen/src/app/presentation/screens/search/trip_details_screen.dart';
import 'package:xetienchuyen/src/app/presentation/theme/color_theme.dart';
import 'package:xetienchuyen/src/app/presentation/utils/assets.dart';
import 'package:xetienchuyen/src/app/presentation/utils/consts.dart';
import 'package:flutter/material.dart';

class TripListsScreen extends StatefulWidget {
  const TripListsScreen({super.key});

  @override
  State<TripListsScreen> createState() => _TripListsScreenState();
}

class _TripListsScreenState extends State<TripListsScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: kPrimaryColor,
        key: _key,
        drawer: const SafeArea(child: CustomDrawer()),
        appBar: customAppBar(
            title: "Danh sách chuyến",
            actionWidgets: GestureDetector(
              onTap: () {
                _key.currentState!.openDrawer();
              },
              child: Padding(
                padding: const EdgeInsets.only(right: kPadding),
                child: SvgPicture.asset(Assets.svg.filterIconSVG),
              ),
            ),
            isDetail: true,
            context),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kSecondaryColor,
          shape: const CircleBorder(),
          onPressed: () {

            RouteNavigator.route(context, const FindCarScreen());
          },
          child: const Icon(
            Icons.help,
            color: kWhiteColor,
            size: 35,
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding * 2, vertical: kPadding),
              child: Padding(
               padding: const EdgeInsets.only(bottom: kPadding*2),
                child: SizedBox(
                  height: size.height * 0.9,
                  child: Stack(children: [
                    Container(
                      height: size.height * 0.25,
                      padding: const EdgeInsets.all(kPadding * 2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kRadius * 2),
                          color: kSecondaryColor),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Q. Hoàn Kiếm",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: kWhiteColor,
                                    fontWeight: FontWeight.w400),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: kPadding * 2),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: kWhiteColor,
                                ),
                              ),
                              Text(
                                "T. Sóc Trăng ",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: kWhiteColor,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(height: kPadding * 2),
                          Center(
                            child: Text(
                              "16/07/2024, 1 người",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: kGreyColor,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          SizedBox(height: kPadding * 2),
                          Center(
                            child: Text(
                              "Không tìm thấy chuyến nào. Bookcar hiển thị 260 chuyến trong ngày đang tìm",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: kWhiteColor,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 20,
                      right: 20,
                      child: SizedBox(
                        height: size.height * 0.6,
                        child: ListView.separated(
                            itemCount: 3,
                            shrinkWrap: true,
                            // physics: const NeverScrollableScrollPhysics(),
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: kPadding * 2),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: (){
                                  RouteNavigator.route(context, const TripDetailsScreen());
                                },
                                child: Container(
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
                                                  "TP. Hạ Long",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: kBlackColor,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                SizedBox(height: kPadding),
                                                Text(
                                                  "T. Quảng Ninh",
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
                                                      "10:04",
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
                                                              FontWeight.w400),
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
                                            ),
                                            Spacer(),
                                            Text(
                                              "0đ/ chỗ",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: kGreyColor,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ]),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    )
                  ]),
                ),
              ),
            ),
          ),
        ));
  }
}
