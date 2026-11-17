import 'package:get/get.dart';
import 'package:tabbar/model/data_model.dart';

class Datacontroller extends GetxController {
  final productlist = RxList<DataModel>();
  @override
  void onInit() {
    loadepage();
    super.onInit();
  }

  void loadepage() {
    productlist.value = [
      DataModel(
        id: 1,
        percent: 20,
        image:
            "https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=500",
        name: "Nike Shoes",
        price: 120,
        rating: 4.5,
        description: "Premium quality sports shoes",
      ),

      DataModel(
        id: 2,
        percent: 15,
        image: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=500",
        name: "Smart Watch",
        price: 80,
        rating: 4.8,
        description: "Modern smart watch",
      ),

      DataModel(
        id: 3,
        percent: 10,
        image:
            "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=500",
        name: "Travel Bag",
        price: 50,
        rating: 4.2,
        description: "High quality travel bag",
      ),

      DataModel(
        id: 4,
        percent: 25,
        image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=500",
        name: "Headphone",
        price: 65,
        rating: 4.7,
        description: "Wireless premium headphone",
      ),

      DataModel(
        id: 5,
        percent: 12,
        image:
            "https://images.unsplash.com/photo-1546868871-7041f2a55e12?w=500",
        name: "Smart Watch Pro",
        price: 150,
        rating: 4.6,
        description: "Advanced smartwatch",
      ),

      DataModel(
        id: 6,
        percent: 30,
        image: "https://images.unsplash.com/photo-1503602642458-232111445657?w=500",
        name: "Modern Chair",
        price: 200,
        rating: 4.3,
        description: "Comfortable modern chair",
      ),

      DataModel(
        id: 7,
        percent: 18,
        image: "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?w=500",
        name: "Camera",
        price: 350,
        rating: 4.9,
        description: "Professional digital camera",
      ),

      DataModel(
        id: 8,
        percent: 22,
        image:
            "https://images.unsplash.com/photo-1548036328-c9fa89d128fa?w=500",
        name: "Ladies Bag",
        price: 90,
        rating: 4.4,
        description: "Stylish ladies handbag",
      ),

      DataModel(
        id: 9,
        percent: 15,
        image: "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?w=500",
        name: "Digital Camera",
        price: 400,
        rating: 4.8,
        description: "High resolution digital camera",
      ),

      DataModel(
        id: 10,
        percent: 35,
        image:
            "https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=500",
        name: "Running Shoes",
        price: 75,
        rating: 4.5,
        description: "Lightweight running shoes",
      ),

      DataModel(
        id: 11,
        percent: 10,
        image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=500",
        name: "Bluetooth Headphone",
        price: 55,
        rating: 4.6,
        description: "Noise free bluetooth headphone",
      ),

      DataModel(
        id: 12,
        percent: 20,
        image: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=500",
        name: "Classic Watch",
        price: 110,
        rating: 4.7,
        description: "Elegant classic wrist watch",
      ),

      DataModel(
        id: 13,
        percent: 15,
        image:
            "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=500",
        name: "Backpack",
        price: 45,
        rating: 4.3,
        description: "Daily use travel backpack",
      ),

      DataModel(
        id: 14,
        percent: 28,
        image: "https://images.unsplash.com/photo-1491553895911-0055eca6402d?w=500",
        name: "Sports Shoes",
        price: 95,
        rating: 4.6,
        description: "Comfortable sports shoes",
      ),

      DataModel(
        id: 15,
        percent: 12,
        image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=500",
        name: "Music Headphone",
        price: 70,
        rating: 4.8,
        description: "Premium music experience",
      ),
    ];
  }
}
