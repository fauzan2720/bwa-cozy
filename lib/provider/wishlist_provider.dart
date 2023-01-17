import 'package:cozy/core.dart';
import 'package:flutter/material.dart';

class WishlistProvider with ChangeNotifier {
  List<SpaceModel> _wishlist = [];

  List<SpaceModel> get wishlist => _wishlist;

  set wishlist(List<SpaceModel> wishlist) {
    _wishlist = wishlist;
    notifyListeners();
  }

  setProduct(SpaceModel product) {
    if (!isWishlist(product)) {
      _wishlist.add(product);
    } else {
      _wishlist.removeWhere((element) => element.id == product.id);
    }
  }

  isWishlist(SpaceModel product) {
    if (_wishlist.indexWhere((element) => element.id == product.id) == -1) {
      return false;
    } else {
      return true;
    }
  }
}
