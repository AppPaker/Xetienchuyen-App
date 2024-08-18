// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:xetienchuyen/src/app/presentation/components/app_logo_widget.dart';
import 'package:xetienchuyen/src/app/presentation/components/global_text_field.dart';
import 'package:xetienchuyen/src/app/presentation/navbar/bottom_navbar.dart';
import 'package:xetienchuyen/src/app/presentation/routes/routes_navigator.dart';
import 'package:xetienchuyen/src/app/presentation/screens/auth/widget/multiple_login_widget.dart';
import 'package:xetienchuyen/src/app/presentation/theme/color_theme.dart';
import 'package:xetienchuyen/src/app/presentation/utils/assets.dart';
import 'package:xetienchuyen/src/app/presentation/utils/consts.dart';
import 'package:xetienchuyen/src/app/presentation/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailAddressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool passwordVisibility = true;
  bool stayLoggedIn = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      bottomNavigationBar: const Padding(
          padding: EdgeInsets.symmetric(
              horizontal: kPadding * 3, vertical: kPadding * 2),
          child: Text(
            "Bằng việc đăng ký tài khoản, bạn đã đồng ý với chính sách bảo mật của xetienchuyen",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w400, color: kWhiteColor),
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding * 2.5),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: kPadding * 15),

                  Center(
                    child: AppLogoWidget(
                      height: size.height / 100 * 5,
                    ),
                  ),
                  const SizedBox(height: kPadding * 10),

                  // <------------------------  EMAIL ------------------------>
                  GlobalTextField(
                    autofillHints: const [
                      AutofillHints.telephoneNumber,
                    ],
                    isFilled: true,
                    fieldTitle: "Điện thoại / Email",
                    controller: emailAddressController,
                    hintText: "",
                    validator: (s) => Utils.validateInput(
                      s,
                    ),
                  ),
                  const SizedBox(height: kPadding * 3),

                  // <------------------------  PASSWORD ------------------------>
                  GlobalTextField(
                    autofillHints: const [
                      AutofillHints.password,
                    ],
                    controller: passwordController,
                    obscureText: passwordVisibility,
                    fieldTitle: "Mật khẩu",
                    isFilled: true,
                    hintText: "",
                    maxLine: 1,
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => passwordVisibility = !passwordVisibility,
                      ),
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                      focusNode: FocusNode(skipTraversal: true),
                      child: Icon(
                        passwordVisibility
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: kLightGreyColor,
                        size: 22.0,
                      ),
                    ),
                    validator: (s) => Utils.validateInput(s, minValue: 6),
                  ),
                  const SizedBox(height: kPadding * 2),

                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          Assets.svg.forgotPassSVG,
                          color: kWhiteColor,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: kPadding),
                          child: Text(
                            "Quên mật khẩu",
                            style: TextStyle(
                                fontSize: 14,
                                color: kWhiteColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: kPadding * 3),
                  GestureDetector(
                    onTap: () {
                      RouteNavigator.pushandremoveroute(
                          context,
                          BottomNavBar(
                            selectedTab: 2,
                          ));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(kPadding * 2),
                      decoration: BoxDecoration(
                          color: kWhiteColor,
                          borderRadius: BorderRadius.circular(kRadius * 2.5)),
                      child: Center(
                        child: Text("đăng nhập".toUpperCase(),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: kPrimaryColor)),
                      ),
                    ),
                  ),
                  const SizedBox(height: kPadding * 2),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.profile_circled,
                        color: kWhiteColor,
                      ),
                      SizedBox(
                        width: kPadding,
                      ),
                      Text(
                        "Đăng ký",
                        style: TextStyle(
                            fontSize: 14,
                            color: kWhiteColor,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(height: kPadding * 3),
                  MultipleLoginWidget(
                    img: Assets.svg.googleIconSVG,
                    title: "đăng nhập với google",
                  ),
                  const SizedBox(height: kPadding * 2),
                  MultipleLoginWidget(
                    img: Assets.svg.appleIconSVG,
                    title: "đăng nhập với apple",
                    color: kBlackColor,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
