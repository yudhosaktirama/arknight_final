import 'package:flutter/material.dart';

class TalentWidget extends StatelessWidget {
  final String groupTalent;
  const TalentWidget({
    required this.groupTalent,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.04,
      color: Colors.black,
      child: Center(
          child: Text(
        groupTalent,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
      )),
    );
  }
}
