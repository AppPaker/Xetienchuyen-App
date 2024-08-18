
import 'package:xetienchuyen/src/app/presentation/components/custom_app_bar.dart';
import 'package:xetienchuyen/src/app/presentation/components/custom_button.dart';
import 'package:xetienchuyen/src/app/presentation/components/global_text_field.dart';
import 'package:xetienchuyen/src/app/presentation/theme/color_theme.dart';
import 'package:xetienchuyen/src/app/presentation/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:xetienchuyen/src/app/presentation/utils/utils.dart';

class RouteRegistrationScreen extends StatefulWidget {
  const RouteRegistrationScreen({
    super.key,
  });

  @override
  State<RouteRegistrationScreen> createState() => _RouteRegistrationScreenState();
}

class _RouteRegistrationScreenState extends State<RouteRegistrationScreen> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: customAppBar(title: "Đăng ký tuyến", isDetail: true, context),
       
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
                          "Tuyến bạn hay di chuyển",
                          style: TextStyle(
                              fontSize: 20,
                              color: kBlackColor,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: kPadding),
                        const Text(
                          "Đăng ký để chúng tôi gửi thông báo cho bạn ngay khi có khách có nhu cầu phù họp với tuyến của bạn",
                          style: TextStyle(
                              fontSize: 12,
                              color: kBlackColor,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: kPadding * 2),
 const Text(
                          "Bạn có thể đăng ký chỉ một trong hai điểm",
                          style: TextStyle(
                              fontSize: 20,
                              color: kBlackColor,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: kPadding),
                        const Text(
                          "Ví dụ, điểm đón là Hà Nội, điểm đến để trống,chúng tôi sẽ gửi thông báo mỗi khi có khách có nhu cầu đi từ Hà Nội đến bất cứ tỉnh thành phố nào khác.",
                          style: TextStyle(
                              fontSize: 12,
                              color: kBlackColor,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: kPadding * 2),
                  
                        GlobalTextField(
                          autofillHints: const [
                            AutofillHints.name,
                          ],
                          controller: TextEditingController(),
                          hintText: "H. Ba Vì, TP. Hà Nội",
                          preffixIcon: const Icon(
                            Icons.person,
                            color: kLightGreyColor,
                          ), suffixIcon: const Icon(
                                  Icons.clear,
                                  color: kLightGreyColor,
                                  size: 20,
                                ),
                          validator: (s) => Utils.validateInput(s),
                        ),
                         const SizedBox(height: kPadding * 2),
                  
                        GlobalTextField(
                          autofillHints: const [
                            AutofillHints.name,
                          ],
                          controller: TextEditingController(),
                          hintText: "TP. Nam Định, T. Nam Định",
                          preffixIcon: const Icon(
                            Icons.location_on_outlined,
                            color: kLightGreyColor,
                            
                          ), suffixIcon: const Icon(
                                  Icons.clear,
                                  size: 20,
                                  color: kLightGreyColor,
                                ),
                          validator: (s) => Utils.validateInput(s),
                        ),
                         const SizedBox(height: kPadding * 2),
                  
                        GlobalTextField(
                          autofillHints: const [
                            AutofillHints.name,
                          ],
                          controller: TextEditingController(),
                          hintText: "Chạy 2 chiều",
                          preffixIcon: const Icon(
                            Icons.drive_eta,
                            color: kLightGreyColor,
                            
                          ), suffixIcon:  Padding(
                            padding: const EdgeInsets.only(right:kPadding),
                            child: Switch(
                                activeColor: kPrimaryColor,
                                value: false,
                                onChanged: (value) {
                                
                                }),
                          ),
                          validator: (s) => Utils.validateInput(s),
                        ),
                        const SizedBox(height: kPadding * 3),
                      
                   
                    const SizedBox(
                              height: kPadding*2,
                            ), SizedBox(
                      height: size.height / 100 * 6,
                      child: CustomButton(
                          onPressed: () {
                       
                          },
                          showLoadingIndicator: true,
                          text: "Đăng ký tuyến"),
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
