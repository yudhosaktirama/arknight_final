import 'package:flutter/material.dart';

class BaseSkillWidget extends StatelessWidget {
  const BaseSkillWidget({
    super.key,
    required this.coba,
  });

  final String coba;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.86,
          height: MediaQuery.of(context).size.height * 0.03,
          color: Color.fromRGBO(64, 79, 105, 1),
          child: Center(
            child: Text(
              "Skill 1 : Self-Absorbed",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.86,
          height: MediaQuery.of(context).size.height * 0.1,
          color: Color.fromRGBO(25, 49, 92, 1),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                coba,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
