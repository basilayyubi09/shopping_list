import 'package:get/get.dart';
import 'package:shopping_list/Models/product.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getData();
  }

  void getData() async {
    await Future.delayed(const Duration(seconds: 1));
    var serverResponse = [
      Product(
          1,
          "Nike Jordan Shoes",
          "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/8f9edaed-1c38-4373-a457-2191a01ff15c/air-jordan-1-mid-shoes-zxLK1G.png",
          "You've got the hops",
          100),
      Product(
          1,
          "Sketchers",
          "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/8f9edaed-1c38-4373-a457-2191a01ff15c/air-jordan-1-mid-shoes-zxLK1G.png",
          "You've got the hops",
          300)
      ,Product(
          1,
          "Adidas",
          "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/8f9edaed-1c38-4373-a457-2191a01ff15c/air-jordan-1-mid-shoes-zxLK1G.png",
          "You've got the hops",
          200)
    ];

    products.value = serverResponse;
  }
}
