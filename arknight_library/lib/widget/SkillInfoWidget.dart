import 'package:flutter/material.dart';

class SkillInfoWidget extends StatelessWidget {
  final String gambarSkill;
  final String namaSkill;
  final String deskripsiSkill;
  const SkillInfoWidget({
    required this.deskripsiSkill,
    required this.gambarSkill,
    required this.namaSkill,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.1,
        color: Color.fromRGBO(171, 68, 60, 1),
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.16,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(gambarSkill), fit: BoxFit.fill)),
            ),
            Expanded(
                child: Container(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.03,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 2),
                      child: Text(
                        namaSkill,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 2),
                          child: Text(
                            deskripsiSkill,
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ))
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
