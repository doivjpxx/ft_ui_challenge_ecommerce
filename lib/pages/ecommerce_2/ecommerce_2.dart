import 'package:flutter/material.dart';

import 'package:ft_ui_challenge_ecommerce/constants/assets.dart' as assets;

TextStyle priceTextStyle =
    TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold);

List<String> images = [
  assets.images[0],
  assets.images[1],
  assets.images[2],
];

class MyEcommerce2 extends StatefulWidget {
  @override
  _MyEcommerce2State createState() => _MyEcommerce2State();
}

class _MyEcommerce2State extends State<MyEcommerce2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Stuff'),
        backgroundColor: Colors.red[400],
      ),
      backgroundColor: Colors.grey.shade200,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
            child: Text(
              "Categories",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Container(
            width: double.infinity,
            height: 150.0,
            margin: EdgeInsets.only(top: 15),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) {
                return _categoryList(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
            child: Text(
              "Featured Products",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 150,
            margin: EdgeInsets.only(top: 15),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return _featuredProduct(context);
              },
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
              child: Row(
                textBaseline: TextBaseline.alphabetic,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: <Widget>[
                  Text(
                    "Recent Products",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    "View all",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontSize: 13),
                  )
                ],
              )),
          SizedBox(
            height: 10.0,
          ),
          ...[1, 2, 3, 4, 5, 6, 7]
              .map((product) => ProductListItem(onPressed: () {}))
        ],
      ),
    );
  }
}

extension MoreMyEcommerce2 on _MyEcommerce2State {
  Widget _categoryList(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black12,
                image: DecorationImage(
                    image: NetworkImage(images[2]), fit: BoxFit.cover)),
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: 100,
            height: 100,
          ),
          SizedBox(
            height: 10,
          ),
          Text("Tables")
        ],
      ),
    );
  }

  Widget _featuredProduct(context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey,
            image: DecorationImage(
                image: NetworkImage(images[0]), fit: BoxFit.cover),
          ),
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 10),
          width: 150,
          height: 150,
        ),
        Positioned(
          bottom: 0,
          left: 10,
          right: 10,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Text(
              "Sofa Set",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0),
            ),
          ),
        )
      ],
    );
  }
}

class ProductListItem extends StatelessWidget {
  final Function onPressed;

  const ProductListItem({Key key, @required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: MaterialButton(
        onPressed: onPressed,
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        padding: const EdgeInsets.all(0),
        elevation: 0.5,
        child: Row(
          children: <Widget>[
            Ink(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: NetworkImage(images[1]),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text("Drawer Table"),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Rs. 8000", style: priceTextStyle)
                          ],
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.shopping_cart),
                        onPressed: () {
                          print('tapped');
                        },
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
