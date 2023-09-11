import 'package:arknight_library/page/OperatorDetail.dart';
import 'package:arknight_library/widget/DoubleTitleIconWidget.dart';
import 'package:arknight_library/widget/ProfileWidget.dart';
import 'package:flutter/material.dart';

import '../widget/OperatorClassAndArchytype.dart';

class OperatorSpotlight extends StatelessWidget {
  const OperatorSpotlight({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(38, 33, 33, 1),
        appBar: null,
        body: ListView(
          children: [
            Column(
              children: [
                ProfileWidget(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                DoubleIconAndTitleWidget(
                    gambar: 'assets/parmanix.png', judul: "Operator Spotlight"),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.75,
                  color: Color.fromRGBO(38, 33, 33, 1),
                  child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.22,
                        color: Colors.black,
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  height:
                                      MediaQuery.of(context).size.height * 0.22,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://images7.alphacoders.com/128/thumb-1920-1289301.jpg'),
                                          fit: BoxFit.fill)),
                                ),
                                Positioned(
                                  top: MediaQuery.of(context).size.height * 0.1,
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    height: MediaQuery.of(context).size.height *
                                        0.005,
                                    color: Colors.black,
                                  ),
                                ),
                                Positioned(
                                  bottom: MediaQuery.of(context).size.height *
                                      0.035,
                                  right:
                                      MediaQuery.of(context).size.width * 0.125,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.15,
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://gamepress.gg/arknights/sites/arknights/files/2022-11/TexalterAvatar.png')),
                                        shape: BoxShape.circle,
                                        color: Colors.grey[300]),
                                  ),
                                )
                              ],
                            ),
                            Expanded(
                                child: Container(
                              color: Colors.blueGrey,
                              child: Column(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    color: Colors.black26,
                                    child: Center(
                                      child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Text(
                                            "Texas The Omertosa",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          )),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                    height: MediaQuery.of(context).size.height *
                                        0.09,
                                    color: Colors.black,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.29,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.07,
                                          color: Colors.black,
                                          child: OperatorClassAndArchytype(
                                            namaTipe: "Specialist",
                                            tipe: "Class",
                                            gambarTipe:
                                                "https://gamepress.gg/arknights/sites/arknights/files/2019-10/class_specialist.png",
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.29,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.07,
                                          child: OperatorClassAndArchytype(
                                            tipe: "Archytype",
                                            namaTipe:
                                                "Fast Redeploy / Executor",
                                            gambarTipe:
                                                "https://gamepress.gg/arknights/sites/arknights/files/2021-09/sub_executor_icon.png",
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                      child: Container(
                                    color: Colors.blueGrey,
                                    child: Center(
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              textStyle: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16),
                                              fixedSize: Size(
                                                  MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.45,
                                                  MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.01),
                                              backgroundColor: Colors.black),
                                          onPressed: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                              builder: (context) {
                                                return OperatorDetail();
                                              },
                                            ));
                                          },
                                          child: Text("Operator Detail")),
                                    ),
                                  ))
                                ],
                              ),
                            ))
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
