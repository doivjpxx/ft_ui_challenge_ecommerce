import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ft_ui_challenge_ecommerce/constants/assets.dart';
import 'package:ft_ui_challenge_ecommerce/widgets/network_image.dart';

class MyEcommerce5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              color: Colors.orangeAccent.shade700,
            ),
            width: double.infinity,
          ),
          Container(
            margin: EdgeInsets.only(left: 90, bottom: 20),
            width: 299,
            height: 279,
            decoration: BoxDecoration(
                color: Colors.orangeAccent.shade400,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(160),
                    bottomLeft: Radius.circular(290),
                    bottomRight: Radius.circular(160),
                    topRight: Radius.circular(10))),
          ),
          CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Padding(
                  padding: Platform.isIOS
                      ? const EdgeInsets.symmetric(
                          horizontal: 26.0, vertical: 50.0)
                      : const EdgeInsets.all(26.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Good Morning",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w800,
                              color: Colors.white)),
                      Text("Everyone",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w800,
                              color: Colors.white)),
                      SizedBox(
                        height: 40,
                      ),
                      Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: TextField(
                          controller: TextEditingController(text: 'Search...'),
                          cursorColor: Theme.of(context).primaryColor,
                          style: TextStyle(color: Colors.black, fontSize: 18),
                          decoration: InputDecoration(
                              filled: true,
                              suffixIcon: Material(
                                elevation: 2.0,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                child: Icon(Icons.search),
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 13)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.all(26.0),
                sliver: SliverGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: <Widget>[
                    cards(brocoli, 'Brocoli', '30'),
                    cards(cabbage, 'Cabbage', '37'),
                    cards(mango, 'Mango', '22'),
                    cards(pineapple, 'Pineapple', '90'),
                    cards(brocoli, 'Brocoli', '30'),
                    cards(cabbage, 'Cabbage', '37'),
                    cards(mango, 'Mango', '22'),
                    cards(pineapple, 'Pineapple', '90'),
                    cards(brocoli, 'Brocoli', '30'),
                    cards(cabbage, 'Cabbage', '37'),
                    cards(mango, 'Mango', '22'),
                    cards(pineapple, 'Pineapple', '90'),
                  ],
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.deepOrange,
        currentIndex: 1,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: "Today's Special"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.fastfood,
              ),
              label: "Foods",
              backgroundColor: Colors.deepOrange),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
      backgroundColor: Colors.white70.withOpacity(0.9),
    );
  }
}

extension MoreMyEcommerce5 on MyEcommerce5 {
  Widget cards(image, title, price) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 6.0,
          ),
        ],
        color: Colors.white,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            PNetworkImage(
              image,
              height: 80,
            ),
            SizedBox(
              height: 5,
            ),
            Text(title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(top: 4),
                color: Colors.deepOrange,
                child: Text("\$ " + price,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12))),
          ],
        ),
      ),
    );
  }
}
