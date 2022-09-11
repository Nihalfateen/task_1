import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Constants.dart';

class BillsCell extends StatelessWidget {
  final Bill;
  final onTap;

  BillsCell({required this.Bill, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 170,
      // height: 199,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Container(
            padding: EdgeInsets.all(24),
            height: 200,
            width: 130,
            decoration: BoxDecoration(
                color: background,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Positioned(
                left: 15,
                right: 15,
                child: Column(
                  children: <Widget>[
                    Text(
                      'مصاريف',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Row(children: <Widget>[
                      Text(
                        ('منذ'),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        (Bill.fyear),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ]),
                  ],
                )),
          ),
          Positioned(
            right: 140,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(FontAwesomeIcons.tag),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        ('${Bill.chartcode}'),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ]),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.person),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        (Bill.chartname),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ]),
                Text(
                  ('الاجمالي'),
                  style: TextStyle(
                    color: text1,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(children: <Widget>[
                  Text(
                    (('${Bill.recvalue}') + ('  ') + ('شامل الضريبة')),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Icon(
                    FontAwesomeIcons.paperclip,
                    color: text1,
                    size: 20,
                  ),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
