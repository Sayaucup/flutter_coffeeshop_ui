import 'package:coffe/widget/nearshop.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/typicons_icons.dart';

class Detail extends StatefulWidget {
  final Shop detail;

  const Detail({Key key, this.detail}) : super(key: key);
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  bool love = false;
  Widget lovee(bool i) {
    return Align(
        alignment: Alignment.topRight,
        child: InkWell(
          onTap: () {
            setState(() {
              love = i;
            });
          },
          child: Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.black.withOpacity(0.9)),
            child: love == i
                ? Icon(Elusive.heart, size: 12, color: Colors.red)
                : Icon(Elusive.heart_empty, size: 12, color: Colors.white),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: InkWell(
            onTap: () {},
            child: Icon(
              Icons.sort,
              color: Colors.black54,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'Sayaucup',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Typicons.location,
                        color: Colors.black26,
                        size: 8,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        'Bantul, Yogyakarta',
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.only(right: 15),
                child: Image.asset(
                  'assets/sayaaa.jpg',
                  width: 30,
                  height: 30,
                ))
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                                fontSize: 17,
                                fontWeight: FontWeight.w700),
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
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                  padding: EdgeInsets.only(right: 15, top: 10),
                                  width:
                                      MediaQuery.of(context).size.width / 1.8,
                                  height: 120,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image: NetworkImage(widget.detail.img),
                                    fit: BoxFit.cover,
                                  )),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[lovee(true)],
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
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                          fontSize: 17,
                          fontWeight: FontWeight.w700)),
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
              Container(
                height: MediaQuery.of(context).size.height / 1.85,
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                    color: Color(0xffF4F4F4),
                    borderRadius: BorderRadius.circular(10)),
                child: Scrollbar(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text('qwe'),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
