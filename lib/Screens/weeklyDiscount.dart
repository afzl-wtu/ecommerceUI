import 'package:flutter/material.dart';
import 'package:relativity_d1/tabs/homeTab.dart';

class WeeklyDiscount extends StatefulWidget {
  @override
  _WeeklyDiscountState createState() => _WeeklyDiscountState();
}

class _WeeklyDiscountState extends State<WeeklyDiscount> {
  final search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Weekly Discount',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Search Item',
                  hintText: 'Search Item',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
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
    );
  }
}
