import 'package:arknight_library/page/EventCNLIstPage.dart';
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
        body: ListView(
          addAutomaticKeepAlives: false,
          children: [
            Column(
              children: [
                SpacingWidget(),
                OperatorTierListWidget(),
                SpacingWidget(),
                OperatorTierListWidget(),
                SpacingWidget(),
                OperatorTierListWidget(),
                SpacingWidget(),
                OperatorTierListWidget()
              ],
            ),
          ],
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
