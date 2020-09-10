import 'package:flutter/material.dart';

class Recom {
  final String img;
  final String name;
  final String price;

  Recom(this.img, this.name, this.price);
}

class Recommended extends StatefulWidget {
  @override
  _RecommendedState createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  var recom = [
    Recom(
        'https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
        'Latte Coffee',
        '\$12'),
    Recom(
        'https://images.pexels.com/photos/1627933/pexels-photo-1627933.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        'Black Coffee',
        '\$10'),
    Recom(
        'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        'Cappuccino',
        '\$15'),
    Recom(
        'https://images.pexels.com/photos/685527/pexels-photo-685527.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        'Espresso',
        '\$9'),
    Recom(
        'https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
        'Latte',
        '\$10'),
    Recom(
        'https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
        'Latte',
        '\$10'),
    Recom(
        'https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
        'Latte',
        '\$10'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.95,
      width: MediaQuery.of(context).size.width / 1.4,
      decoration: BoxDecoration(
          color: Color(0xfff7f7f7), borderRadius: BorderRadius.circular(10)),
      child: Scrollbar(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: ScrollPhysics(),
          padding: EdgeInsets.only(left: 15, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('International Coffee\'s',
                  style: TextStyle(
                      fontFamily: 'BalooChettan2',
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600)),
              Column(
                children: recom.map((e) {
                  return Container(
                    margin: EdgeInsets.only(top: 10, bottom: 5),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 1.7,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(e.img),
                                  fit: BoxFit.cover),
                              shape: BoxShape.circle,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(e.name,
                                  style: TextStyle(
                                      fontFamily: 'BalooChettan2',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)),
                              Text(e.price,
                                  style: TextStyle(
                                      color: Color(0xff954010),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'BalooChettan2'))
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 7),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white),
                            child: Text('Add',
                                style: TextStyle(
                                    fontFamily: 'BalooChettan2',
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                          ),
                        )
                      ],
                    ),
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
