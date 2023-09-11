import 'package:flutter/material.dart';

import '../../widget/OperatorListByClassWidget.dart';

class DefenderPage extends StatelessWidget {
  const DefenderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(38, 33, 33, 1),
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          centerTitle: true,
          title: Text("Defender Operator List"),
        ),
        body: OperatorListByClassWidget(),
      ),
    );
  }
}
