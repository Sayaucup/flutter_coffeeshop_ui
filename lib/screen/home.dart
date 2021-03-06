import 'package:coffe/widget/nearshop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:fluttericon/typicons_icons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedd = 1;

  Widget category(String name, String img, int i) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedd = i;
        });
      },
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width / 3.7,
        decoration: BoxDecoration(
            color: selectedd == i ? Color(0xff954010) : Color(0xfff7f7f7),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(height: 20, width: 20, image: AssetImage(img)),
            SizedBox(
              width: 5,
            ),
            Text(
              name,
              style: TextStyle(
                  color: selectedd == i ? Colors.white : Color(0xff954010),
                  fontWeight: FontWeight.w700,
                  fontFamily: 'BalooChettan2',
                  fontSize: 13),
            )
          ],
        ),
      ),
    );
  }

  GlobalKey<ScaffoldState> scaffoldKey;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scaffoldKey = GlobalKey<ScaffoldState>();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: Colors.white,
      key: scaffoldKey,
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
                width: 35,
                height: 35,
              ))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Find Best & Quality',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'BalooChettan2',
                      color: Colors.black54,
                      fontSize: 15),
                ),
                Text(
                  'Coffee Shop at Your Place',
                  style: TextStyle(
                      fontFamily: 'BalooChettan2',
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Card(
                  elevation: 3,
                  margin: EdgeInsets.only(top: 10, right: 20),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    height: 45,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'Search by shops ,Coffee etc...',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black54,
                                fontSize: 12,
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
                Padding(
                    padding: const EdgeInsets.only(top: 20, right: 20),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            category('Coffee', 'assets/coffeee).png', 1),
                            SizedBox(
                              width: 5,
                            ),
                            category('Snack', 'assets/snack.png', 2),
                            SizedBox(
                              width: 5,
                            ),
                            category('Cake', 'assets/birthday.png', 3),
                            SizedBox(
                              width: 5,
                            ),
                            category('Cake', 'assets/juice.png', 4),
                          ],
                        ),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Best Shops Near You',
                  style: TextStyle(
                      fontFamily: 'BalooChettan2',
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          NearShopp(),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(right: 3, top: 5),
                    child: Icon(
                      LineariconsFree.cart,
                      size: 25,
                      color: Colors.white,
                    ),
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Color(0xff954010),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(100),
                          topRight: Radius.circular(100),
                        )),
                  ),
                  Positioned(
                    top: 7,
                    left: 27,
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        '0',
                        style: TextStyle(
                            color: Color(0xff954010),
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      height: 14,
                      width: 14,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
