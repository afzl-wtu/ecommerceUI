import 'package:flutter/material.dart';
import 'package:relativity_d1/models/product.dart';

class CartTab extends StatefulWidget {
  @override
  _CartTabState createState() => _CartTabState();
}

class _CartTabState extends State<CartTab> {
  List<ProductItem> items = [
    ProductItem(
      image: 'assets/images/vivo.jpg',
      title: 'VIVO S1',
      price: '\$ 200',
      quantity: '2',
    ),
    ProductItem(
      image: 'assets/images/headphones.webp',
      title: 'HeadPhone',
      price: '\$ 100',
      quantity: '5',
    ),
    ProductItem(
      image: 'assets/images/headphones.webp',
      title: 'HeadPhone',
      price: '\$ 100',
      quantity: '7',
    ),
    ProductItem(
      image: 'assets/images/shoes.webp',
      title: 'Nike',
      price: '\$ 50',
      quantity: '10',
    ),
    ProductItem(
      image: 'assets/images/vivo.jpg',
      title: 'VIVO S1',
      price: '\$ 200',
      quantity: '15',
    ),
    ProductItem(
      image: 'assets/images/boofer.jpg',
      title: 'Boofer',
      price: '\$ 200',
      quantity: '23',
    ),
    ProductItem(
      image: 'assets/images/shoes.webp',
      title: 'Nike',
      price: '\$ 50',
      quantity: '24',
    ),
    ProductItem(
      image: 'assets/images/shoes.webp',
      title: 'Nike',
      price: '\$ 50',
      quantity: '22',
    ),
    ProductItem(
      image: 'assets/images/shoes.webp',
      title: 'Nike',
      price: '\$ 50',
      quantity: '12',
    ),
    ProductItem(
      image: 'assets/images/shoes.webp',
      title: 'Nike',
      price: '\$ 50',
      quantity: '20',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Cart',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                FlatButton(
                  child: Text(
                    'Order Now',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) => Container(
                padding: EdgeInsets.all(20),
                color: Colors.amber,
                child: Dismissible(
                  key: GlobalKey(),
                  direction: DismissDirection.startToEnd,
                  background: Container(
                    color: Colors.red,
                    child: Row(
                      children: [
                        SizedBox(width: 38),
                        Icon(Icons.delete),
                      ],
                    ),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(items[index].image),
                    ),
                    title: Text(items[index].title),
                    subtitle: Text(items[index].quantity),
                    trailing: Text(items[index].price),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
