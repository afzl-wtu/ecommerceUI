import 'package:flutter/material.dart';
import 'package:relativity_d1/models/product.dart';

class FavouriteTab extends StatefulWidget {
  @override
  _FavouriteTabState createState() => _FavouriteTabState();
}

class _FavouriteTabState extends State<FavouriteTab> {
  List<ProductItem> items = [
    ProductItem(
      image: 'assets/images/Jeans1.webp',
      title: 'Gucci',
      price: '\$ 200',
    ),
    ProductItem(
      image: 'assets/images/camera6.jpg',
      title: 'Camera',
      price: '\$ 100',
    ),
    ProductItem(
      image: 'assets/images/Neckless1.jpg',
      title: 'Neckless',
      price: '\$ 100',
    ),
    ProductItem(
      image: 'assets/images/camera8.jpg',
      title: 'VideiCamera',
      price: '\$ 50',
    ),
    ProductItem(
      image: 'assets/images/nike.jpg',
      title: 'Nike',
      price: '\$ 200',
    ),
    ProductItem(
      image: 'assets/images/Makeup1.jpg',
      title: 'Makeup',
      price: '\$ 200',
    ),
    ProductItem(
      image: 'assets/images/Jeans1.webp',
      title: 'Gucci',
      price: '\$ 50',
    ),
    ProductItem(
      image: 'assets/images/Neckless1.jpg',
      title: 'Neckless',
      price: '\$ 50',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 20.0,
        ),
        crossAxisSpacing: 15,
        mainAxisSpacing: 20,
        childAspectRatio: 1 / 1.01,
        crossAxisCount: 2,
        primary: false,
        children: items
            .map(
              (e) => Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF656565).withOpacity(0.15),
                      blurRadius: 4.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                ),
                child: GridTile(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(e.image),
                    ),
                  ),
                  footer: GridTileBar(
                    backgroundColor: Colors.black38,
                    title: Text(
                      e.title,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      e.price,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: IconButton(
                      color: Colors.red.shade700,
                      icon: Icon(Icons.favorite),
                      onPressed: () {},
                    ),
                    trailing: IconButton(
                      color: Colors.red.shade700,
                      icon: Icon(Icons.shopping_cart),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
