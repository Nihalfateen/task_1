import 'package:flutter/material.dart';
import 'package:task_1/Bills.dart';
import 'package:task_1/Preview.dart';
import 'DataModel.dart';
import 'MemoRepo.dart';
import 'Constants.dart';

class BillsScreen extends StatefulWidget {
  static String id = 'BillsScreen';
  @override
  State<BillsScreen> createState() => _BillsScreenState();
}

class _BillsScreenState extends State<BillsScreen> {
  // final BillsScreen _controller = Get.put(BillsScreen());
  bool isLoading = true;
  late MemoRepo memoRepo;
  late List<Data> data = [];
  @override
  void initState() {
    memoRepo = MemoRepo();
    memoRepo.getdataList();
    loadList();
    super.initState();
  }

  loadList() async {
    setState(() {
      isLoading = true;
    });
    data = await memoRepo.data;
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: background,
          appBar: AppBar(
            backgroundColor: background,
            title: Text(
              'سندات الصرف',
              style: TextStyle(color: bartext, fontSize: 25),
              textDirection: TextDirection.rtl,
            ),
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: bartext,
              ),
              onPressed: () {
                Navigator.pushNamed(context, PreviewScreen.id);
              },
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: TextFormField(
                          onTap: () {
                            // Navigator.pushNamed(
                            //     context, SearchScreen.id);
                          },
                          decoration: Fielddecoration.copyWith(
                              hintText:
                                  'البحث باستخدام الرقم التعريفي او اليدوي',
                              hintStyle: TextStyle(
                                  color: text1,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18),
                              suffixIcon: Icon(
                                Icons.search,
                                color: background,
                              ))),
                    ),
                    SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.only(
                          left: 15, right: 10, top: 15, bottom: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: ListView.separated(
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: memoRepo.data.length,
                          separatorBuilder: (BuildContext context, int index) =>
                              Divider(indent: 16),
                          itemBuilder: (BuildContext context, int index) =>
                              BillsCell(
                                Bill: memoRepo.data[index],
                              )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
