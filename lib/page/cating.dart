import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabbar/controller/sizecontroller.dart';
import 'package:tabbar/model/data_model.dart';
import 'package:tabbar/page/confarmpage.dart';

class Cating extends StatelessWidget {
  final DataModel model;
  Cating({super.key, required this.model});

  final Sizecontroller scontroller = Get.put(Sizecontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_back, size: 30),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'X',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'E',
                      style: TextStyle(
                        color: const Color.fromARGB(221, 39, 174, 231),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.favorite, size: 30, color: Colors.red),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Container(
              width: 50,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black54),
                color: const Color.fromARGB(255, 133, 214, 225),
              ),
              child: Center(
                child: Text(
                  '${model.percent} %',
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Container(
              clipBehavior: Clip.antiAlias,
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(125),
                color: Colors.amber,
              ),
              child: Image.network(
                '${model.image}',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: const Color.fromARGB(255, 224, 240, 243),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          '${model.name}',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber),
                            Text('${(model.rating)}'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          '${model.description}',
                          style: TextStyle(color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Size : ',
                            style: TextStyle(
                              color: const Color.fromARGB(221, 77, 75, 75),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ////////////////////////////////sizede//////////////////////////////////////////
                        Expanded(
                          child: Obx(
                            () => SizedBox(
                              height: 80,
                              child: ListView.builder(
                                itemCount: scontroller.prductings.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  final producsize =
                                      scontroller.prductings[index];

                                  return GestureDetector(
                                    onTap: () {
                                      scontroller.sizetoggle(index);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 15,
                                          vertical: 8,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                          color: producsize.sizefavare
                                              ? Colors.green
                                              : Colors.white,
                                          border: Border.all(
                                            color: Colors.black26,
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            producsize.name,
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Available Color  :',
                          style: TextStyle(
                            color: const Color.fromARGB(221, 58, 56, 56),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.red,
                            border: Border.all(
                              color: const Color.fromARGB(255, 191, 189, 189),
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 54, 244, 143),
                            border: Border.all(
                              color: const Color.fromARGB(255, 191, 189, 189),
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 11, 17, 195),
                            border: Border.all(
                              color: const Color.fromARGB(255, 191, 189, 189),
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 2, 0, 0),
                            border: Border.all(
                              color: const Color.fromARGB(255, 191, 189, 189),
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        color: Colors.white70,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Text(
                              '\$ ${model.price}',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                             
                              if (scontroller.selectedSize.value.isNotEmpty) {
                                Get.to(() => Confarmpage(model: model,));
                              } else {
                                Get.snackbar('Warning', 'Please select a size');
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Container(
                                width: 120,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: const Color.fromARGB(
                                    255,
                                    240,
                                    243,
                                    246,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      child: Icon(
                                        Icons.shopping_cart_rounded,
                                        color: const Color.fromARGB(
                                          255,
                                          125,
                                          175,
                                          215,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Add to Cart',
                                      style: TextStyle(
                                        color: const Color.fromARGB(
                                          255,
                                          125,
                                          175,
                                          215,
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
