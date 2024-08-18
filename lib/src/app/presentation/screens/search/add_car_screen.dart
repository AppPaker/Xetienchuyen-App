import 'package:flutter/cupertino.dart';
import 'package:xetienchuyen/src/app/presentation/components/custom_app_bar.dart';
import 'package:xetienchuyen/src/app/presentation/components/custom_button.dart';
import 'package:xetienchuyen/src/app/presentation/components/global_text_field.dart';
import 'package:xetienchuyen/src/app/presentation/theme/color_theme.dart';
import 'package:xetienchuyen/src/app/presentation/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:xetienchuyen/src/app/presentation/utils/utils.dart';

class AddCarScreen extends StatefulWidget {
  const AddCarScreen({
    super.key,
  });

  @override
  State<AddCarScreen> createState() => _AddCarScreenState();
}

class _AddCarScreenState extends State<AddCarScreen> {
  final TextEditingController carManufacturerController =
      TextEditingController();
  final TextEditingController yearsOfProductionController =
      TextEditingController();
  final TextEditingController vehicleTypeController = TextEditingController();
  final TextEditingController carColorController = TextEditingController();
  final TextEditingController noOfSeatsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: customAppBar(title: "Thêm xe", isDetail: true, context),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: kPadding * 3),
                  Container(
                    padding: const EdgeInsets.all(kPadding * 2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kRadius * 2),
                        color: kWhiteColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Lưu phương tiện",
                          style: TextStyle(
                              fontSize: 20,
                              color: kBlackColor,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: kPadding),
                        const Text(
                          "Vui lòng nhập thông tin bên dưới để lưu xe của bạn",
                          style: TextStyle(
                              fontSize: 12,
                              color: kBlackColor,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: kPadding * 2),
                        Row(
                          children: [
                            Expanded(
                              child: GlobalTextField(
                                autofillHints: const [
                                  AutofillHints.name,
                                ],
                                controller: carManufacturerController,
                                hintText: "Hãng xe",
                                preffixIcon: const Icon(
                                  CupertinoIcons.car_detailed,
                                  color: kGreyColor,
                                ),
                                suffixIcon: const Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: kLightGreyColor,
                                ),
                                validator: (s) => Utils.validateInput(s),
                              ),
                            ),
                            const SizedBox(
                              width: kPadding,
                            ),
                            Expanded(
                              child: GlobalTextField(
                                autofillHints: const [
                                  AutofillHints.name,
                                ],
                                controller: yearsOfProductionController,
                                hintText: "Năm SX",
                                preffixIcon: const Icon(
                                  CupertinoIcons.calendar,
                                  color: kGreyColor,
                                ),
                                suffixIcon: const Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: kLightGreyColor,
                                ),
                                validator: (s) => Utils.validateInput(s),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: kPadding * 3),
                        GlobalTextField(
                          autofillHints: const [
                            AutofillHints.name,
                          ],
                          controller: vehicleTypeController,
                          hintText: "Loại xe",
                          preffixIcon: const Icon(
                            Icons.local_taxi,
                            color: kGreyColor,
                          ),
                          suffixIcon: const Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: kLightGreyColor,
                          ),
                          validator: (s) => Utils.validateInput(s),
                        ),
                        const SizedBox(height: kPadding * 3),
                        Row(
                          children: [
                            Expanded(
                              child: GlobalTextField(
                                autofillHints: const [
                                  AutofillHints.name,
                                ],
                                controller: carColorController,
                                hintText: "Màu xe",
                                preffixIcon: const Icon(
                                  Icons.color_lens,
                                  color: kGreyColor,
                                ),
                                validator: (s) => Utils.validateInput(s),
                              ),
                            ),
                            const SizedBox(
                              width: kPadding,
                            ),
                            Expanded(
                              child: GlobalTextField(
                                autofillHints: const [
                                  AutofillHints.name,
                                ],
                                controller: noOfSeatsController,
                                hintText: "Số chỗ...",
                                preffixIcon: const Icon(
                                  Icons.airline_seat_recline_extra_rounded,
                                  color: kGreyColor,
                                ),
                                validator: (s) => Utils.validateInput(s),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: kPadding * 2,
                        ),
                        SizedBox(
                          height: size.height / 100 * 6,
                          child: CustomButton(
                              onPressed: () {},
                              showLoadingIndicator: true,
                              text: "Thêm xe"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
