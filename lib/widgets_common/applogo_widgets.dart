import 'package:flutter_application_1/consts/consts.dart';

Widget applogoWideget() {
  return Image.asset(applogo)
      .box
      .white
      .size(99, 99)
      .padding(const EdgeInsets.all(5))
      .rounded
      .make();
}
