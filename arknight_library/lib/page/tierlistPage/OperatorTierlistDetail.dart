import 'package:arknight_library/page/TierListPage.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OperatorTierLIstDetailPage extends StatelessWidget {
  final String tier;
  const OperatorTierLIstDetailPage({
    required this.tier,
    super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(38, 33, 33, 1),
        appBar: AppBar(
          centerTitle: true,
          title: Text("Operator Tier "+tier),
          backgroundColor: Colors.black,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: OperatorTierListWidget(),
      ),
    );
  }
}
