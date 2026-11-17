import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tabbar/controller/datacontroller.dart';
import 'package:tabbar/controller/faviretcontroller.dart';
import 'package:tabbar/controller/itemcontrller.dart';
import 'package:tabbar/page/cating.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  final Datacontroller Dcontroller = Get.put(Datacontroller());
  final Itemcontrller itemcontroller = Get.put(Itemcontrller());
  final Faviretcontroller facontroller = Get.put(Faviretcontroller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 237, 234, 234),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.apps, size: 30),
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
                    child: Icon(Icons.search, size: 30),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Our Product',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text('sort by', style: TextStyle(color: Colors.grey)),
                        Icon(
                          Icons.arrow_drop_down_outlined,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //////////////catagoryitems//////////////////////////////////////////////
              SizedBox(
                height: 80,
                child: Obx(
                  () => ListView.builder(
                    itemCount: itemcontroller.catagoryitem.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final productitem = itemcontroller.catagoryitem[index];
                      return InkWell(
                        onTap: () {
                          itemcontroller.istogglecatagory(index);
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),

                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: productitem.itemfavaret
                                      ? const Color.fromARGB(31, 0, 0, 0)
                                      : Colors.white70,
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      clipBehavior: Clip.antiAlias,
                                      width: 35,

                                      height: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Image.network(
                                        width: 30,
                                        height: 30,
                                        fit: BoxFit.cover,
                                        '${productitem.image}',
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                      ),
                                      child: Text('${productitem.name}'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              ///////////  cardview //////////////////
              GridView.builder(
                itemCount: Dcontroller.productlist.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) {
                  final prduct = Dcontroller.productlist[index];
                  return InkWell(
                    onTap: () {
                      Get.to(Cating(model: prduct));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(255, 255, 252, 252),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Container(
                                    width: 50,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(color: Colors.black54),
                                      color: const Color.fromARGB(
                                        255,
                                        133,
                                        214,
                                        225,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '${prduct.percent} %',
                                        style: TextStyle(color: Colors.black87),
                                      ),
                                    ),
                                  ),
                                ),

                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_sharp,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Container(
                                clipBehavior: Clip.antiAlias,
                                width: 120,
                                height: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: Colors.amber,
                                ),
                                child: Image.network(
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                  '${prduct.image}',
                                ),
                              ),
                            ),
                            Text(
                              '${prduct.name}',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              ' \$ 2000',
                              style: TextStyle(
                                color: const Color.fromARGB(221, 55, 151, 211),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30,
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.star, color: Colors.amber),
                                  Icon(Icons.star, color: Colors.amber),
                                  Icon(Icons.star, color: Colors.amber),
                                  Icon(Icons.star, color: Colors.amber),
                                  Icon(Icons.star, color: Colors.amber),
                                  Text('(${prduct.rating})'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
