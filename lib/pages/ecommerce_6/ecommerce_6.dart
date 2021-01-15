import 'package:flutter/material.dart';

class MyEcommerce6 extends StatelessWidget {
  final String address = "Chabahil, Kathmandu";
  final String phone = "9818522122";
  final double total = 500;
  final double delivery = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirm Order'),
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.only(
            top: 40.0, left: 20.0, right: 20.0, bottom: 10.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Subtotal"),
                Text("Rs. $total"),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Delivery Fee"),
                Text("Rs. $delivery"),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Total",
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  "Rs. ${delivery + total}",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.grey.shade200,
                  width: double.infinity,
                  child: Text("Delivery address".toUpperCase()),
                ),
                RadioListTile(
                  value: address,
                  groupValue: address,
                  onChanged: (value) {},
                  selected: true,
                  title: Text(address),
                ),
                RadioListTile(
                  selected: false,
                  value: "New Address",
                  groupValue: address,
                  onChanged: (value) {},
                  title: Text("Choose another address"),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.grey.shade200,
                  width: double.infinity,
                  child: Text("Contact number".toUpperCase()),
                ),
                RadioListTile(
                  selected: true,
                  value: phone,
                  groupValue: phone,
                  title: Text(phone),
                  onChanged: (value) {},
                ),
                RadioListTile(
                  selected: false,
                  value: "New Phone",
                  groupValue: phone,
                  title: Text("Choose new contact number"),
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.grey.shade200,
                  width: double.infinity,
                  child: Text("Payment option".toUpperCase()),
                ),
                RadioListTile(
                  groupValue: true,
                  value: true,
                  title: Text("Cash on Delivery"),
                  onChanged: (value) {},
                ),
                RadioListTile(
                  groupValue: true,
                  value: true,
                  title: Text("Cash on Delivery"),
                  onChanged: (value) {},
                ),
                RadioListTile(
                  groupValue: true,
                  value: true,
                  title: Text("Cash on Delivery"),
                  onChanged: (value) {},
                ),
                RadioListTile(
                  groupValue: true,
                  value: true,
                  title: Text("Cash on Delivery"),
                  onChanged: (value) {},
                ),
                RadioListTile(
                  groupValue: true,
                  value: true,
                  title: Text("Cash on Delivery"),
                  onChanged: (value) {},
                ),
                RadioListTile(
                  groupValue: true,
                  value: true,
                  title: Text("Cash on Delivery"),
                  onChanged: (value) {},
                ),
                RadioListTile(
                  groupValue: true,
                  value: true,
                  title: Text("Cash on Delivery"),
                  onChanged: (value) {},
                ),
                RadioListTile(
                  groupValue: true,
                  value: true,
                  title: Text("Cash on Delivery"),
                  onChanged: (value) {},
                ),
                RadioListTile(
                  groupValue: true,
                  value: true,
                  title: Text("Cash on Delivery"),
                  onChanged: (value) {},
                ),
                RadioListTile(
                  groupValue: true,
                  value: true,
                  title: Text("Cash on Delivery"),
                  onChanged: (value) {},
                ),
              ],
            ),
            Container(
              width: double.infinity,
              child: RaisedButton(
                color: Colors.indigo,
                onPressed: () => {},
                child: Text(
                  "Confirm Order",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
