import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            title: _buildText(index),
            onTap: () => _routeChange(context, index),
          );
        },
      ),
    );
  }

  Text _buildText(int index) {
    var _title = '';
    switch (index) {
      case 0:
        _title = 'My Cart';
        break;
      case 1:
        _title = 'Buy Stuff';
        break;
      case 2:
        _title = 'Choose Your Plan';
        break;
      case 3:
        _title = 'Detail Product';
        break;
      case 4:
        _title = 'Main Page';
        break;
      default:
        break;
    }
    return Text(_title);
  }

  _routeChange(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/first');
        break;
      case 1:
        Navigator.pushNamed(context, '/second');
        break;
      case 2:
        Navigator.pushNamed(context, '/third');
        break;
      case 3:
        Navigator.pushNamed(context, '/four');
        break;
      case 4:
        Navigator.pushNamed(context, '/five');
        break;
      default:
        break;
    }
  }
}
