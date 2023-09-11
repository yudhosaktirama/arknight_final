import 'package:flutter/material.dart';

class SkillMasteryIndikatorWidget extends StatelessWidget {
  final String judulMastery;
  final String nilaiMastery;
  const SkillMasteryIndikatorWidget({
    required this.judulMastery,
    required this.nilaiMastery,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.30,
          height: MediaQuery.of(context).size.height * 0.03,
          color: Colors.grey,
          child: Center(
            child: Text(
              judulMastery,
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.30,
          height: MediaQuery.of(context).size.height * 0.08,
          color: Colors.black87,
          child: Center(
            child: Text(
              nilaiMastery,
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        )
      ],
    );
  }
}
