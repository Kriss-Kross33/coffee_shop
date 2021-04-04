import 'package:meta/meta.dart';

class CoffeeShop {
  final String shopName;
  final String coffeeType;
  final String description;
  final String shortDesription;
  final String price;
  final bool isFavourite;
  final String imagePath;

  CoffeeShop({
    @required this.shopName,
    @required this.coffeeType,
    @required this.price,
    @required this.imagePath,
    @required this.shortDesription,
    this.description,
    this.isFavourite = false,
  });
}

List<CoffeeShop> coffeeShops = <CoffeeShop>[
  new CoffeeShop(
    shopName: 'CoffeeShop\'s',
    coffeeType: 'Caffè Misto',
    shortDesription:
        'A one-to-one combination of fresh-brewed coffee and steamed '
        ' milk.',
    description: 'A one-to-one combination of fresh-brewed coffee and steamed ' +
        'milk add up to one distinctly delicious coffee drink remarkably mixed.',
    price: '\$4.99',
    imagePath: 'assets/images/ncup2.png',
  ),
  new CoffeeShop(
    shopName: 'Brownhouse\'s',
    coffeeType: 'Caffè Latte',
    shortDesription:
        'Our dark, rich espresso balanced with steamed milk and a ' +
            'light layer of foam.',
    description: 'Our dark, rich espresso balanced with steamed milk and a ' +
        'light layer of foam. A perfect milk-forward warm-up.',
    price: '\$3.99',
    imagePath: 'assets/images/twocup2.png',
  ),
  new CoffeeShop(
    shopName: 'CoffeeShop',
    coffeeType: 'Caramel Macchiato',
    shortDesription: 'Freshly steamed milk with vanilla-flavored syrup',
    description: 'Freshly steamed milk with vanilla-flavored syrup is' +
        'marked with expresso and topped with caramel dizzzle for an ' +
        ' oh-so-sweet finish.',
    price: '\$5.99',
    isFavourite: true,
    imagePath: 'assets/images/starbucks2.png',
  ),
];
