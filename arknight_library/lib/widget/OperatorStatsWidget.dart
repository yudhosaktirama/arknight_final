import 'package:flutter/material.dart';

class OperatorStatsWidget extends StatelessWidget {
  final String namaStat;
  final String nilaiStat;

  OperatorStatsWidget({
    required this.namaStat,
    required this.nilaiStat,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.05,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "$namaStat : $nilaiStat",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
}
