import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';

class CategoryInDetail extends StatefulWidget {
  @override
  _CategoryInDetailState createState() => _CategoryInDetailState();
}

class _CategoryInDetailState extends State<CategoryInDetail> {
  int selectedd = 1;

  Widget category(String name, String img, int i) {
    return InkWell(
        onTap: () {
          setState(() {
            selectedd = i;
          });
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 5),
          width: MediaQuery.of(context).size.width,
          height: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: selectedd == i ? Color(0xff954010) : Color(0xfff7f7f7)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                img,
                width: 30,
                height: 30,
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
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.9,
      width: MediaQuery.of(context).size.width / 5,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: <Widget>[
          category('Coffee', 'assets/coffeee).png', 1),
          category('Snack', 'assets/snack.png', 2),
          category('Cake', 'assets/birthday.png', 3),
          category('Cake', 'assets/juice.png', 4),
        ],
      ),
    );
  }
}
