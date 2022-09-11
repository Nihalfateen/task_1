import 'package:dio/dio.dart';
import 'DataModel.dart';
import 'package:task_1/DataModel.dart';

class MemoRepo {
  var dio = Dio();
  late List<Data> data = [];

  getdataList() async {
    final response = await dio.get(
        'http://78.47.37.158:1201/VanSalesService/rec/GetrecData?user_id=5fa9a1f9-629a-4c40-9826-fc27d7c1b131&searchval');
    DataModel dataModel = DataModel.fromJson(response.data);
    data = dataModel.data!;
    print(response.data);
    print(dataModel.data!.length);
  }
}
