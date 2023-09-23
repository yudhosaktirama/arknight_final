import 'package:flutter/material.dart';

class BaseSkillListDetailPage extends StatelessWidget {
  final String nomorid;
  final String judulList;
  const BaseSkillListDetailPage(
      {super.key, required this.judulList, required this.nomorid});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(38, 33, 33, 1),
        appBar: AppBar(
          centerTitle: true,
          title: Text(judulList + " Operator List"),
          backgroundColor: Colors.black,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios)),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.2,
                  color: Colors.black54,
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: MediaQuery.of(context).size.height * 0.2,
                        color: Colors.black,
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.1,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: NetworkImage('https://raw.githubusercontent.com/Aceship/Arknight-Images/main/avatars/char_277_sqrrel.png')),
                                  color: Colors.white, shape: BoxShape.circle),
                            ),
                            Expanded(
                                child: Container(
                              color: Colors.black,
                              child: Center(
                                child: Text(
                                  "Mylnar",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ))
                          ],
                        ),
                      ),
                      Expanded(
                          child: Container(
                        color: Colors.black,
                        child: ListView.builder(
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(
                                  bottom: MediaQuery.of(context).size.height *
                                      0.01),
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.18,
                              color: Colors.grey,
                              child: Row(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                    height: MediaQuery.of(context).size.height *
                                        0.18,
                                    color: Color.fromRGBO(74, 70, 70, 1),
                                    child: Center(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.08,
                                        decoration: BoxDecoration(
                                            color:
                                                Color.fromRGBO(35, 39, 51, 1),
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://gamepress.gg/arknights/sites/arknights/files/styles/50x50/public/2021-05/Bskill_ctrl_p_spd.png?itok=NbVlK6DS'))),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      child: Container(
                                    color: Color.fromRGBO(35, 39, 51, 1),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.65,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.028,
                                              color: Colors.black,
                                              child: Center(
                                                child: Text(
                                                  "Knights of Pinus Sylvestris",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.65,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.142,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.vertical,
                                              child: Text(
                                                "When this Operator is assigned to the Control Center, each Pinus Sylvestris Operator assigned to Factories have +10% productivity towards Battle Records and -10% productivity towards Precious Metals",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ))
                                ],
                              ),
                            );
                          },
                        ),
                      ))
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
