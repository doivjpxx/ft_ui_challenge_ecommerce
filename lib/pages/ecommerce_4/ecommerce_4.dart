import 'package:flutter/material.dart';
import 'package:ft_ui_challenge_ecommerce/constants/assets.dart';
import 'package:ft_ui_challenge_ecommerce/widgets/network_image.dart';

class MyEcommerce4 extends StatelessWidget {
  final String image = images[1];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            child: PNetworkImage(
              image,
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    MaterialButton(
                      padding: const EdgeInsets.all(8.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                      textColor: Colors.black,
                      minWidth: 0,
                      height: 40,
                      onPressed: () => Navigator.pop(context),
                    ),
                  ]),
                ),
                Spacer(),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white),
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 20.0,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  title: Text(
                                    "Docside",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 28.0),
                                  ),
                                  trailing: IconButton(
                                    icon: Icon(Icons.favorite_border),
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0, vertical: 8.0),
                                  child: Text(
                                    "Hand-stitched finish. Flexible pebble sole. Made of brown leather with a textured effect",
                                    style:
                                        TextStyle(color: Colors.grey.shade600),
                                  ),
                                ),
                                ExpansionTile(
                                  title: Text(
                                    "Show Details",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.topLeft,
                                      padding: const EdgeInsets.all(16.0),
                                      child: Text(
                                          "This is the details widget. Here you can see more details of the product"),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(32.0),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0)),
                            color: Colors.grey.shade900,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "\$35.99",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0),
                              ),
                              RaisedButton(
                                onPressed: () {},
                                padding: const EdgeInsets.all(15.0),
                                color: Colors.orange[400],
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(30.0)),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        "Add to cart",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 18),
                                      ),
                                      Card(
                                        margin: const EdgeInsets.only(left: 15),
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.orange[400],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
