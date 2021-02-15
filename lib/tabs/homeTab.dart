import 'package:flutter/material.dart';

import 'package:line_icons/line_icons.dart';
import 'package:carousel_pro/carousel_pro.dart';

import '../Screens/menu.dart';
import '../Screens/productDetail.dart';
import '../Screens/weeklyDiscount.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final search = TextEditingController();
  final List<String> imgList = [
    'assets/images/slider1.jpg',
    'assets/images/slider2.jpg',
    'assets/images/slider3.webp',
    'assets/images/discount2.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 182,
                width: double.infinity,
                child: Carousel(
                  dotColor: Colors.purple.shade600,
                  dotIncreasedColor: Color(0xFFFF335C),
                  autoplay: true,
                  animationCurve: Curves.fastOutSlowIn,
                  animationDuration: Duration(milliseconds: 1000),
                  dotSize: 5.5,
                  dotSpacing: 16.0,
                  dotBgColor: Colors.transparent,
                  showIndicator: true,
                  overlayShadow: true,
                  overlayShadowColors: Colors.white.withOpacity(.2),
                  overlayShadowSize: .7,
                  images: imgList
                      .map(
                        (e) => AssetImage(e),
                      )
                      .toList(),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Menu',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildMenuItem(context, 'Camera', LineIcons.camera),
                  buildMenuItem(context, 'Apple', LineIcons.apple),
                  buildMenuItem(context, 'HeadPhone', LineIcons.car),
                  buildMenuItem(context, 'VideoCam', LineIcons.video_camera),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildMenuItem(context, 'Gucci', LineIcons.shirtsinbulk),
                  buildMenuItem(context, 'Lap Top', LineIcons.laptop),
                  buildMenuItem(context, 'Mobile', LineIcons.mobile_phone),
                  buildMenuItem(context, 'Health', LineIcons.ambulance),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildMenuItem(context, 'Car', LineIcons.headphones),
                  buildMenuItem(context, 'Amazon', LineIcons.amazon),
                  buildMenuItem(context, 'Books', LineIcons.book),
                  buildMenuItem(context, 'Coffe', LineIcons.coffee),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Weekly Discount',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 150,
                width: mediaQuery.size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 20),
                    buildWeeklyItem(
                        context, 'Discount 10%', 'assets/images/vivo.jpg'),
                    buildWeeklyItem(context, 'Discount 20%',
                        'assets/images/headphones.webp'),
                    buildWeeklyItem(
                        context, 'Discount 30%', 'assets/images/cosmatic.jpg'),
                    buildWeeklyItem(
                        context, 'Discount 40%', 'assets/images/shoes.webp'),
                    buildWeeklyItem(
                        context, 'Discount 50%', 'assets/images/boofer.jpg'),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Category',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 320,
                width: mediaQuery.size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 20),
                    buildCategoryItem(
                        context, 'Fashion Man', 'assets/images/man1.jpg'),
                    buildCategoryItem(
                        context, 'Computer', 'assets/images/computer2.jpg'),
                    buildCategoryItem(
                        context, 'Health', 'assets/images/heatlh1.jpg'),
                    buildCategoryItem(
                        context, 'Fashion Kids', 'assets/images/kid.jpg'),
                    buildCategoryItem(
                        context, 'Fashion Girl', 'assets/images/woman.webp'),
                    buildCategoryItem(
                        context, 'SmartPhones', 'assets/images/oppo.webp'),
                    buildCategoryItem(
                        context, 'Shoes', 'assets/images/nike1.jpg'),
                    buildCategoryItem(
                        context, 'Makeup', 'assets/images/makeup.jpg'),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Recomended',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              GridView.count(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 20.0,
                ),
                crossAxisSpacing: 15,
                mainAxisSpacing: 20,
                childAspectRatio: 0.550,
                crossAxisCount: 2,
                primary: false,
                children: List.generate(
                  gridElements.length,
                  (index) => ElementOfGrid(
                    gridElements[index],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  InkWell buildMenuItem(BuildContext context, String text, IconData icon) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (ctx) => Menu(true),
          ),
        );
      },
      child: Container(
        child: Column(
          children: [
            Icon(
              icon,
              size: 35,
              color: Colors.pink,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 8),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildWeeklyItem(BuildContext context, String text, String photo) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (ctx) => WeeklyDiscount(),
            ),
          );
        },
        child: Container(
          width: 150,
          child: Stack(
            fit: StackFit.expand,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  photo,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategoryItem(BuildContext context, String text, String photo) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (ctx) => Menu(false)));
        },
        child: Container(
          width: 200,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                photo,
                fit: BoxFit.cover,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GridElement {
  final String id;
  final String image;
  final String title;
  final String price;
  final String rattingValue;
  final String itemSale;
  final String description;

  GridElement({
    this.id,
    this.image,
    this.title,
    this.price,
    this.rattingValue,
    this.itemSale,
    this.description,
  });
}

List<GridElement> gridElements = [
  GridElement(
    id: "1",
    image: "assets/images/Girl1.jpg",
    title: "Fashion Girl",
    price: "\$ 20",
    itemSale: "876 Sale",
    rattingValue: "4.5",
    description:
        "This is new design of jacket.Simly softy and smothly .They are provide many items....",
  ),
  GridElement(
    id: "2",
    image: "assets/images/Man1.png",
    title: "Fashion Man",
    price: "\$ 100",
    itemSale: "765 Sale",
    rattingValue: "2.2",
    description:
        "This is new design of jacket.Simly softy and smothly .They are provide many items....",
  ),
  GridElement(
    id: "3",
    image: "assets/images/Jacket1.webp",
    title: "New Design of Jacket",
    price: "\$ 8",
    itemSale: "763 Sale",
    rattingValue: "7.7",
    description:
        "This is new design of jacket.Simly softy and smothly .They are provide many items....",
  ),
  GridElement(
    id: "4",
    image: "assets/images/Jeans1.webp",
    title: "New Design of Jeans",
    price: "\$ 65",
    itemSale: "903 Sale",
    rattingValue: "6.4",
    description:
        "This is new design of jacket.Simly softy and smothly .They are provide many items....",
  ),
  GridElement(
    id: "5",
    image: "assets/images/Makeup1.jpg",
    title: "A New Cosmatics",
    price: "\$ 50",
    itemSale: "463 Sale",
    rattingValue: "2.5",
    description:
        "This is new design of jacket.Simly softy and smothly .They are provide many items....",
  ),
  GridElement(
    id: "6",
    image: "assets/images/Neckless1.jpg",
    title: "Stylish Jewellery",
    price: "\$ 30",
    itemSale: "154 Sale",
    rattingValue: "4.9",
    description:
        "This is new design of jacket.Simly softy and smothly .They are provide many items....",
  ),
  GridElement(
    id: "7",
    image: "assets/images/Ring1.jpg",
    title: "Green Diamond Ring",
    price: "\$ 20",
    itemSale: "987 Sale",
    rattingValue: "7.1",
    description:
        "This is new design of jacket.Simly softy and smothly .They are provide many items....",
  ),
  GridElement(
    id: "8",
    image: "assets/images/nike.jpg",
    title: "Nick Shoes",
    price: "\$ 200",
    itemSale: "675 Sale",
    rattingValue: "7.9",
    description:
        "This is new design of jacket.Simly softy and smothly .They are provide many items....",
  ),
];

class ElementOfGrid extends StatelessWidget {
  final GridElement gridElement;
  ElementOfGrid(this.gridElement);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => ProductDetail(gridElement),
            transitionDuration: Duration(milliseconds: 800),
            transitionsBuilder:
                (_, Animation<double> animation, __, Widget child) {
              return Opacity(
                opacity: animation.value,
                child: child,
              );
            },
          ),
        );
      },
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
                Hero(
                  tag: "Relativity-${gridElement.id}",
                  child: Material(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            opaque: false,
                            pageBuilder: (BuildContext context, _, __) {
                              return Material(
                                color: Colors.black54,
                                child: Container(
                                  padding: EdgeInsets.all(30.0),
                                  child: InkWell(
                                    child: Hero(
                                      tag: "Relativity-${gridElement.id}",
                                      child: Image.asset(
                                        gridElement.image,
                                        width: 300.0,
                                        height: 300.0,
                                        alignment: Alignment.center,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                              );
                            },
                            transitionDuration: Duration(
                              milliseconds: 600,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: mediaQueryData.size.height / 3.3,
                        width: 200.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(7.0),
                            topRight: Radius.circular(7.0),
                          ),
                          image: DecorationImage(
                            image: AssetImage(gridElement.image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 7.0),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Text(
                    gridElement.title,
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
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Text(
                    gridElement.price,
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 14.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            gridElement.rattingValue,
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
                        gridElement.itemSale,
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
