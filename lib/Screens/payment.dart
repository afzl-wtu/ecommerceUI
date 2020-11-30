import 'dart:async';

import 'package:flutter/material.dart';
import 'package:relativity_d1/Screens/home.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  startTime() async {
    return Timer(Duration(milliseconds: 1450), navigator);
  }

  void navigator() {
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => HomeScreen(),
      ),
    );
  }

  int tapvalue = 0;
  int tapvalue2 = 0;
  int tapvalue3 = 0;
  int tapvalue4 = 0;

  var _customStyle = TextStyle(
    fontWeight: FontWeight.w800,
    color: Colors.black,
    fontSize: 17.0,
  );

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop(false);
          },
          child: Icon(Icons.arrow_back),
        ),
        elevation: 0.0,
        title: Text(
          "Payment",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18.0,
            color: Colors.black54,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Color(0xFF6991C7),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 30.0,
              left: 20.0,
              right: 20.0,
            ),
            child: Column(
              children: <Widget>[
                Text(
                  "Choose your payment method",
                  style: TextStyle(
                    letterSpacing: 0.1,
                    fontWeight: FontWeight.w600,
                    fontSize: 25.0,
                    color: Colors.black54,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 60.0),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (tapvalue == 0) {
                        tapvalue++;
                      } else {
                        tapvalue--;
                      }
                    });
                  },
                  child: Row(
                    children: <Widget>[
                      Radio(
                        value: 1,
                        groupValue: tapvalue,
                        onChanged: null,
                      ),
                      Text(
                        "Credit / Debit Card",
                        style: _customStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Image.asset(
                          "assets/images/debet card.png",
                          height: 25.0,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                ),
                Divider(
                  height: 1.0,
                  color: Colors.black26,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (tapvalue2 == 0) {
                        tapvalue2++;
                      } else {
                        tapvalue2--;
                      }
                    });
                  },
                  child: Row(
                    children: <Widget>[
                      Radio(
                        value: 1,
                        groupValue: tapvalue2,
                        onChanged: null,
                      ),
                      Text("Cash On Delivery", style: _customStyle),
                      Padding(
                        padding: const EdgeInsets.only(left: 50.0),
                        child: Image.asset(
                          "assets/images/handshake.jpg",
                          height: 25.0,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                ),
                Divider(
                  height: 1.0,
                  color: Colors.black26,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (tapvalue3 == 0) {
                        tapvalue3++;
                      } else {
                        tapvalue3--;
                      }
                    });
                  },
                  child: Row(
                    children: <Widget>[
                      Radio(
                        value: 1,
                        groupValue: tapvalue3,
                        onChanged: null,
                      ),
                      Text("Paypal", style: _customStyle),
                      Padding(
                        padding: const EdgeInsets.only(left: 130.0),
                        child: Image.asset(
                          "assets/images/paypal-512.png",
                          height: 25.0,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                ),
                Divider(
                  height: 1.0,
                  color: Colors.black26,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (tapvalue4 == 0) {
                        tapvalue4++;
                      } else {
                        tapvalue4--;
                      }
                    });
                  },
                  child: Row(
                    children: <Widget>[
                      Radio(
                        value: 1,
                        groupValue: tapvalue4,
                        onChanged: null,
                      ),
                      Text("Google Wallet", style: _customStyle),
                      Padding(
                        padding: const EdgeInsets.only(left: 65.0),
                        child: Image.asset(
                          "assets/images/googlewallet.png",
                          height: 25.0,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 110.0),
                ),
                InkWell(
                  onTap: () {
                    _showDialog(context);
                    startTime();
                  },
                  child: Container(
                    height: 55.0,
                    width: 300.0,
                    decoration: BoxDecoration(
                      color: Colors.purple.shade600,
                      borderRadius: BorderRadius.all(
                        Radius.circular(40.0),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Pay",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 16.5,
                            letterSpacing: 2.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

var _txtCustomHead = TextStyle(
  color: Colors.black54,
  fontSize: 23.0,
  fontWeight: FontWeight.w600,
);

var _txtCustomSub = TextStyle(
  color: Colors.black38,
  fontSize: 15.0,
  fontWeight: FontWeight.w500,
);

_showDialog(BuildContext ctx) {
  showDialog(
    context: ctx,
    barrierDismissible: true,
    child: SimpleDialog(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            top: 30.0,
            right: 60.0,
            left: 60.0,
          ),
          color: Colors.white,
          child: Image.asset(
            "assets/images/Hhappy.jpg",
            height: 100.0,
            fit: BoxFit.fitHeight,
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              "Happy!!",
              style: _txtCustomHead,
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 30.0,
              bottom: 40.0,
            ),
            child: Text(
              "Your Payment Receive to Seller",
              style: _txtCustomSub,
            ),
          ),
        ),
      ],
    ),
  );
}
