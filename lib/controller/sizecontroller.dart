import 'package:get/get.dart';
import 'package:tabbar/model/sizemodel.dart';

class Sizecontroller extends GetxController {
  final prductings = RxList<Sizemodel>();
  final selectedSize = ''.obs;

  @override
  void onInit() {
    Prductcont();
    super.onInit();
  }

  void Prductcont() {
    prductings.value = [
      Sizemodel(name: "M", sizefavare: false),
      Sizemodel(name: "L", sizefavare: false),
      Sizemodel(name: "XL", sizefavare: false),
      Sizemodel(name: "2XL", sizefavare: false),
      Sizemodel(name: "3XL", sizefavare: false),
    ];
  }

  void sizetoggle(int index) {
    for (var item in prductings) {
      item.sizefavare = false;
    }

    prductings[index].sizefavare = true;
    selectedSize.value = prductings[index].name;

    prductings.refresh();
  }

  void selectSize(int index) {
    selectedSize.value = prductings[index].name!;
  }
}
