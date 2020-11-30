import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:relativity_d1/tabs/accountTab.dart';
import 'package:relativity_d1/tabs/cartTab.dart';
import 'package:relativity_d1/tabs/favouriteTab.dart';
import 'package:relativity_d1/tabs/homeTab.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.purple.shade600,
          actions: [
            IconButton(
              icon: Icon(
                Icons.chat,
                size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert,
                size: 30,
              ),
              onPressed: () {},
            ),
          ],
          title: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                ),
                border: InputBorder.none,
                hintText: 'Relativity Shop',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                child: Icon(Icons.home),
              ),
              Tab(
                child: Icon(Icons.favorite),
              ),
              Tab(
                child: Icon(Icons.shopping_cart),
              ),
              Tab(
                child: Icon(Icons.account_circle),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HomeTab(),
            FavouriteTab(),
            CartTab(),
            AccountTab(),
          ],
        ),
      ),
    );
  }
}
