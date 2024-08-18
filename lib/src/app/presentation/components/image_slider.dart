import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:xetienchuyen/src/app/presentation/routes/routes_navigator.dart';
import 'package:xetienchuyen/src/app/presentation/theme/color_theme.dart';
import 'package:xetienchuyen/src/app/presentation/utils/assets.dart';
import 'package:xetienchuyen/src/app/presentation/utils/consts.dart';

List<String> bannerImages = [
  Assets.images.movingCarIMG,
  Assets.images.movingCarIMG,
  Assets.images.movingCarIMG,

];

class ActiveDot extends StatelessWidget {
  const ActiveDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 3, right: 3),
      height: 7,
      width: 7,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}

class InactiveDot extends StatelessWidget {
  const InactiveDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 3, right: 3),
      height: 7,
      width: 7,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}

class ImageSlider extends StatefulWidget {
  const ImageSlider({
    Key? key,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int activeIndex = 0;

  setActiveDot(index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        CarouselSlider(
          options: CarouselOptions(
            autoPlayInterval: const Duration(seconds: 3),
            autoPlay: true,
            height: MediaQuery.of(context).size.height / 100 * 25,
            autoPlayCurve: Curves.fastLinearToSlowEaseIn,
            autoPlayAnimationDuration: const Duration(seconds: 2),
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setActiveDot(index);
            },
          ),
          items: List.generate(
            bannerImages.length,
            (index) {
              return GestureDetector(
                onTap: () {
                  RouteNavigator.route(
                      context, Image.asset(bannerImages[index].toString()));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 1, vertical: 8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kRadius),
                     
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(20.0),
                       
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 80,
                              width: 80,
                              child: Image.asset(Assets.images.movingCarIMG),
                            ),
                          ),
                          const SizedBox(width: kPadding*2),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Đăng chuyến tự động",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: kBlackColor,
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(height: kPadding),
                                const Text(
                                  "Thảnh thơi chờ khách book",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: kBlackColor,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(height: kPadding),
                                Container(
                                  padding: const EdgeInsets.all(kPadding),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(kRadius * 2),
                                      color: const Color(0xFF4147C7)),
                                  child: const Center(
                                    child: Text(
                                      "Đăng ký tại đây",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: kWhiteColor,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 180.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              bannerImages.length,
              (idx) {
                return activeIndex == idx
                    ? const ActiveDot()
                    : const InactiveDot();
              },
            ),
          ),
        ),
      ],
    );
  }
}
