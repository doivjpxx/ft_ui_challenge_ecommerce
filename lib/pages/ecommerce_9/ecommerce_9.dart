import 'package:flutter/material.dart';

class MyEcommerce9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.filter_list,
              color: Colors.grey.shade700,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.grey.shade700,
            ),
          ),
        ],
        backgroundColor: Colors.white70,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.grey.shade700,
            )),
        title: Text(
          'Shopping',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
        // bottom: _buildBottomBar(),
      ),
      body: Container(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.category), title: Text("Shop")),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border), title: Text("Favorites")),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), title: Text("Notifications")),
        BottomNavigationBarItem(
            icon: Icon(Icons.location_on), title: Text("Near me")),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings), title: Text("Settings")),
      ],
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.red,
    );
  }
}
