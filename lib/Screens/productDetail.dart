import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:relativity_d1/Screens/reviewsAll.dart';
import 'package:relativity_d1/tabs/cartTab.dart';
import 'package:relativity_d1/tabs/homeTab.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'chatItem.dart';
import 'delivery.dart';

class ProductDetail extends StatefulWidget {
  final GridElement gridElement;

  ProductDetail(this.gridElement);

  @override
  _ProductDetailState createState() => _ProductDetailState(gridElement);
}

class _ProductDetailState extends State<ProductDetail> {
  double rating = 3.5;
  int starCount = 5;

  final GridElement gridElement;
  _ProductDetailState(this.gridElement);

  int valueItemChart = 0;
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  void _bottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (builder) {
        return SingleChildScrollView(
          child: Container(
            color: Colors.black26,
            child: Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Container(
                height: 1500.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Center(
                        child: Text(
                      "Description",
                      style: _subHeaderCustomStyle,
                    )),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, left: 20.0, right: 20.0, bottom: 20.0),
                      child: Text(
                          "In order to assist the candidates in comprehending and retaining the basic cancepts regarding science the book contain the content supported by visual illustrations,flowcharts and tables.",
                          style: _detailText),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Spesifications :",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15.0,
                            color: Colors.black,
                            letterSpacing: 0.3,
                            wordSpacing: 0.5),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                        left: 20.0,
                      ),
                      child: Text(
                        " - Team Relativity are family members.  ",
                        style: _detailText,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  static var _customTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 17.0,
    fontWeight: FontWeight.w800,
  );

  static var _subHeaderCustomStyle = TextStyle(
      color: Colors.black54, fontWeight: FontWeight.w700, fontSize: 16.0);

  static var _detailText =
      TextStyle(color: Colors.black54, letterSpacing: 0.3, wordSpacing: 0.5);

  var _suggestedItem = Padding(
    padding: const EdgeInsets.only(
      left: 15.0,
      right: 20.0,
      top: 30.0,
      bottom: 20.0,
    ),
    child: Container(
      height: 280.0,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Top Rated Products",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15.0),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "See All",
                  style: TextStyle(
                      color: Colors.indigoAccent.withOpacity(0.8),
                      fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(
                top: 20.0,
                bottom: 2.0,
              ),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                FavoriteItem(
                  image: "assets/images/Girl1.jpg",
                  title: "Fashion Girl",
                  salary: "\$ 20",
                  sale: "876 Sale",
                  rating: "4.5",
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                ),
                FavoriteItem(
                  image: "assets/images/Man1.png",
                  title: "Fashion Man",
                  salary: "\$ 100",
                  sale: "765 Sale",
                  rating: "2.2",
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                ),
                FavoriteItem(
                  image: "assets/images/Jacket1.webp",
                  title: "New Design of Jacket",
                  salary: "\$ 8",
                  sale: "763 Sale",
                  rating: "7.7",
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                ),
                FavoriteItem(
                  image: "assets/images/Jeans1.webp",
                  title: "New Design of Jeans",
                  salary: "\$ 65",
                  sale: "903 Sale",
                  rating: "6.4",
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
  final List<String> imgList = [
    'assets/images/shop1.webp',
    'assets/images/shop2.jpg',
    'assets/images/shop3.jpg',
    'assets/images/shop4.jpg',
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        actions: <Widget>[
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => CartTab(),
                ),
              );
            },
            child: Stack(
              alignment: AlignmentDirectional(-1.0, -0.8),
              children: <Widget>[
                IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.black26,
                    )),
                CircleAvatar(
                  radius: 10.0,
                  backgroundColor: Colors.red,
                  child: Text(
                    valueItemChart.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        elevation: 0.5,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Product Detail",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 25.0,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 300.0,
                    child: Hero(
                      tag: "Relativity-${gridElement.id}",
                      child: Material(
                        child: Carousel(
                          boxFit: BoxFit.fitHeight,
                          autoplay: true,
                          animationCurve: Curves.fastOutSlowIn,
                          animationDuration: Duration(milliseconds: 1000),
                          dotSize: 7.0,
                          dotColor: Colors.purple.shade600,
                          dotIncreasedColor: Color(0xFFFF335C),
                          dotBgColor: Colors.transparent,
                          dotVerticalPadding: 10.0,
                          showIndicator: true,
                          indicatorBgPadding: 7.0,
                          images: [
                            AssetImage(gridElement.image),
                            AssetImage(gridElement.image),
                            AssetImage(gridElement.image),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF656565).withOpacity(0.15),
                          blurRadius: 1.0,
                          spreadRadius: 0.2,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        top: 10.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            gridElement.title,
                            style: _customTextStyle,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                          ),
                          Text(
                            gridElement.price,
                            style: _customTextStyle,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                          ),
                          Divider(
                            color: Colors.black12,
                            height: 1.0,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 10.0, bottom: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                      height: 30.0,
                                      width: 75.0,
                                      decoration: BoxDecoration(
                                        color: Colors.lightGreen,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20.0),
                                        ),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            gridElement.rattingValue,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 8.0),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.white,
                                            size: 19.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Text(
                                    gridElement.itemSale,
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      height: 220.0,
                      width: 600.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF656565).withOpacity(0.15),
                            blurRadius: 1.0,
                            spreadRadius: 0.2,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Size", style: _subHeaderCustomStyle),
                            Row(
                              children: <Widget>[
                                RadioButtonCustom(
                                  txt: "S",
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15.0),
                                ),
                                RadioButtonCustom(
                                  txt: "M",
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15.0),
                                ),
                                RadioButtonCustom(
                                  txt: "L",
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15.0),
                                ),
                                RadioButtonCustom(
                                  txt: "XL",
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 15.0),
                            ),
                            Divider(
                              color: Colors.black12,
                              height: 1.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.0),
                            ),
                            Text(
                              "Color",
                              style: _subHeaderCustomStyle,
                            ),
                            Row(
                              children: <Widget>[
                                RadioButtonColor(Colors.black),
                                Padding(
                                  padding: EdgeInsets.only(left: 15.0),
                                ),
                                RadioButtonColor(Colors.white),
                                Padding(
                                  padding: EdgeInsets.only(left: 15.0),
                                ),
                                RadioButtonColor(Colors.blue),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      height: 205.0,
                      width: 600.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF656565).withOpacity(0.15),
                            blurRadius: 1.0,
                            spreadRadius: 0.2,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                "Description",
                                style: _subHeaderCustomStyle,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15.0,
                                right: 20.0,
                                bottom: 10.0,
                                left: 20.0,
                              ),
                              child: Text(gridElement.description,
                                  style: _detailText),
                            ),
                            Center(
                              child: InkWell(
                                onTap: () {
                                  _bottomSheet();
                                },
                                child: Text(
                                  "View More",
                                  style: TextStyle(
                                    color: Colors.indigoAccent,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      height: 415.0,
                      width: 600.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF656565).withOpacity(0.15),
                            blurRadius: 1.0,
                            spreadRadius: 0.2,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 20.0, left: 20.0),
                        child: ListView(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Reviews',
                                  style: _subHeaderCustomStyle,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 15.0, bottom: 15.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      InkWell(
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: 2.0, right: 3.0),
                                          child: Text(
                                            'View All',
                                            style:
                                                _subHeaderCustomStyle.copyWith(
                                                    color: Colors.indigoAccent,
                                                    fontSize: 14.0),
                                          ),
                                        ),
                                        onTap: () {
                                          Navigator.of(context).push(
                                            PageRouteBuilder(
                                              pageBuilder: (_, __, ___) =>
                                                  ReviewsAll(),
                                            ),
                                          );
                                        },
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 15.0, top: 2.0),
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          size: 18.0,
                                          color: Colors.black54,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      SmoothStarRating(
                                        rating: rating,
                                        isReadOnly: false,
                                        size: 30,
                                        filledIconData: Icons.star,
                                        halfFilledIconData: Icons.star_half,
                                        defaultIconData: Icons.star_border,
                                        starCount: 5,
                                        allowHalfRating: true,
                                        spacing: 1.0,
                                        onRated: (value) {
                                          print("rating value -> $value");
                                          // print("rating value dd -> ${value.truncate()}");
                                        },
                                      ),
                                      SizedBox(width: 5.0),
                                      Text('8 Reviews')
                                    ]),
                              ],
                            ),
                            _buildRating('30 march 2020',
                                'This is new design of jacket.Simly softy and smothly .They are provide many items....',
                                (rating) {
                              setState(() {
                                this.rating = rating;
                              });
                            }, "assets/images/Man2.jpg"),
                            _buildRating('30 march 2020',
                                'This is new design of jacket.Simly softy and smothly .They are provide many items....',
                                (rating) {
                              setState(() {
                                this.rating = rating;
                              });
                            }, "assets/images/Girl2.jpg"),
                            _buildRating('30 march 2020',
                                'This is new design of jacket.Simly softy and smothly .They are provide many items....',
                                (rating) {
                              setState(() {
                                this.rating = rating;
                              });
                            }, "assets/images/Man3.jpg"),
                            Padding(
                              padding: EdgeInsets.only(bottom: 65.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  _suggestedItem
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              var snackbar = SnackBar(
                content: Text("Item Added"),
              );
              setState(() {
                valueItemChart++;
              });
              _key.currentState.showSnackBar(snackbar);
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 40.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        color: Colors.white12.withOpacity(0.1),
                        border: Border.all(color: Colors.black12),
                      ),
                      child: Center(
                        child: Image.asset(
                          "assets/images/shopping_cart.png",
                          height: 25.0,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            pageBuilder: (_, ___, ____) => ChatItem(),
                          ),
                        );
                      },
                      child: Container(
                        height: 40.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          color: Colors.white12.withOpacity(0.1),
                          border: Border.all(color: Colors.black12),
                        ),
                        child: Center(
                          child: Image.asset("assets/images/images icon.png",
                              height: 25.0),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            pageBuilder: (_, __, ___) => Delivery(),
                          ),
                        );
                      },
                      child: Container(
                        height: 45.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          color: Colors.purple.shade600,
                        ),
                        child: Center(
                          child: Text(
                            "Pay",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildRating(
      String date, String details, Function changeRating, String image) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Container(
              height: 45.0,
              width: 45.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(50.0),
                ),
              ),
            ),
            title: Row(
              children: <Widget>[
                SmoothStarRating(
                  rating: rating,
                  isReadOnly: false,
                  size: 20,
                  filledIconData: Icons.star,
                  halfFilledIconData: Icons.star_half,
                  defaultIconData: Icons.star_border,
                  starCount: 5,
                  allowHalfRating: true,
                  spacing: 1.0,
                  onRated: (value) {
                    print("rating value -> $value");
                    // print("rating value dd -> ${value.truncate()}");
                  },
                ),
                SizedBox(width: 8.0),
                Text(
                  date,
                  style: TextStyle(fontSize: 12.0),
                )
              ],
            ),
            subtitle: Text(
              details,
              style: _detailText,
            ),
          ),
        ),
        Divider(thickness: 2)
      ],
    );
  }
}

class RadioButtonCustom extends StatefulWidget {
  final String txt;

  RadioButtonCustom({this.txt});

  @override
  _RadioButtonCustomState createState() => _RadioButtonCustomState(this.txt);
}

class _RadioButtonCustomState extends State<RadioButtonCustom> {
  _RadioButtonCustomState(this.txt);

  String txt;
  bool itemSelected = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: InkWell(
        onTap: () {
          setState(() {
            if (itemSelected == false) {
              setState(() {
                itemSelected = true;
              });
            } else if (itemSelected == true) {
              setState(() {
                itemSelected = false;
              });
            }
          });
        },
        child: Container(
          height: 37.0,
          width: 37.0,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: itemSelected ? Colors.black54 : Colors.indigoAccent,
              ),
              shape: BoxShape.circle),
          child: Center(
            child: Text(
              txt,
              style: TextStyle(
                color: itemSelected ? Colors.black54 : Colors.indigoAccent,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RadioButtonColor extends StatefulWidget {
  final Color clr;

  RadioButtonColor(this.clr);

  @override
  _RadioButtonColorState createState() => _RadioButtonColorState(this.clr);
}

class _RadioButtonColorState extends State<RadioButtonColor> {
  bool itemSelected = true;
  Color clr;

  _RadioButtonColorState(this.clr);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: InkWell(
        onTap: () {
          if (itemSelected == false) {
            setState(() {
              itemSelected = true;
            });
          } else if (itemSelected == true) {
            setState(() {
              itemSelected = false;
            });
          }
        },
        child: Container(
          height: 37.0,
          width: 37.0,
          decoration: BoxDecoration(
              color: clr,
              border: Border.all(
                  color: itemSelected ? Colors.black26 : Colors.indigoAccent,
                  width: 2.0),
              shape: BoxShape.circle),
        ),
      ),
    );
  }
}

class FavoriteItem extends StatelessWidget {
  final String image, rating, salary, title, sale;

  FavoriteItem({
    this.image,
    this.rating,
    this.salary,
    this.title,
    this.sale,
  });

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF656565).withOpacity(0.15),
              blurRadius: 4.0,
              spreadRadius: 1.0,
            ),
          ],
        ),
        child: Wrap(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 150.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(7.0),
                      topRight: Radius.circular(7.0),
                    ),
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 15.0)),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                  ),
                  child: Text(
                    title,
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
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Text(
                    salary,
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 14.0),
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
                            rating,
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
                        sale,
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
          ],
        ),
      ),
    );
  }
}
