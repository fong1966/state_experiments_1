import 'package:scoped_model/scoped_model.dart';

import 'package:state_fong_1/common/models/cart.dart';
import 'package:state_fong_1/common/models/cart_item.dart';
import 'package:state_fong_1/common/models/product.dart';

class CartModel extends Model {
  final _cart = Cart();

  List<CartItem> get items => _cart.items;

  int get itemCount => _cart.itemCount;

  void add(Product product) {
    _cart.add(product);
    notifyListeners();
  }
}
