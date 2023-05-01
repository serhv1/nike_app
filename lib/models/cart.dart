import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Nikeee',
      price: '420',
      imagePath: 'lib/images/nike_1.png',
      description:
          'Wake up YOU FREAK! Wake up YOU FREAK!Wake up YOU FREAK!Wake up YOU FREAK!Wake up YOU FREAK!Wake up YOU FREAK!Wake up YOU FREAK!',
    ),
    Shoe(
      name: 'Zoom FREAK',
      price: '241',
      imagePath: 'lib/images/nike_2.png',
      description: 'Wake up YOU FREAK!',
    ),
    Shoe(
      name: 'Nike Super',
      price: '441',
      imagePath: 'lib/images/nike_3.png',
      description: 'Very nice shoes 420',
    ),
    Shoe(
      name: 'Anotherol Ki',
      price: '221',
      imagePath: 'lib/images/nike_4.png',
      description: 'Wake up YOU FREAK!',
    ),
    Shoe(
      name: 'Klauz Koe',
      price: '120',
      imagePath: 'lib/images/nike_5.png',
      description: 'Wake up YOU FREAK!',
    ),
    Shoe(
      name: 'Juhen Waltz',
      price: '4120',
      imagePath: 'lib/images/nike_6.png',
      description: 'Wake up YOU FREAK!',
    ),
  ];
  // list of items in user cart

  List<Shoe> userCart = [];

  // get list of shoes for sale

  List<Shoe> getShoeList() => shoeShop;

  // get cart

  List<Shoe> getUserCart() => userCart;

  // add items to cart

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
