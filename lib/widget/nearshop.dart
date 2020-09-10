import 'package:coffe/screen/detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Shop {
  final String img;
  final String distance;
  final String rating;
  final String distancee;

  Shop(this.img, this.distance, this.rating, this.distancee);
}

class NearShopp extends StatefulWidget {
  @override
  _NearShoppState createState() => _NearShoppState();
}

class _NearShoppState extends State<NearShopp> {
  var shop = [
    Shop(
        'https://images.pexels.com/photos/683039/pexels-photo-683039.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        '3.5 km',
        '4.5',
        '10 Mints'),
    Shop(
        'https://images.pexels.com/photos/2199190/pexels-photo-2199190.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        '5.0 km',
        '4.4',
        '10 Mints'),
    Shop(
        'https://images.pexels.com/photos/2467287/pexels-photo-2467287.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        '0.5 km',
        '4.3',
        '10 Mints'),
    Shop(
        'https://images.pexels.com/photos/245535/pexels-photo-245535.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        '1.5 km',
        '4.2',
        '10 Mints'),
    Shop(
        'https://images.pexels.com/photos/2253643/pexels-photo-2253643.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        '2.5 km',
        '4.0',
        '10 Mints'),
  ];
  bool love = false;
  void q() {
    Fluttertoast.showToast(
      msg: "Added to your favorites",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: shop.map((e) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) => Detail(
                        detail: e,
                      )));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: MediaQuery.of(context).size.width / 1.8,
              height: 190,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.only(right: 15, top: 10),
                          width: MediaQuery.of(context).size.width / 1.8,
                          height: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(e.img),
                                fit: BoxFit.cover,
                              )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Align(
                                  alignment: Alignment.topRight,
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        love = !love;
                                        q();
                                      });
                                    },
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black.withOpacity(0.9)),
                                      child: love
                                          ? Icon(Elusive.heart,
                                              size: 12, color: Colors.red)
                                          : Icon(Elusive.heart_empty,
                                              size: 12, color: Colors.white),
                                    ),
                                  ))
                            ],
                          )),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                            margin: EdgeInsets.only(top: 80, right: 15),
                            height: 45,
                            width: 25,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0, 2),
                                      blurRadius: 2)
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  FontAwesome5.star,
                                  size: 10,
                                  color: Color(0xffFFC300),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Text(
                                  e.rating,
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xffFFC300),
                                      fontFamily: 'BalooChettan2',
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                  Text('Shop Name',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontFamily: 'BalooChettan2',
                        fontWeight: FontWeight.w600,
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Entypo.gauge, size: 15, color: Colors.grey),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            e.distance,
                            style: TextStyle(
                                fontFamily: 'BalooChettan2',
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(FontAwesome5.motorcycle,
                              size: 15, color: Colors.grey),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            e.distancee,
                            style: TextStyle(
                                fontFamily: 'BalooChettan2',
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
