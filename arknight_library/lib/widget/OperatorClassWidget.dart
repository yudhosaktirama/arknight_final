import 'package:flutter/material.dart';

class OperatorClassWidget extends StatelessWidget {
  final String gambarClass;
  final String namaClass;
  final String detailClass;
  OperatorClassWidget({
    required this.detailClass,
    required this.gambarClass,
    required this.namaClass,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.1,
      color: Colors.amber,
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.10,
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(image: NetworkImage(gambarClass))),
          ),
          Expanded(
              child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.38,
                  height: MediaQuery.of(context).size.height * 0.03,
                  color: Colors.black,
                  child: Center(
                      child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text(
                      namaClass,
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
                ),
                Expanded(
                    child: Container(
                  color: Colors.black,
                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          detailClass,
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                ))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
