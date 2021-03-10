import 'package:flutter/material.dart';

import 'Dribble/Dribble_UI1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo style',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DribbleDesign1(),
    );
  }
}
