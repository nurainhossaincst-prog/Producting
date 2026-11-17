import 'package:get/get.dart';
import 'package:tabbar/model/itemmodel.dart';

class Itemcontrller extends GetxController {
  final catagoryitem = RxList<Itemmodel>();
  @override
  void onInit() {
    catagoryitems();
    super.onInit();
  }

  void catagoryitems() {
    catagoryitem.value = [
      Itemmodel(
        image:
            'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=500',
        name: 'Nike Shoes',
        itemfavaret: false,
      ),
      Itemmodel(
        image: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=500',
        name: 'Smart Watch',
        itemfavaret: false,
      ),
      Itemmodel(
        image:
            'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=500',
        name: 'Travel Bag',
        itemfavaret: false,
      ),
      Itemmodel(
        image: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=500',
        name: 'Headphone',
        itemfavaret: false,
      ),
      Itemmodel(
        image: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?w=500',
        name: 'Digital Camera',
        itemfavaret: false,
      ),
      Itemmodel(
        image:
            'https://images.unsplash.com/photo-1548036328-c9fa89d128fa?w=500',
        name: 'Ladies Bag',
        itemfavaret: false,
      ),
      Itemmodel(
        image: 'https://images.unsplash.com/photo-1511499767150-a48a237f0083?w=500',
        name: 'Sunglasses',
        itemfavaret: false,
      ),
      Itemmodel(
        image: 'https://images.unsplash.com/photo-1541643600914-78b084683601?w=500',
        name: 'Perfume',
        itemfavaret: false,
      ),
      Itemmodel(
        image: 'https://images.unsplash.com/photo-1514228742587-6b1558fcca3d?w=500',
        name: 'Coffee Mug',
        itemfavaret: false,
      ),
      Itemmodel(
        image: 'https://images.unsplash.com/photo-1587829741301-dc798b83add3?w=500',
        name: 'Gaming Keyboard',
        itemfavaret: false,
      ),
      Itemmodel(
        image: 'https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?w=500',
        name: 'Bluetooth Speaker',
        itemfavaret: false,
      ),
      Itemmodel(
        image: 'https://images.unsplash.com/photo-1627123424574-724758594e93?w=500',
        name: 'Leather Wallet',
        itemfavaret: false,
      ),
      Itemmodel(
        image: 'https://images.unsplash.com/photo-1611591437281-460bfbe1220a?w=500',
        name: 'Fashion Bracelet',
        itemfavaret: false,
      ),
      Itemmodel(
        image: 'https://images.unsplash.com/photo-1491553895911-0055eca6402d?w=500',
        name: 'Sports Shoes',
        itemfavaret: false,
      ),
      Itemmodel(
        image: 'https://images.unsplash.com/photo-1503602642458-232111445657?w=500',
        name: 'Modern Chair',
        itemfavaret: false,
      ),
    ];
  }

void istogglecatagory(int index) {
  catagoryitem[index].itemfavaret =
      !catagoryitem[index].itemfavaret;

  catagoryitem.refresh();
}
}
