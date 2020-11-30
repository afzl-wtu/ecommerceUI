import 'dart:async';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:relativity_d1/models/product.dart';

class Menu extends StatefulWidget {
  final bool isMenu;
  Menu(this.isMenu);
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  var imageNetwork = NetworkImage("https:");

  bool loadImage = true;

  static var _customTextStyleBlack = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w700,
    fontSize: 15.0,
  );
  static var _customTextStyleBlue = TextStyle(
    color: Color(0xFF6991C7),
    fontWeight: FontWeight.w700,
    fontSize: 15.0,
  );

  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      setState(() {
        loadImage = false;
      });
    });
    super.initState();
  }

  final List<String> imgList = [
    'assets/images/camera1.jpg',
    'assets/images/camera2.jpg',
    'assets/images/camera3.jpg',
    'assets/images/camera4.jpg',
  ];
  final List<String> imgList2 = [
    'assets/images/discount.jpg',
    'assets/images/discount1.jpg',
    'assets/images/discount2.jpg',
    'assets/images/discount3.jpg',
  ];
  Widget get _slider => Padding(
        padding: const EdgeInsets.only(
          bottom: 35.0,
        ),
        child: Container(
          height: 300.0,
          child: Carousel(
            boxFit: BoxFit.cover,
            autoplay: true,
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 1000),
            dotSize: 7.0,
            dotBgColor: Colors.transparent,
            dotColor: Colors.purple.shade600,
            dotIncreasedColor: Color(0xFFFF335C),
            showIndicator: true,
            indicatorBgPadding: 7.0,
            images: (widget.isMenu ? imgList : imgList2)
                .map((e) => Image.asset(e))
                .toList(),
          ),
        ),
      );

  Widget get _subCategory => Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                right: 20.0,
                left: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Sub Category",
                    style: _customTextStyleBlack,
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.of(context).push(PageRouteBuilder(
                      //     pageBuilder: (_, __, ___) => new PromoDetail()));
                    },
                    child: Text(
                      "See More",
                      style: _customTextStyleBlue.copyWith(
                        color: Colors.black26,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                color: Colors.white,
                margin: EdgeInsets.only(
                  right: 10.0,
                  top: 5.0,
                ),
                height: 110.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.0,
                      ),
                    ),
                    _keywordItem(
                      title: "Polo Shirt",
                      title2: "Shirt",
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15.0,
                      ),
                    ),
                    _keywordItem(
                      title: "Suit",
                      title2: "Jacket",
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15.0,
                      ),
                    ),
                    _keywordItem(
                      title: "Jeans",
                      title2: "Bag",
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15.0,
                      ),
                    ),
                    _keywordItem(
                      title: "Watch",
                      title2: "Shoes",
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );

  Widget get _itemDiscount => Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                right: 20.0,
                left: 20.0,
                top: 30.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Item Discount",
                    style: _customTextStyleBlack,
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.of(context).push(PageRouteBuilder(
                      //     pageBuilder: (_, __, ___) => new PromoDetail()));
                    },
                    child: Text("See More", style: _customTextStyleBlue),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(right: 10.0),
                height: 300.0,
                child: loadImage
                    ? _loadingImageAnimationDiscount(context)
                    : ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) =>
                            _discountItem(
                          widget.isMenu
                              ? itemDiscount[index]
                              : itemDiscount2[index],
                        ),
                        itemCount:
                            (widget.isMenu ? itemDiscount : itemDiscount2)
                                .length,
                      ),
              ),
            )
          ],
        ),
      );

  Widget get _itemPopular => Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  right: 20.0,
                  left: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Item Popular",
                      style: _customTextStyleBlack,
                    ),
                    InkWell(
                      onTap: null,
                      child: Text(
                        "See More",
                        style: _customTextStyleBlue,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(right: 10.0),
                  height: 300.0,
                  child: loadImage
                      ? _loadingImageAnimation(context)
                      : ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) =>
                              _buildProductItem(
                            widget.isMenu
                                ? itemPopularData[index]
                                : itemPopularData2[index],
                          ),
                          itemCount: (widget.isMenu
                                  ? itemPopularData
                                  : itemPopularData2)
                              .length,
                        ),
                ),
              )
            ],
          ),
        ),
      );
  Widget get _itemNew => Padding(
        padding: const EdgeInsets.only(
          top: 30.0,
          bottom: 15.0,
        ),
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  right: 20.0,
                  left: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "New Items",
                      style: _customTextStyleBlack,
                    ),
                    InkWell(
                      onTap: null,
                      child: Text(
                        "See More",
                        style: _customTextStyleBlue,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(
                    right: 10.0,
                    bottom: 15.0,
                  ),
                  height: 300.0,
                  child: loadImage
                      ? _loadingImageAnimation(context)
                      : ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) =>
                              _buildProductItem(
                            widget.isMenu ? newItems[index] : newItems2[index],
                          ),
                          itemCount:
                              (widget.isMenu ? newItems : newItems2).length,
                        ),
                ),
              )
            ],
          ),
        ),
      );
  Widget _discountItem(ProductItem item) => Padding(
        padding: const EdgeInsets.only(
          top: 20.0,
          left: 10.0,
          bottom: 10.0,
          right: 0.0,
        ),
        child: InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF656565).withOpacity(0.15),
                    blurRadius: 2.0,
                    spreadRadius: 1.0,
                  )
                ]),
            child: Wrap(
              children: <Widget>[
                Container(
                  width: 160.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            height: 185.0,
                            width: 160.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(7.0),
                                topRight: Radius.circular(7.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(item.image),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Container(
                            height: 25.5,
                            width: 55.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFD7124A),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20.0),
                                topLeft: Radius.circular(5.0),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "20%",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 7.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.0,
                          right: 15.0,
                        ),
                        child: Text(
                          item.title,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              letterSpacing: 0.5,
                              color: Colors.black54,
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.0,
                          right: 15.0,
                        ),
                        child: Text(
                          item.price,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.0,
                          right: 15.0,
                          top: 5.0,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  item.rating,
                                  style: TextStyle(
                                      color: Colors.black26,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.0),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 14.0,
                                )
                              ],
                            ),
                            Text(
                              item.sale,
                              style: TextStyle(
                                  color: Colors.black26,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.0),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget _buildProductItem(ProductItem item) => Padding(
        padding: const EdgeInsets.only(
          top: 20.0,
          left: 10.0,
          bottom: 10.0,
          right: 0.0,
        ),
        child: InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF656565).withOpacity(0.15),
                    blurRadius: 2.0,
                    spreadRadius: 1.0,
                  )
                ]),
            child: Wrap(
              children: <Widget>[
                Container(
                  width: 160.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        height: 185.0,
                        width: 160.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(7.0),
                            topRight: Radius.circular(7.0),
                          ),
                          image: DecorationImage(
                            image: AssetImage(item.image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 7.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.0,
                          right: 15.0,
                        ),
                        child: Text(
                          item.title,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              letterSpacing: 0.5,
                              color: Colors.black54,
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.0,
                          right: 15.0,
                        ),
                        child: Text(
                          item.price,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.0,
                          right: 15.0,
                          top: 5.0,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  item.rating,
                                  style: TextStyle(
                                      color: Colors.black26,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.0),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 14.0,
                                )
                              ],
                            ),
                            Text(
                              item.sale,
                              style: TextStyle(
                                  color: Colors.black26,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.0),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  @override
  Widget build(BuildContext context) {
    //final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Color(
                0xFF6991C7,
              ),
            ),
          ),
        ],
        centerTitle: true,
        title: Text(
          widget.isMenu ? "Menu" : 'Categories',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(
          color: Color(0xFF6991C7),
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              _slider,
              _subCategory,
              _itemDiscount,
              _itemPopular,
              _itemNew
            ],
          ),
        ),
      ),
    );
  }

  Widget get _loadingMenuItemDiscounted => Padding(
        padding: const EdgeInsets.only(
          top: 20.0,
          left: 10.0,
          bottom: 10.0,
          right: 0.0,
        ),
        child: InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF656565).withOpacity(0.15),
                  blurRadius: 2.0,
                  spreadRadius: 1.0,
                )
              ],
            ),
          ),
        ),
      );
  Widget _loadingImageAnimationDiscount(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) =>
          _loadingMenuItemDiscounted,
      itemCount: itemDiscount.length,
    );
  }

  Widget _loadingImageAnimation(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) => _loadingMenuItemCard,
      itemCount: itemDiscount.length,
    );
  }

  Widget get _loadingMenuItemCard => Padding(
        padding: const EdgeInsets.only(
          top: 20.0,
          left: 10.0,
          bottom: 10.0,
          right: 0.0,
        ),
        child: InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF656565).withOpacity(0.15),
                    blurRadius: 2.0,
                    spreadRadius: 1.0,
                  )
                ]),
          ),
        ),
      );
  Widget _keywordItem({
    title,
    title2,
  }) =>
      Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 4.0,
              left: 3.0,
            ),
            child: Container(
              height: 29.5,
              width: 90.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4.5,
                    spreadRadius: 1.0,
                  )
                ],
              ),
              child: Center(
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0),
          ),
          Container(
            height: 29.5,
            width: 90.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4.5,
                  spreadRadius: 1.0,
                )
              ],
            ),
            child: Center(
              child: Text(
                title2,
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
            ),
          ),
        ],
      );
}

List<ProductItem> itemDiscount = [
  ProductItem(
    image: 'assets/images/camera5.jpg',
    title: "Tasadduq Hanif",
    price: "\$ 20",
    rating: "4.7",
    sale: "456 Sale",
  ),
  ProductItem(
    image: 'assets/images/camera6.jpg',
    title: "Muzammil Hanif",
    price: "\$ 100",
    rating: "5.2",
    sale: "456 Sale",
  ),
  ProductItem(
    image: 'assets/images/camera7.jpg',
    title: "Tasadduq Wattu",
    price: "\$ 10",
    rating: "5.9",
    sale: "345 Sale",
  ),
  ProductItem(
    image: 'assets/images/camera8.jpg',
    title: "Muzammil Hanif",
    price: "\$ 45",
    rating: "4.9",
    sale: "364 Sale",
  ),
  ProductItem(
    image: 'assets/images/camera1.jpg',
    title: "Muzammil Hanif",
    price: "\$ 100",
    rating: "4.7",
    sale: "155 Sale",
  ),
  ProductItem(
    image: 'assets/images/camera5.jpg',
    title: "Muzammil Hanif",
    price: "\$ 10",
    rating: "4.8",
    sale: "100 Sale",
  ),
];

List<ProductItem> itemPopularData = [
  ProductItem(
    image: 'assets/images/camera6.jpg',
    title: "Muzammil Hanif",
    price: "\$ 100",
    rating: "4.6",
    sale: "456 Sale",
  ),
  ProductItem(
    image: 'assets/images/camera5.jpg',
    title: "Muzammil Hanif",
    price: "\$ 200",
    rating: "7.2",
    sale: "342 Sale",
  ),
  ProductItem(
    image: 'assets/images/camera7.jpg',
    title: "Muzammil Hanif",
    price: "\$ 100",
    rating: "4.9",
    sale: "378 Sale",
  ),
  ProductItem(
    image: 'assets/images/camera8.jpg',
    title: "Muzammil Hanif",
    price: "\$ 150",
    rating: "4.7",
    sale: "987 Sale",
  ),
  ProductItem(
    image: 'assets/images/camera5.jpg',
    title: "Muzammil Hanif",
    price: "\$ 20",
    rating: "4.5",
    sale: "345 Sale",
  ),
  ProductItem(
    image: 'assets/images/camera6.jpg',
    title: "Muzammil Hanif",
    price: "\$ 20",
    rating: "4.5",
    sale: "345 Sale",
  ),
];

List<ProductItem> newItems = [
  ProductItem(
    image: 'assets/images/camera8.jpg',
    title: "Muzammil Hanif",
    price: "\$ 100",
    rating: "4.8",
    sale: "432 Sale",
  ),
  ProductItem(
    image: 'assets/images/camera7.jpg',
    title: "Muzammil Hanif",
    price: "\$ 200",
    rating: "4.2",
    sale: "345 Sale",
  ),
  ProductItem(
    image: 'assets/images/camera6.jpg',
    title: "Muzammil Hanif",
    price: "\$ 4",
    rating: "4.7",
    sale: "345 Sale",
  ),
  ProductItem(
    image: 'assets/images/camera5.jpg',
    title: "Muzammil Hanif",
    price: "\$ 500",
    rating: "4.4",
    sale: "987 Sale",
  ),
  ProductItem(
    image: 'assets/images/camera8.jpg',
    title: "Muzammil Hanif",
    price: "\$ 100",
    rating: "4.8",
    sale: "123 Sale",
  ),
  ProductItem(
    image: 'assets/images/camera5.jpg',
    title: "Muzammil Hanif",
    price: "\$ 100",
    rating: "4.8",
    sale: "123 Sale",
  ),
];

List<ProductItem> itemDiscount2 = [
  ProductItem(
    image: "assets/images/mans1.jpg",
    title: "Tasadduq Hanif",
    price: "\$ 20",
    rating: "4.7",
    sale: "456 Sale",
  ),
  ProductItem(
    image: "assets/images/mans2.jpg",
    title: "Muzammil Hanif",
    price: "\$ 100",
    rating: "5.2",
    sale: "456 Sale",
  ),
  ProductItem(
    image: "assets/images/girls1.jpg",
    title: "Tasadduq Wattu",
    price: "\$ 10",
    rating: "5.9",
    sale: "345 Sale",
  ),
  ProductItem(
    image: "assets/images/mans3.webp",
    title: "Muzammil Hanif",
    price: "\$ 45",
    rating: "4.9",
    sale: "364 Sale",
  ),
  ProductItem(
    image: "assets/images/girls2.jpg",
    title: "Muzammil Hanif",
    price: "\$ 100",
    rating: "4.7",
    sale: "155 Sale",
  ),
  ProductItem(
    image: "assets/images/girls1.jpg",
    title: "Muzammil Hanif",
    price: "\$ 10",
    rating: "4.8",
    sale: "100 Sale",
  ),
];

List<ProductItem> itemPopularData2 = [
  ProductItem(
    image: "assets/images/mans3.webp",
    title: "Muzammil Hanif",
    price: "\$ 100",
    rating: "4.6",
    sale: "456 Sale",
  ),
  ProductItem(
    image: "assets/images/mans2.jpg",
    title: "Muzammil Hanif",
    price: "\$ 200",
    rating: "7.2",
    sale: "342 Sale",
  ),
  ProductItem(
    image: "assets/images/girls1.jpg",
    title: "Muzammil Hanif",
    price: "\$ 100",
    rating: "4.9",
    sale: "378 Sale",
  ),
  ProductItem(
    image: "assets/images/mans1.jpg",
    title: "Muzammil Hanif",
    price: "\$ 150",
    rating: "4.7",
    sale: "987 Sale",
  ),
  ProductItem(
    image: "assets/images/girls2.jpg",
    title: "Muzammil Hanif",
    price: "\$ 20",
    rating: "4.5",
    sale: "345 Sale",
  ),
  ProductItem(
    image: "assets/images/girls2.jpg",
    title: "Muzammil Hanif",
    price: "\$ 20",
    rating: "4.5",
    sale: "345 Sale",
  ),
];

List<ProductItem> newItems2 = [
  ProductItem(
    image: "assets/images/mans2.jpg",
    title: "Muzammil Hanif",
    price: "\$ 100",
    rating: "4.8",
    sale: "432 Sale",
  ),
  ProductItem(
    image: "assets/images/girls1.jpg",
    title: "Muzammil Hanif",
    price: "\$ 200",
    rating: "4.2",
    sale: "345 Sale",
  ),
  ProductItem(
    image: "assets/images/mans1.jpg",
    title: "Muzammil Hanif",
    price: "\$ 4",
    rating: "4.7",
    sale: "345 Sale",
  ),
  ProductItem(
    image: "assets/images/girls2.jpg",
    title: "Muzammil Hanif",
    price: "\$ 500",
    rating: "4.4",
    sale: "987 Sale",
  ),
  ProductItem(
    image: "assets/images/mans3.webp",
    title: "Muzammil Hanif",
    price: "\$ 100",
    rating: "4.8",
    sale: "123 Sale",
  ),
  ProductItem(
    image: "assets/images/mans3.webp",
    title: "Muzammil Hanif",
    price: "\$ 100",
    rating: "4.8",
    sale: "123 Sale",
  ),
];
