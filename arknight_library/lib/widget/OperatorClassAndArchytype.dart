import "package:flutter/material.dart";

class OperatorClassAndArchytype extends StatelessWidget {
  final String tipe;
  final String namaTipe;
  final String gambarTipe;
  OperatorClassAndArchytype({
    required this.gambarTipe,
    required this.namaTipe,
    required this.tipe,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.29,
          height: MediaQuery.of(context).size.height * 0.025,
          color: Colors.black,
          child: Center(
            child: Text(
              tipe,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.12,
              height: MediaQuery.of(context).size.height * 0.045,
              decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: NetworkImage(gambarTipe), fit: BoxFit.contain)),
            ),
            Expanded(
                child: Container(
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    namaTipe,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ))
          ],
        )
      ],
    );
  }
}
