import 'package:xetienchuyen/src/app/presentation/theme/color_theme.dart';
import 'package:xetienchuyen/src/app/presentation/utils/consts.dart';
import 'package:flutter/material.dart';

PreferredSize customAppBar(BuildContext context,
    {bool isDetail = false, String? title, Widget? actionWidgets}) {
  return PreferredSize(
    preferredSize: const Size(double.infinity, 75),
    child: AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      automaticallyImplyLeading: false,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: Column(
          children: [
            Row(
              
              children: [
                isDetail
                    ? IconButton(
                        padding: const EdgeInsets.all(0),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          color: kWhiteColor,
                        ))
                    : const SizedBox(),
                Padding(
                  padding: const EdgeInsets.only(left: kPadding / 2),
                  child: Text(
                    title ?? "",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: kWhiteColor,
                    ),
                  ),
                ),
                const Spacer(),
                if (actionWidgets != null) ...[
                  Padding(
                      padding: const EdgeInsets.all(kPadding),
                      child: actionWidgets)
                ]
              ],
            ),
            const SizedBox(height: kPadding * 2),
          ],
        ),
      ),
    ),
  );
}
