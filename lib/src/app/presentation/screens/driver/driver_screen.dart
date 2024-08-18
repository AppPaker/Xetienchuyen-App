import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:xetienchuyen/src/app/presentation/components/custom_button.dart';
import 'package:xetienchuyen/src/app/presentation/components/global_text_field.dart';
import 'package:xetienchuyen/src/app/presentation/components/image_slider.dart';
import 'package:xetienchuyen/src/app/presentation/routes/routes_navigator.dart';
import 'package:xetienchuyen/src/app/presentation/screens/search/flight_information_screen.dart';
import 'package:xetienchuyen/src/app/presentation/theme/color_theme.dart';
import 'package:xetienchuyen/src/app/presentation/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:xetienchuyen/src/app/presentation/utils/utils.dart';

class DriverScreen extends StatefulWidget {
  const DriverScreen({
    super.key,
  });

  @override
  State<DriverScreen> createState() => _DriverScreenState();
}

class _DriverScreenState extends State<DriverScreen> {
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
  final TextEditingController timeController = TextEditingController();
  int selectedType = 1;
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
                  const ImageSlider(),

                  const SizedBox(height: kPadding * 3),

                  const Text(
                    "Tìm khách",
                    style: TextStyle(
                        fontSize: 15,
                        color: kWhiteColor,
                        fontWeight: FontWeight.w700),
                  ),
                  const Text(
                    "Danh sách khách tìm xe để bạn sắp xếp đi chung",
                    style: TextStyle(
                        fontSize: 14,
                        color: kWhiteColor,
                        fontWeight: FontWeight.w400),
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
                                      "Đăng chuyến",
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
                                      "Khách tìm xe",
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
                          hintText: "Điểm đón (nhập Phường, Quận)",
                          preffixIcon: const Icon(
                            CupertinoIcons.profile_circled,
                            color: kLightGreyColor,
                          ),
                          validator: (s) => Utils.validateInput(s),
                        ),
                        const SizedBox(height: kPadding * 3),

                        GlobalTextField(
                          autofillHints: const [
                            AutofillHints.name,
                          ],
                          controller: destinationsController,
                          hintText: "Điểm đến (nhập Phường, Quận)",
                          preffixIcon: const Icon(
                            CupertinoIcons.location_solid,
                            color: kLightGreyColor,
                          ),
                          validator: (s) => Utils.validateInput(s),
                        ),
                        const SizedBox(height: kPadding * 3),

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
                            selectedType == 1
                                ? Expanded(
                                    child: GlobalTextField(
                                      autofillHints: const [
                                        AutofillHints.name,
                                      ],
                                      controller: timeController,
                                      hintText: "15:44",
                                      preffixIcon: const Icon(
                                        Icons.access_time,
                                        color: kLightGreyColor,
                                      ),
                                      validator: (s) => Utils.validateInput(s),
                                    ),
                                  )
                                : const SizedBox(),
                          ],
                        ),
                        const SizedBox(height: kPadding * 3),
                        selectedType == 1
                            ? GlobalTextField(
                                autofillHints: const [
                                  AutofillHints.name,
                                ],
                                controller: destinationsController,
                                hintText: "Số chỗ ngồi",
                                preffixIcon: const Icon(
                                  Icons.airline_seat_recline_extra,
                                  color: kBlackColor,
                                ),
                                suffixIcon: const Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: kPadding * 2,
                                    horizontal: kPadding,
                                  ),
                                  child: Text(
                                    "3",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: kBlackColor,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                validator: (s) => Utils.validateInput(s),
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ),
                  const SizedBox(height: kPadding * 3),
                  SizedBox(
                    height: size.height / 100 * 6,
                    child: CustomButton(
                        onPressed: () {
                          RouteNavigator.route(context, const FlightInformationScreen());
                        },
                        showLoadingIndicator: true,
                        text: "Tiếp tục"),
                  ),

                  const SizedBox(height: kPadding * 3),

                  Row(
                    children: [
                      Icon(
                        selectedType == 0
                            ? Icons.accessibility_new
                            : Icons.person,
                        color: kWhiteColor,
                      ),
                      const SizedBox(
                        width: kPadding,
                      ),
                      Text(
                        selectedType == 0
                            ? "Khách tìm xe hôm nay >>"
                            : "Bán chuyến, tìm xe cho khách >>",
                        style: const TextStyle(
                            fontSize: 15,
                            color: kWhiteColor,
                            fontWeight: FontWeight.w700),
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
