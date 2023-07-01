import 'package:flutter/material.dart';
import 'package:get/get.dart';

///iphone 7
const double height533Pixel = 532;

const double height676Pixel = 675;

///ini nexus 5x
const double height683Pixel = 682;

const double height737Pixel = 736;
const double height781Pixel = 780;
const double height820Pixel = 819;

//width testedPhone

///iphone 7
const double width320Pixel = 321;
const double width360Pixel = 361;

double screenSizingForTour(BuildContext context) {
  return Get.height > height820Pixel
      ? Get.height * 0.44
      : Get.height > height781Pixel
          ? Get.height * 0.46
          //stable for pixel 3
          : Get.height > height737Pixel
              ? Get.height * 0.48
              //kayanya pixel 5xl
              : Get.height > height683Pixel
                  ? Get.height * 0.54
                  : Get.height > height676Pixel
                      ? Get.height * 0.56
                      : Get.height > height533Pixel
                          ? Get.height * 0.59
                          : 411;
}
