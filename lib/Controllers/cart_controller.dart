import 'package:get/get.dart';
import 'package:shopping_list/Models/product.dart';

class CartController extends GetxController {
  var cartItem = <Product>[].obs;
  double get totalPrice => cartItem.fold(0, (sum, item) => sum + item.price);


  addToCart(Product product) {
    cartItem.add(product);
  }
}
