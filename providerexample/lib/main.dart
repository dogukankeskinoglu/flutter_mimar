import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerexample/FootBallerPage.dart';
import 'package:providerexample/model/footballerModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FootBallerModel())
      ],
      child: MaterialApp(
        routes: {
          "/": (context) => FootBallerProviderPage(),
        },
        title: "Provider",
      ),
    );
  }
}
