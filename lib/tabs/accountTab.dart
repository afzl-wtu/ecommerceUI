import 'package:flutter/material.dart';

class AccountTab extends StatefulWidget {
  @override
  _AccountTabState createState() => _AccountTabState();
}

var _txt = TextStyle(
  color: Colors.black,
);

var _txtName = _txt.copyWith(
  fontWeight: FontWeight.w700,
  fontSize: 17.0,
);

var _txtEdit = _txt.copyWith(
  color: Colors.black26,
  fontSize: 15.0,
);

var _txtCategory = _txt.copyWith(
  fontSize: 14.5,
  color: Colors.black54,
  fontWeight: FontWeight.w500,
);

class _AccountTabState extends State<AccountTab> {
  var _profile = Padding(
    padding: EdgeInsets.only(
      top: 185.0,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 90.0,
              width: 90.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 2.5,
                ),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/profile man.jpeg"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                "Tasadduq Wattu",
                style: _txtName,
              ),
            ),
            InkWell(
              onTap: null,
              child: Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: Text(
                  "Edit Profile",
                  style: _txtEdit,
                ),
              ),
            ),
          ],
        ),
        // Stay Edit Profile Center
        Container(),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              Container(
                height: 240.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/profile back...jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              _profile,
              Padding(
                padding: const EdgeInsets.only(top: 360.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                        left: 85.0,
                        right: 30.0,
                      ),
                      child: Divider(
                        color: Colors.black12,
                        height: 2.0,
                      ),
                    ),
                    Category(
                      txt: "Payments",
                      padding: 30.0,
                      image: "assets/images/debet card.png",
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                        left: 85.0,
                        right: 30.0,
                      ),
                      child: Divider(
                        color: Colors.black12,
                        height: 2.0,
                      ),
                    ),
                    Category(
                      txt: "My Orders",
                      padding: 30.0,
                      image: "assets/images/debet card.png",
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                        left: 85.0,
                        right: 30.0,
                      ),
                      child: Divider(
                        color: Colors.black12,
                        height: 2.0,
                      ),
                    ),
                    Category(
                      txt: "Setting Acount",
                      padding: 30.0,
                      image: "assets/images/debet card.png",
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                        left: 85.0,
                        right: 30.0,
                      ),
                      child: Divider(
                        color: Colors.black12,
                        height: 2.0,
                      ),
                    ),
                    Category(
                      txt: "Call Center",
                      padding: 30.0,
                      image: "assets/images/debet card.png",
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                        left: 85.0,
                        right: 30.0,
                      ),
                      child: Divider(
                        color: Colors.black12,
                        height: 2.0,
                      ),
                    ),
                    Category(
                      padding: 30.0,
                      txt: "About Developers",
                      image: "assets/images/debet card.png",
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String txt, image;
  final GestureTapCallback tap;
  final double padding;

  Category({
    this.txt,
    this.image,
    this.tap,
    this.padding,
  });

  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 15.0,
              left: 30.0,
            ),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: padding),
                  child: Image.asset(
                    image,
                    height: 25.0,
                  ),
                ),
                Text(
                  txt,
                  style: _txtCategory,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
