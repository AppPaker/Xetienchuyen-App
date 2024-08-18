import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:xetienchuyen/src/app/presentation/components/custom_button.dart';
import 'package:xetienchuyen/src/app/presentation/components/global_text_field.dart';
import 'package:xetienchuyen/src/app/presentation/routes/routes_navigator.dart';
import 'package:xetienchuyen/src/app/presentation/screens/search/trip_lists_screen.dart';
import 'package:xetienchuyen/src/app/presentation/theme/color_theme.dart';
import 'package:xetienchuyen/src/app/presentation/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:xetienchuyen/src/app/presentation/utils/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime? _selectedDate;

  void pickDateFunc() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        String formattedDate = DateFormat('yyyy-MM-dd').format(_selectedDate!);
        destinationsController.text = formattedDate;
      });
    }
  }

  int counter = 0;
  final TextEditingController pickupPointController = TextEditingController();
  final TextEditingController destinationsController = TextEditingController();

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
                  const SizedBox(height: kPadding * 3),
                  // ---------------  BANNER ---------------
                  Container(
                    height: size.height * 0.2,
                    padding: const EdgeInsets.all(kPadding * 2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kRadius * 2),
                        image: const DecorationImage(
                            image: NetworkImage(
                              "https://s3-alpha-sig.figma.com/img/5c87/3016/2f7e97fa43abbe6727ea9f5732fb8869?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Ky6Sypq-3A2XiRDiYHlW3prKMdR6M8qL05DXZc8O13v0P2tN2OTFv3hvDyqUVCqduyBvBxs9tu9T--DUUTtB1weEkE9d8t9Ba--8bVPmoEjsASchbZbfeUaRBBun27NX8Kiiw6LvxYIrMn9BIhNZKQPgas5KNR0tJhHolNSmj6-isNtfVRygcOC3OmJh1xdjHV815FvnvfAuqU5rp4Z2Vnm4UPyF3BSMQAAaXPJzi8Q3dHwCcEvSo7UUspC6pcK~2KGIjbCUiiO2FQvGCk5t~LQKigIN-fE0PgBRwKgZMIwj7oVLztmftNF-3Uc44GSIVt0pNrekjU2OOA8IntQfHA__",
                            ),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(height: kPadding * 3),

                  const Text(
                    "Tìm chuyến",
                    style: TextStyle(
                        fontSize: 15,
                        color: kWhiteColor,
                        fontWeight: FontWeight.w700),
                  ),
                  const Text(
                    "Tìm tài xế có cùng lộ trình để di chuyển cùng nhau",
                    style: TextStyle(
                        fontSize: 14,
                        color: kWhiteColor,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: kPadding * 3),

                  Container(
                    padding: const EdgeInsets.all(kPadding * 2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kRadius * 2),
                        color: kWhiteColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // <------------------------  PICKUP PONIT CONTROLLER ------------------------>
                        GlobalTextField(
                          autofillHints: const [
                            AutofillHints.name,
                          ],
                          controller: pickupPointController,
                          hintText: "Điểm đón",
                          preffixIcon: const Icon(
                            CupertinoIcons.profile_circled,
                            color: kLightGreyColor,
                          ),
                          validator: (s) => Utils.validateInput(s),
                        ),
                        const SizedBox(height: kPadding * 3),
                        // <------------------------  DESTINATION CONTROLLER ------------------------>
                        GlobalTextField(
                          autofillHints: const [
                            AutofillHints.name,
                          ],
                          controller: destinationsController,
                          hintText: "Điểm đến",
                          preffixIcon: const Icon(
                            CupertinoIcons.location_solid,
                            color: kLightGreyColor,
                          ),
                          validator: (s) => Utils.validateInput(s),
                        ),
                        const SizedBox(height: kPadding * 3),
                        // <------------------------  DESTINATION CONTROLLER ------------------------>
                        Row(
                          children: [
                            Expanded(
                              child: GlobalTextField(
                                onTap: () {
                                  pickDateFunc();
                                },
                                isReadOnly: true,
                                autofillHints: const [
                                  AutofillHints.name,
                                ],
                                controller: destinationsController,
                                hintText: "Hôm nay",
                                preffixIcon: const Icon(
                                  CupertinoIcons.calendar,
                                  color: kLightGreyColor,
                                ),
                                validator: (s) => Utils.validateInput(s),
                              ),
                            ),
                            const SizedBox(width: kPadding),
                            GestureDetector(
                              child: Container(
                                padding: const EdgeInsets.all(kPadding),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(kRadius * 2),
                                    border: Border.all(color: kLightGreyColor)),
                                child: const Icon(Icons.remove),
                              ),
                            ),
                            const SizedBox(width: kPadding),
                            Container(
                              padding: const EdgeInsets.all(kPadding * 2),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(kRadius * 2),
                                  border: Border.all(color: kLightGreyColor)),
                              child: const Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.person_crop_circle_fill,
                                    color: kBlackColor,
                                  ),
                                  SizedBox(width: kPadding / 2),
                                  Text(
                                    "02",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: kBlackColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: kPadding),
                            Container(
                              padding: const EdgeInsets.all(kPadding),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(kRadius * 2),
                                  border: Border.all(color: kLightGreyColor)),
                              child: const Icon(Icons.add),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: kPadding * 3),
                  SizedBox(
                    height: size.height / 100 * 6,
                    child: CustomButton(
                        onPressed: () {
                          // RouteNavigator.route(context, const FindCarScreen());
                          RouteNavigator.route(
                              context, const TripListsScreen());
                        },
                        showLoadingIndicator: true,
                        text: "Tìm chuyến"),
                  ),

                  const SizedBox(height: kPadding * 3),

                  const Text(
                    "Lịch sử chuyến",
                    style: TextStyle(
                        fontSize: 15,
                        color: kWhiteColor,
                        fontWeight: FontWeight.w700),
                  ),

                  const SizedBox(height: kPadding * 2),

                  // <------------------------  TRIP HISTORY ------------------------>
                  Container(
                    padding: const EdgeInsets.all(kPadding * 2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kRadius * 2),
                        color: kWhiteColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListView.separated(
                            itemCount: 2,
                            shrinkWrap: true,
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: kPadding),
                            itemBuilder: (context, index) {
                              return const Row(
                                children: [
                                  Icon(
                                    Icons.access_time_rounded,
                                    color: kGreyColor,
                                  ),
                                  SizedBox(width: kPadding * 2.5),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "TP. Hà Nội",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: kBlackColor,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          SizedBox(width: kPadding),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: kBlackColor,
                                          ),
                                          SizedBox(width: kPadding),
                                          Text(
                                            "T. Sóc Trăng",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: kBlackColor,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: kPadding / 2),
                                      Text(
                                        "1 khách",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: kGreyColor,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  )
                                ],
                              );
                            }),
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
