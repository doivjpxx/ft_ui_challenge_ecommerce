import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:ft_ui_challenge_ecommerce/constants/assets.dart' as assets;
import 'package:ft_ui_challenge_ecommerce/widgets/network_image.dart';

class MyEcommerce8 extends StatelessWidget {
  final List<String> categories = [
    'DarazMall',
    'Flash Sales',
    'Collection',
    'Vouchers',
    'Categories'
  ];
  final List<String> images = [
    assets.images[0],
    assets.images[2],
    assets.images[1],
    assets.images[3]
  ];
  final List<String> flashSaleImages = [
    assets.backgroundImages[0],
    assets.backgroundImages[2],
    assets.backgroundImages[1]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Flutter UIs'),
        elevation: 0,
      ),
      body: ListView.builder(
        itemBuilder: _buildListView,
        itemCount: 20,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
      ),
    );
  }

  Widget _buildListView(_, index) {
    if (index == 0) {
      return _buildSlider();
    }
    if (index == 1) {
      return _buildCategoriesGrid();
    }
    return Container();
  }

  Widget _buildSlider() {
    return Container(
      height: 120.0,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: DiagonalPathClipperOne(),
            child: Container(
              height: 110,
              color: Colors.deepPurple,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Swiper(
              autoplay: true,
              itemBuilder: (BuildContext context, int index) {
                return new PNetworkImage(
                  images[index],
                  fit: BoxFit.cover,
                );
              },
              itemCount: 4,
              pagination: new SwiperPagination(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoriesGrid() {
    return Container(
        height: 110.0,
        child: GridView.builder(
            padding: EdgeInsets.all(10.0),
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 10.0,
            ),
            itemCount: categories.length,
            itemBuilder: (context, int index) {
              return GestureDetector(
                onTap: () => print(categories[index]),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      maxRadius: 30.0,
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(categories[index % categories.length])
                  ],
                ),
              );
            }));
  }
}
