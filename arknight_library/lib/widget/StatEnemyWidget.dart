import 'package:flutter/material.dart';

class StatEnemyWidget extends StatelessWidget {
  final String statSatu;
  final String statDua;
  final String nilaiSatu;
  final String nilaiDua;
  StatEnemyWidget({
    required this.nilaiDua,
    required this.nilaiSatu,
    required this.statDua,
    required this.statSatu,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.14,
          height: MediaQuery.of(context).size.height * 0.1,
          color: Colors.black,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.14,
                height: MediaQuery.of(context).size.height * 0.03,
                color: Colors.black,
                child: Center(
                    child: Text(
                  statSatu,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                )),
              ),
              Expanded(
                  child: Container(
                color: Colors.black,
                child: Center(
                    child: Text(
                  nilaiSatu,
                  style: TextStyle(color: Colors.white, fontSize: 33),
                )),
              ))
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.14,
          height: MediaQuery.of(context).size.height * 0.1,
          color: Colors.black,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.14,
                height: MediaQuery.of(context).size.height * 0.03,
                color: Colors.black,
                child: Center(
                    child: Text(
                  statDua,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                )),
              ),
              Expanded(
                  child: Container(
                color: Colors.black,
                child: Center(
                    child: Text(
                  nilaiDua,
                  style: TextStyle(color: Colors.white, fontSize: 33),
                )),
              ))
            ],
          ),
        )
      ],
    );
  }
}
