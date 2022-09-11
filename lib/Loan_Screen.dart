import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_1/Bills_Screen.dart';
import 'Constants.dart';
import 'SearchNames.dart';

class LoanScreen extends StatefulWidget {
  static String id = 'loan_screen';

  @override
  State<LoanScreen> createState() => _LoanScreenState();
}

class _LoanScreenState extends State<LoanScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: background,
            actions: [
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.save,
                  color: bartext,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, BillsScreen.id);
                },
              ),
            ],
            title: Text(
              'إنشاء سند القبض',
              style: TextStyle(color: bartext, fontSize: 25),
              textDirection: TextDirection.rtl,
            ),
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: bartext,
              ),
              onPressed: () {
                // Navigator.pop(context);
              },
            ),
          ),
          backgroundColor: background,
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Center(
                    child: SizedBox(
                        height: 410,
                        width: 400,
                        child: Container(
                          margin: const EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            color: const Color(0XFFF8F8F8),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Positioned(
                                    width: 12,
                                    child: Text('رقم السند',
                                        textDirection: TextDirection.ltr,
                                        style: TextStyle(
                                            fontSize: 25, color: text1)),
                                  ),
                                  TextFormField(
                                    decoration: Fielddecoration,
                                  ),
                                  Positioned(
                                    child: Text('تاريخ السند',
                                        textDirection: TextDirection.ltr,
                                        style: TextStyle(
                                            fontSize: 25, color: text1)),
                                  ),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Expanded(
                                          flex: 1,
                                          child: ListTile(
                                            subtitle: TextFormField(
                                                decoration: decoration2),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: ListTile(
                                            subtitle: TextFormField(
                                              decoration: decoration1,
                                            ),
                                          ),
                                        )
                                      ]),
                                  Positioned(
                                    width: 12,
                                    child: Text('نوع القبض',
                                        textDirection: TextDirection.ltr,
                                        style: TextStyle(
                                            fontSize: 25, color: text1)),
                                  ),
                                  MyStatefulWidget(),
                                ]),
                          ),
                        ))),
                Center(
                    child: SizedBox(
                        height: 410,
                        width: 400,
                        child: Container(
                          margin: const EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            color: const Color(0XFFF8F8F8),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Positioned(
                                    width: 12,
                                    child: Text('حساب المسدد',
                                        textDirection: TextDirection.ltr,
                                        style: TextStyle(
                                            fontSize: 25, color: text1)),
                                  ),
                                  // GestureDetector(
                                  //   onTap: () {
                                  //     Navigator.pushNamed(
                                  //         context, SearchScreen.id);
                                  //   },
                                  //   child:
                                  TextFormField(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, SearchScreen.id);
                                      },
                                      decoration: Fielddecoration.copyWith(
                                        prefixIcon: Icon(Icons.search),
                                      )),

                                  Positioned(
                                    child: Text('قيمةالسند',
                                        textDirection: TextDirection.ltr,
                                        style: TextStyle(
                                            fontSize: 25, color: text1)),
                                  ),
                                  TextFormField(
                                    decoration: Fielddecoration.copyWith(
                                        hintText: '\$ ادخل القيمة...',
                                        hintStyle: TextStyle(
                                            color: text1,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Positioned(
                                    width: 12,
                                    child: Text('طرق الدفع',
                                        textDirection: TextDirection.ltr,
                                        style: TextStyle(
                                            fontSize: 25, color: text1)),
                                  ),
                                  // DropDown(),
                                ]),
                          ),
                        ))),
                Center(
                    child: SizedBox(
                        height: 410,
                        width: 400,
                        child: Container(
                          margin: const EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            color: const Color(0XFFF8F8F8),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Positioned(
                                    width: 12,
                                    child: TextFormField(
                                      decoration: Fielddecoration.copyWith(
                                        hintText: 'لا يوجد صورة مرفقة...',
                                        hintStyle: TextStyle(
                                            color: text1,
                                            fontWeight: FontWeight.bold),
                                        prefixIcon: Icon(
                                          Icons.remove_red_eye,
                                          color: background,
                                        ),
                                        suffixIcon: Icon(
                                          Icons.camera_alt,
                                          color: background,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    child: Text('ملاحظات',
                                        textDirection: TextDirection.ltr,
                                        style: TextStyle(
                                            fontSize: 25, color: text1)),
                                  ),
                                  TextFormField(decoration: decoration3)
                                ]),
                          ),
                        ))),
              ],
            ),
          ),
        ));
  }
}
