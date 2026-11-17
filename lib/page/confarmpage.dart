import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabbar/controller/sizecontroller.dart';
import 'package:tabbar/model/data_model.dart';

class Confarmpage extends StatelessWidget {
  final DataModel model;
  Confarmpage({super.key, required this.model});

  final Sizecontroller scontroller = Get.find<Sizecontroller>();
  final RxBool isimageset = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Confirm Order')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150),
              ),
              child: Center(
                child: Obx(
                  () => Image.network(
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                    isimageset.value
                        ? 'https://cdn3d.iconscout.com/3d/premium/thumb/online-order-confirmation-3d-icon-png-download-9764235.png?f=webp'
                        : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeDuTiVAUcM7UDNdYD6LTBdmZQ5Cv_pfZ9p7zMthxLZ9oOT_wKQe38FCg&s=10',
                  ),
                ),
              ),
            ),

            Text(
              'Your Product',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            //////////////////continnering///////////
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 216, 221, 230),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      width: 150,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                      ),
                      child: Image.network(
                        width: 150,
                        height: double.infinity,
                        fit: BoxFit.cover,
                        '${model.image}',
                      ),
                    ),

                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 5,
                          ),
                          child: Text(
                            '${model.name}',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text('Size : ${scontroller.selectedSize.value}'),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('|'),
                            ),
                            Text('Size : ${scontroller.selectedSize.value}'),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70, bottom: 80),
                      child: Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 111, 220, 219),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Center(child: Text('${model.percent}')),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                'Are You Sure You want to add this Product to Cart ?',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            ////////////////// Confirm Order //////////////////
            InkWell(
              onTap: () {
                isimageset.value = !isimageset.value;

                Get.snackbar(
                  backgroundColor: Colors.green,

                  'Order Confrom',
                  'What plasse chake you Masssege ',
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(child: Icon(Icons.done, color: Colors.white)),
                      Center(
                        child: Text(
                          'Confirm Order',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //////////////////////cancle/////////////////////////
            InkWell(
              onTap: () {
                Get.back();
                Get.snackbar(
                  backgroundColor: const Color.fromARGB(255, 200, 150, 147),

                  'Not Confrom ',
                  'Not Succesfull',
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.blueAccent, width: 2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
