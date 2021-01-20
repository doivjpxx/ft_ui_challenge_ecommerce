import 'package:flutter/material.dart';
import 'package:ft_ui_challenge_ecommerce/constants/assets.dart';
import 'package:ft_ui_challenge_ecommerce/widgets/network_image.dart';

class MyEcommerce7 extends StatelessWidget {
  final List<Map> items = [
    {"image": breakfast, "title": "Breakfast Set", "price": 20},
    {"image": burger, "title": "Veg Burger", "price": 30},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Cart 2".toUpperCase(),
            style: TextStyle(color: Colors.black87),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black87),
        ),
        backgroundColor: Colors.grey.shade100,
        body: Column(
          children: <Widget>[
            Expanded(
                child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 30.0, bottom: 10.0),
                            width: double.infinity,
                            child: Material(
                              elevation: 3.0,
                              borderRadius: BorderRadius.circular(5.0),
                              child: Container(
                                padding: EdgeInsets.all(16.0),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 80,
                                      child:
                                          PNetworkImage(items[index]["image"]),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            items[index]["title"],
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 20.0,
                                          ),
                                          Text(
                                            "\$${items[index]['price']}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 20,
                            right: 15,
                            child: Container(
                              height: 30,
                              width: 30,
                              alignment: Alignment.center,
                              child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                padding: EdgeInsets.all(0.0),
                                color: Colors.pinkAccent,
                                child: Icon(
                                  Icons.clear,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          )
                        ],
                      );
                    })),
            Container(
              padding: EdgeInsets.all(20.0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "Subtotal      \$50",
                    style:
                        TextStyle(color: Colors.grey.shade700, fontSize: 16.0),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Delivery        \$3",
                    style:
                        TextStyle(color: Colors.grey.shade700, fontSize: 16.0),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Cart Subtotal    \$50",
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: MaterialButton(
                        height: 50.0,
                        onPressed: () {},
                        color: Colors.pinkAccent,
                        child: Text(
                          'Checkout',
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        )),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
