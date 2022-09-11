import 'package:flutter/material.dart';
import 'package:task_1/Bills_Screen.dart';
import 'package:task_1/Loan_Screen.dart';
import 'package:task_1/Preview.dart';
import 'package:task_1/SearchNames.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Directionality(
//         // add this
//         textDirection: TextDirection.rtl, // set this property
//         child: LoanScreen(),
//       ),
//     ),
//   );
// }
// void main() {
//   runApp(MyApp());
//   // DioHelper.init();
//   // PreferenceUtils.init();
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       home: Directionality(
//         // add this
//         textDirection: TextDirection.rtl, // set this property
//         child: LoanScreen(),
//       ),
//     );
//   }
// }
void main() {
  runApp(Task());
}
// void main() {
//   runApp(ProviderScope(child: Task()));
// }

class Task extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: LoanScreen.id, routes: {
      LoanScreen.id: (context) => LoanScreen(),
      BillsScreen.id: (context) => BillsScreen(),
      SearchScreen.id: (context) => SearchScreen(),
      PreviewScreen.id: (context) => PreviewScreen(),
    });
  }
}
