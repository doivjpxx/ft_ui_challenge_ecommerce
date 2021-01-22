import 'package:flutter/material.dart';
import 'package:ft_ui_challenge_ecommerce/constants/assets.dart';
import 'package:ft_ui_challenge_ecommerce/widgets/network_image.dart';

class MyEcommerce11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.grey.shade700, //change your color here
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title:
              Text('Back to Shopping', style: TextStyle(color: Colors.black)),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.favorite_border_outlined),
              onPressed: () {},
            )
          ],
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            _buildPageContent(),
            // _buildAppBar(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                _buildAddToCartButton(),
              ],
            )
          ],
        ));
  }

  Widget _buildPageContent() {
    return ListView(
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      children: <Widget>[
        PNetworkImage(images[4]),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: Row(
            children: <Widget>[
              Expanded(
                  child:
                      buildDropdownButton(['Black', 'Blue', 'Red'], 'Black')),
              Expanded(
                  child: buildDropdownButton(['S', 'M', 'XL', 'XXL'], 'XXL')),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
          child: Text('Kapka Valour',
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                SizedBox(
                  width: 20.0,
                ),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                SizedBox(
                  width: 5.0,
                ),
                Text("5.0 stars",
                    style: TextStyle(color: Colors.grey, fontSize: 14.0))
              ],
            )),
            Text("\$5500",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30.0,
                )),
            SizedBox(
              width: 20.0,
            ),
          ],
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Text("Description",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400))),
        Container(
          padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dignissim erat in accumsan tempus. Mauris congue luctus neque, in semper purus maximus iaculis. Donec et eleifend quam, a sollicitudin magna.",
            textAlign: TextAlign.justify,
            style: TextStyle(color: Colors.grey.shade600),
          ),
        ),
      ],
    );
  }

  Widget _buildAppBar() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        AppBar(
          iconTheme: IconThemeData(
            color: Colors.grey.shade700, //change your color here
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title:
              Text('Back to Shopping', style: TextStyle(color: Colors.black)),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.favorite_border_outlined),
              onPressed: () {},
            )
          ],
        )
      ],
    );
  }
}

extension MoreMyEcommerce11 on MyEcommerce11 {
  Widget _buildAddToCartButton() {
    return Row(
      children: <Widget>[
        Expanded(
          child: MaterialButton(
            color: Colors.deepOrange,
            elevation: 0,
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Buy",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        Expanded(
          child: MaterialButton(
            color: Colors.grey[500],
            elevation: 0,
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Add to bag",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget buildDropdownButton(List<String> items, String selectedValue) {
    return DropdownButton<String>(
      isExpanded: true,
      value: selectedValue,
      onChanged: (_) {},
      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
