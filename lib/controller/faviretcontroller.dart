import 'package:get/get.dart';

class Faviretcontroller extends GetxController {
  final iscatagory = RxBool(false);

  void istogglecatagory() {
    iscatagory.toggle();
  }
}
