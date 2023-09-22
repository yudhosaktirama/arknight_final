import 'package:arknight_library/page/OperatorDetail.dart';
import 'package:flutter/material.dart';

class TierListPage extends StatelessWidget {
  const TierListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(38, 33, 33, 1),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Operator Tier List",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.9,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.35,
                        color: Colors.black,
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.86,
                              height: MediaQuery.of(context).size.height * 0.05,
                              color: Colors.white,
                              child: Center(
                                child: Text(
                                  "Tier 0",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.33,
                                  height:
                                      MediaQuery.of(context).size.height * 0.23,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://s4.bukalapak.com/bukalapak-kontenz-production/content_attachments/77364/original/Game_Arknights_4.jpg"),
                                          fit: BoxFit.fill)),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.53,
                                  height:
                                      MediaQuery.of(context).size.height * 0.23,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Operator tier 0 merupakan operator yang memiliki kemampuan diatas rata-rata dibandingkan dengan operator lain",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Expanded(
                              child: Container(
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                      elevation: MaterialStatePropertyAll(10),
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.black),
                                        fixedSize: MaterialStatePropertyAll(
                                            Size(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.86,
                                                MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.07)),
                                        shape: MaterialStatePropertyAll(
                                            RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(7))))),
                                    onPressed: () {},
                                    child: Text(
                                      "Lihat Detail Operator",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    )),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OperatorTierListWidget extends StatelessWidget {
  const OperatorTierListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.94,
          height: MediaQuery.of(context).size.height * 0.6,
          color: Color.fromRGBO(38, 33, 33, 1),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: MediaQuery.of(context).size.height * 0.05,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        "Tier 0",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: Container(
                color: Colors.grey,
                child: GridView.builder(
                  addAutomaticKeepAlives: false,
                  primary: false,
                  itemCount: 12,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: MediaQuery.of(context).size.width /
                          (MediaQuery.of(context).size.height / 1.2),
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: MediaQuery.of(context).size.height * 0.4,
                        color: Colors.black,
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.274,
                              height: MediaQuery.of(context).size.height * 0.1,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://srpgp.supersanctuary.net/arkopgen/img/bg.png'),
                                      fit: BoxFit.cover)),
                              child: Center(
                                  child: Container(
                                width: MediaQuery.of(context).size.width * 0.15,
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://gamepress.gg/arknights/sites/arknights/files/styles/thumbnail/public/2020-01/char_225_haak_1.png?itok=EfNYnjJv')),
                                    color: Colors.white),
                              )),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.274,
                              height: MediaQuery.of(context).size.height * 0.03,
                              color: Colors.black,
                              child: Center(
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Text(
                                    "Silver Ash",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.274,
                              height: MediaQuery.of(context).size.height * 0.03,
                              color: Colors.black,
                              child: Center(
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Text(
                                    "Guard",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.274,
                              height:
                                  MediaQuery.of(context).size.height * 0.035,
                              child: Center(
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromRGBO(46, 16, 14, 1),
                                        textStyle: TextStyle(fontSize: 15),
                                        fixedSize: Size(
                                            MediaQuery.of(context).size.width *
                                                0.2,
                                            MediaQuery.of(context).size.height *
                                                0.2)),
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) {
                                          return OperatorDetail();
                                        },
                                      ));
                                    },
                                    child: Text('Detail')),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ))
            ],
          ),
        ),
      ],
    );
  }
}
