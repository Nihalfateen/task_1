import 'package:flutter/material.dart';

Color background = const Color(0xFF1f6a3f);
Color bartext = const Color(0XFFfdfffc);
Color text1 = const Color(0XFFb7b7b7);
const Fielddecoration = InputDecoration(
    contentPadding: const EdgeInsets.all(24),
    fillColor: Color(0XFFe3e3e3),
    filled: true,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0XFFe3e3e3),
        width: 1,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0XFFe3e3e3),
          width: 1,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10))));
const decoration1 = InputDecoration(
    contentPadding: const EdgeInsets.all(24),
    fillColor: Color(0XFFe3e3e3),
    filled: true,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0XFFe3e3e3),
        width: 10,
      ),
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0XFFe3e3e3),
          width: 10,
        ),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))));
const decoration2 = InputDecoration(
    contentPadding: const EdgeInsets.all(24),
    fillColor: Color(0XFFe3e3e3),
    filled: true,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0XFFe3e3e3),
        width: 3,
      ),
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0XFFe3e3e3),
          width: 3,
        ),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))));
const decoration3 = InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 90, horizontal: 20),
    fillColor: Color(0XFFe3e3e3),
    filled: true,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0XFFe3e3e3),
        width: 1,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0XFFe3e3e3),
          width: 1,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10))));

class MyStatefulWidget extends StatefulWidget {
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'اشعار خصم';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            decoration: BoxDecoration(color: const Color(0XFFF8F8F8)),
            child: DropdownButton<String>(
              value: dropdownValue,
              dropdownColor: Colors.white,
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
              ),
              iconSize: 36,
              isExpanded: true,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              onChanged: (String? newValue) {
                setState(() {
                  if (newValue == 'اشعار خصم') {
                    dropdownValue = newValue!;
                    // Navigator.pushNamed(context, parentsFormScreen.id);
                  } else {
                    if (newValue == 'قبض عميل') {
                      dropdownValue = newValue!;
                      // Navigator.pushNamed(context, RegistrationScreen.id);
                    } else {
                      if (newValue == 'قبض اخري') {
                        dropdownValue = newValue!;
                        // Navigator.pushNamed(context, RegistrationScreen.id);
                      }
                    }
                  }
                });
              },
              items: <String>['اشعار خصم', 'قبض عميل', 'قبض اخري']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          )),
    );
  }
}

class DropDown extends StatefulWidget {
  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String dropdownValue = 'نقدي';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(color: const Color(0XFFF8F8F8)),
        child: DropdownButton<String>(
          value: dropdownValue,
          elevation: 16,
          isExpanded: true,
          menuMaxHeight: 5,
          dropdownColor: Colors.white,
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Colors.black,
          ),
          iconSize: 36,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          onChanged: (String? newValue) {
            setState(() {
              if (newValue == 'نقدي') {
                dropdownValue = newValue!;
                // Navigator.pushNamed(context, parentsFormScreen.id);
              } else {
                if (newValue == 'شبكة') {
                  dropdownValue = newValue!;
                  // Navigator.pushNamed(context, RegistrationScreen.id);
                } else {
                  if (newValue == 'فيزا') {
                    dropdownValue = newValue!;
                    // Navigator.pushNamed(context, RegistrationScreen.id);
                  } else {
                    if (newValue == 'تحويل بنكي') {
                      dropdownValue = newValue!;
                      // Navigator.pushNamed(context, RegistrationScreen.id);
                    } else {
                      if (newValue == 'شيك') {
                        dropdownValue = newValue!;
                        // Navigator.pushNamed(context, RegistrationScreen.id);
                      } else {
                        if (newValue == 'دفعات مقدمة') {
                          dropdownValue = newValue!;
                          // Navigator.pushNamed(context, RegistrationScreen.id);
                        }
                      }
                    }
                  }
                }
              }
            });
          },
          items: <String>[
            'شيك',
            ' دفعات مقدمة',
            'نقدي',
            'تحويل بنكي',
            'فيزا',
            'شبكة',
            'نقدي'
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
