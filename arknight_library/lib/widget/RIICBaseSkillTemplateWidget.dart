import 'package:flutter/material.dart';

import 'BaseSkillWidget.dart';

class RIICBaseSkillTemplateWidget extends StatelessWidget {
  const RIICBaseSkillTemplateWidget(
      {super.key, required this.coba, required this.judul});

  final String judul;

  final String coba;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: MediaQuery.of(context).size.height * 0.06,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        judul,
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.44,
                color: Colors.grey,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.3,
                        color: Colors.black,
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.86,
                              height: MediaQuery.of(context).size.height * 0.04,
                              color: Color.fromRGBO(38, 33, 33, 1),
                              child: Center(
                                child: Text(
                                  "Mlynar",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  height:
                                      MediaQuery.of(context).size.height * 0.08,
                                  color: Color.fromRGBO(38, 33, 33, 1),
                                  child: Center(
                                      child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.14,
                                    height: MediaQuery.of(context).size.height *
                                        0.07,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://gamepress.gg/arknights/sites/arknights/files/styles/50x50/public/2022-09/%E5%A4%B4%E5%83%8F_%E7%8E%9B%E6%81%A9%E7%BA%B3.png?itok=Vz3mFzh5'))),
                                  )),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.65,
                                  height:
                                      MediaQuery.of(context).size.height * 0.08,
                                  color: Colors.black,
                                  child: Column(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.65,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        color: Colors.black,
                                        child: Center(
                                          child: Text(
                                            "Require To Achieve All Base Skill",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.65,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        color: Colors.black,
                                        child: Center(
                                          child: Text(
                                            "Elite 2",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Expanded(
                                child: Container(
                              color: Colors.white,
                              child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Column(
                                    children: [
                                      BaseSkillWidget(coba: coba),
                                      BaseSkillWidget(coba: coba),
                                    ],
                                  )),
                            ))
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
