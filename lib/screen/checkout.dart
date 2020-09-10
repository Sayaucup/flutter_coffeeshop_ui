import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';

class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Typicons.left_small,
            color: Color(0xff954010).withOpacity(0.7),
          ),
        ),
        title: Text(
          'checkout'.toUpperCase(),
          style: TextStyle(
              fontFamily: 'BalooChettan2',
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 15),
              child: Image.asset(
                'assets/sayaaa.jpg',
                width: 35,
                height: 35,
              ))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '3 Items Added in your Item',
                  style: TextStyle(
                      fontFamily: 'BalooChettan2',
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 3.5,
                  color: Colors.red,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
