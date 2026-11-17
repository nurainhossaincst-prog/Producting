import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabbar/controller/uicontroller.dart';
import 'package:tabbar/page/cating.dart';
import 'package:tabbar/page/homepage.dart';
import 'package:tabbar/page/notepage.dart';
import 'package:tabbar/page/profilepage.dart';
import 'package:tabbar/page/faverite.dart';

class Uipage extends StatelessWidget {
  Uipage({super.key});

  final Uicontroller _uicontroller = Get.put(Uicontroller());

  @override
  Widget build(BuildContext context) {
    List<Widget> page = [Homepage(), Faverite(), Notepage(), Profilepage()];

    return SafeArea(
      child: Scaffold(
        body: Obx(() => page[_uicontroller.selected.value]),

        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(vertical: 10),

          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              navItem(Icons.home, "Home", 0),
              navItem(Icons.favorite, "Favorite", 1),
              navItem(Icons.shopping_cart, "Cart", 2),
              navItem(Icons.note, "Note", 3),
              navItem(Icons.person, "Profile", 4),
            ],
          ),
        ),
      ),
    );
  }

  Widget navItem(IconData icon, String title, int index) {
    return Obx(() {
      bool isSelected = _uicontroller.selected.value == index;

      return GestureDetector(
        onTap: () {
          _uicontroller.selected.value = index;
        },

        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: isSelected ? Colors.blue : Colors.grey, size: 25),

            SizedBox(height: 4),

            Text(
              title,
              style: TextStyle(
                color: isSelected ? Colors.blue : Colors.grey,
                fontSize: 12,
              ),
            ),
          ],
        ),
      );
    });
  }
}
