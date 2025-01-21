import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: "Zoom Freak",
        price: '236',
        imagePath: 'lib/images/1.png',
        description:
            "The forward thinking design of his latest signature shoe."),
    Shoe(
        name: 'Air Jordan 1',
        price: '199',
        imagePath: 'lib/images/2.png',
        description:
            'A secure footing that allows you to move with ease and confidence.'),
    Shoe(
        name: 'Air Jordan 1',
        price: '45',
        imagePath: 'lib/images/3.png',
        description:
            'Bouncy and light, with a snug fit that allows you to move with ease and confidence.'),
    Shoe(
        name: 'Air Jordan 1',
        price: '222',
        imagePath: 'lib/images/4.png',
        description:
            'you\'ve got the ability to move with ease and confidence.'),
  ];
  List<Shoe> userCart = [];
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
