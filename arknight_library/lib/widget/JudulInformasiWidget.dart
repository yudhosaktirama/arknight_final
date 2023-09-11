import 'package:flutter/material.dart';

class JudulInformasiDetailWidget extends StatelessWidget {
  final String judulInformasi;
  const JudulInformasiDetailWidget({
    required this.judulInformasi,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.06,
          color: Colors.grey,
          child: Card(
            child: Container(
              color: Colors.black,
              child: Center(
                child: Text(
                  judulInformasi,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
