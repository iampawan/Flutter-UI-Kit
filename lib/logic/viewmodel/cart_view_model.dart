import 'package:flutter_uikit/model/product.dart';

class CartViewModel {
  final Product product;
  int get totalQuantity => product.quantity;
  void addQuantity() => product.quantity < 10 ? product.quantity++ : null;
  void deleteQuantity() => product.quantity > 0 ? product.quantity-- : null;

  CartViewModel({this.product});
}
