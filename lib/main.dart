import 'package:flutter/material.dart';
import 'package:kyle_project/ui/input_info_view_model.dart';
import 'package:provider/provider.dart';
import 'package:kyle_project/ui/input_info_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<InputInfoViewModel>(
            create: (_) => InputInfoViewModel(),
            child: const InputInfoView(),
          )
        ],
      ),
    );
  }
}
