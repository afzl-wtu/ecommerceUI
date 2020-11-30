import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ReviewsAll extends StatefulWidget {
  @override
  _ReviewsAllState createState() => _ReviewsAllState();
}

class _ReviewsAllState extends State<ReviewsAll> {
  double rating = 3.5;
  int starCount = 5;

  static var _detailText =
      TextStyle(color: Colors.black54, letterSpacing: 0.3, wordSpacing: 0.5);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Reviews',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black87,
            )),
        elevation: 0.0,
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 20.0),
                  child: Text(
                    "Reviews",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, left: 20.0),
                  child: Row(
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
                          Text('9 Reviews')
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    top: 15.0,
                    bottom: 7.0,
                  ),
                  child: _line(),
                ),
                ListTile(
                  leading: Container(
                    height: 45.0,
                    width: 45.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/Man3.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          50.0,
                        ),
                      ),
                    ),
                  ),
                  title: Row(
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
                      SizedBox(width: 8.0),
                      Text(
                        "23 july 2020",
                        style: TextStyle(fontSize: 12.0),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    top: 15.0,
                    bottom: 7.0,
                  ),
                  child: _line(),
                ),
                _buildRating('30 march 2020',
                    'This is new design of jacket.Simly softy and smothly .They are provide many items....',
                    (rating) {
                  setState(() {
                    this.rating = rating;
                  });
                }, "assets/images/Man2.jpg"),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    top: 15.0,
                    bottom: 7.0,
                  ),
                  child: _line(),
                ),
                _buildRating('30 march 2020',
                    'This is new design of jacket.Simly softy and smothly .They are provide many items....',
                    (rating) {
                  setState(() {
                    this.rating = rating;
                  });
                }, "assets/images/Girl2.jpg"),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    top: 15.0,
                    bottom: 7.0,
                  ),
                  child: _line(),
                ),
                _buildRating('30 march 2020',
                    'This is new design of jacket.Simly softy and smothly .They are provide many items....',
                    (rating) {
                  setState(() {
                    this.rating = rating;
                  });
                }, "assets/images/Man2.jpg"),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    top: 15.0,
                    bottom: 7.0,
                  ),
                  child: _line(),
                ),
                _buildRating('30 march 2020',
                    'This is new design of jacket.Simly softy and smothly .They are provide many items....',
                    (rating) {
                  setState(() {
                    this.rating = rating;
                  });
                }, "assets/images/Man3.jpg"),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    top: 15.0,
                    bottom: 7.0,
                  ),
                  child: _line(),
                ),
                _buildRating('30 march 2020',
                    'This is new design of jacket.Simly softy and smothly .They are provide many items....',
                    (rating) {
                  setState(() {
                    this.rating = rating;
                  });
                }, "assets/images/Girl2.jpg"),
                SizedBox(
                  height: 10.0,
                ),
                _line(),
                Padding(
                  padding: EdgeInsets.only(bottom: 40.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRating(
      String date, String details, Function changeRating, String image) {
    return ListTile(
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
    );
  }
}

Widget _line() {
  return Container(
    height: 0.9,
    width: double.infinity,
    color: Colors.black12,
  );
}
