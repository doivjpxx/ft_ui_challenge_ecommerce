import 'package:flutter/material.dart';
import 'package:ft_ui_challenge_ecommerce/constants/assets.dart';
import 'package:ft_ui_challenge_ecommerce/widgets/network_image.dart';

class MyEcommerce10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.grey.shade700, //change your color here
        ),
        title: Text(
          'Women Apperals',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_bag,
            ),
          )
        ],
      ),
      body: _buildPageContent(),
    );
  }

  Widget _buildPageContent() {
    return Container(
        child: Stack(
      children: <Widget>[
        Container(
          height: double.infinity,
          child: ListView(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            padding: const EdgeInsets.all(20.0),
            children: <Widget>[
              Container(
                height: 320,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(images[1]), fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "\$500",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Womens Casual Purse",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dignissim erat in accumsan tempus. Mauris congue luctus neque, in semper purus maximus iaculis. Donec et eleifend quam, a sollicitudin magna.",
                textAlign: TextAlign.justify,
                style: TextStyle(color: Colors.grey.shade600),
              ),
              _buildCarousel()
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            _buildAddToCartButton(),
          ],
        )
      ],
    ));
  }
}

extension MoreMyEcommerce10 on MyEcommerce10 {
  Widget _buildCarousel() {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      padding: const EdgeInsets.all(10.0),
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        children: <Widget>[
          PNetworkImage(
            images[0],
            height: 80,
          ),
          SizedBox(
            width: 20.0,
          ),
          PNetworkImage(
            images[1],
            height: 80,
          ),
          SizedBox(
            width: 20.0,
          ),
          PNetworkImage(
            images[3],
            height: 80,
          ),
        ],
      ),
    );
  }

  Widget _buildAddToCartButton() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            color: Colors.transparent,
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0)),
              child: Text("Add to Cart"),
              color: Colors.orange,
              textColor: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
