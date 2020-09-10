import 'package:coffe/screen/checkout.dart';
import 'package:coffe/widget/categoryindetail.dart';
import 'package:coffe/widget/nearshop.dart';
import 'package:coffe/widget/recommended.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Detail extends StatefulWidget {
  final Shop detail;

  const Detail({Key key, this.detail}) : super(key: key);
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  bool love;
  @override
  void initState() {
    super.initState();
    love = false;
  }

  void q() {
    Fluttertoast.showToast(
      msg: "Added to your favorites",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        actions: <Widget>[
          Card(
            color: Color(0xfff7f7f7),
            elevation: 0,
            margin: EdgeInsets.only(
              right: 15,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width / 1.2,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Search by shops ,Coffee etc...',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                          fontSize: 13,
                          fontFamily: 'BalooChettan2'),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Color(0xff954010),
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(
                      Entypo.search,
                      size: 15,
                      color: Color(0xffFCFAF8),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 130,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Coffee Shop Name',
                          style: TextStyle(
                              fontFamily: 'BalooChettan2',
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        Expanded(
                          child: Text(
                            'Coffee, Bakery, Fast Food..',
                            style: TextStyle(
                                fontFamily: 'BalooChettan2',
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 25),
                          child: Row(
                            children: <Widget>[
                              Icon(FontAwesome5.motorcycle,
                                  size: 17, color: Colors.black),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                widget.detail.distancee,
                                style: TextStyle(
                                    fontFamily: 'BalooChettan2',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.2,
                    height: MediaQuery.of(context).size.height,
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
                                      image: NetworkImage(widget.detail.img),
                                      fit: BoxFit.cover,
                                    )),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                                color: Colors.black
                                                    .withOpacity(0.9)),
                                            child: love
                                                ? Icon(Elusive.heart,
                                                    size: 12, color: Colors.red)
                                                : Icon(Elusive.heart_empty,
                                                    size: 12,
                                                    color: Colors.white),
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
                                        widget.detail.rating,
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Text('Recommended',
                    style: TextStyle(
                        fontFamily: 'BalooChettan2',
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600)),
                SizedBox(
                  width: 10,
                ),
                Text('(9 ITEMS)',
                    style: TextStyle(
                        fontFamily: 'BalooChettan2',
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w600))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[Recommended(), CategoryInDetail()],
                ),
                Container(
                  margin: EdgeInsets.only(top: 275, left: 65),
                  height: 45,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color(0xff954010),
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: <Widget>[
                      Text(
                        '3 Items added - \$45',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'BalooChettan2',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => Checkout()));
                        },
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Icon(
                            Typicons.right_small,
                            size: 20,
                            color: Color(0xff954010),
                          ),
                        ),
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
