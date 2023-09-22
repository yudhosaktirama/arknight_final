import 'package:arknight_library/page/MaterialGuidePage.dart';
import 'package:flutter/material.dart';

class MaterialFarmingGuideDetailPage extends StatelessWidget {
  final String tier;
  const MaterialFarmingGuideDetailPage({super.key, required this.tier});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(38, 33, 33, 1),
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text("Material Tier " + tier),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios)),
        ),
        body: MaterialFarmingBuildWidget(),
      ),
    );
  }
}
