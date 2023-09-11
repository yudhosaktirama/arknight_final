import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../page/OperatorDetail.dart';

class OperatorListByClassWidget extends StatelessWidget {
  const OperatorListByClassWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.88,
          child: GridView.builder(
            itemCount: 24,
            addAutomaticKeepAlives: false,
            primary: false,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 1.2),
                crossAxisCount: 3),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.3,
                  color: Colors.black,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.276,
                            height: MediaQuery.of(context).size.height * 0.1,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: CachedNetworkImageProvider(
                                        "https://srpgp.supersanctuary.net/arkopgen/img/bg.png"),
                                    fit: BoxFit.fill)),
                          ),
                          Positioned(
                            bottom: 1,
                            right: MediaQuery.of(context).size.width * 0.07,
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.15,
                              height: MediaQuery.of(context).size.height * 0.08,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  image: DecorationImage(
                                      image: CachedNetworkImageProvider(
                                          'https://gamepress.gg/arknights/sites/arknights/files/2023-06/%E5%A4%B4%E5%83%8F_%E5%9C%A3%E7%BA%A6%E9%80%81%E8%91%AC%E4%BA%BA.png'),
                                      fit: BoxFit.cover),
                                  shape: BoxShape.circle),
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.276,
                        height: MediaQuery.of(context).size.height * 0.05,
                        color: Colors.black,
                        child: Center(
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Center(
                                child: Text(
                                  "Executor",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.276,
                        height: MediaQuery.of(context).size.height * 0.03,
                        color: Colors.black,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "Reaper Hunter",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.276,
                        height: MediaQuery.of(context).size.height * 0.068,
                        color: Colors.grey,
                        child: Center(
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.black)),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return OperatorDetail();
                                  },
                                ));
                              },
                              child: Text("Detail Unit")),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
