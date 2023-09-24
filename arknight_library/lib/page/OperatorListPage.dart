import 'package:arknight_library/model/listmodel.dart';
import 'package:arknight_library/page/OperatorPage/CasterPage.dart';
import 'package:arknight_library/page/OperatorPage/DefenderPage.dart';
import 'package:arknight_library/page/OperatorPage/GuardPage.dart';
import 'package:arknight_library/page/OperatorPage/MedicPage.dart';
import 'package:arknight_library/page/OperatorPage/SniperPage.dart';
import 'package:arknight_library/page/OperatorPage/SpecialistPage.dart';
import 'package:arknight_library/page/OperatorPage/SupporterPage.dart';
import 'package:arknight_library/page/OperatorPage/VanguardPage.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class OperatorListPage extends StatelessWidget {
  const OperatorListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(38, 33, 33, 1),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Operator List",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Color.fromRGBO(38, 33, 33, 1),
              child: ListView.builder(
                itemCount: ListItem().operatorClass.length,
                addAutomaticKeepAlives: false,
                primary: false,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.height * 0.4,
                      color: Colors.black,
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.96,
                            height:
                                MediaQuery.of(context).size.height * 0.25,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: CachedNetworkImageProvider(
                                        ListItem()
                                            .operatorClass[index]
                                            .gambarCover),
                                    fit: BoxFit.fill)),
                          ),
                          Expanded(
                              child: Container(
                            color: Colors.black,
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      0.25,
                                  height:
                                      MediaQuery.of(context).size.height *
                                          0.15,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(ListItem()
                                              .operatorClass[index]
                                              .gambarClass),
                                          fit: BoxFit.fill)),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      0.68,
                                  height:
                                      MediaQuery.of(context).size.height *
                                          0.15,
                                  color: Colors.black,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context)
                                                .size
                                                .width *
                                            0.68,
                                        height: MediaQuery.of(context)
                                                .size
                                                .height *
                                            0.05,
                                        color: Colors.black,
                                        child: Center(
                                          child: Text(
                                            "Operator Class : ${ListItem().operatorClass[index].namaClass}",
                                            style: TextStyle(
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: MediaQuery.of(context)
                                                .size
                                                .width *
                                            0.68,
                                        height: MediaQuery.of(context)
                                                .size
                                                .height *
                                            0.05,
                                        color: Colors.black,
                                        child: Center(
                                          child: Text(
                                            "List Operator",
                                            style: TextStyle(
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.68,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.05,
                                          color: Colors.black,
                                          child: ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStatePropertyAll(
                                                          Colors.blueGrey)),
                                              onPressed: () {
                                                switch (index) {
                                                  case 0:
                                                    {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                        builder: (context) {
                                                          return GuardPage();
                                                        },
                                                      ));
                                                    }
                                                    break;
                                                  case 1:
                                                    {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                        builder: (context) {
                                                          return MedicPage();
                                                        },
                                                      ));
                                                    }
                                                    break;
                                                  case 2:
                                                    {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                        builder: (context) {
                                                          return SpecialistPage();
                                                        },
                                                      ));
                                                    }
                                                    break;
                                                  case 3:
                                                    {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                        builder: (context) {
                                                          return DefenderPage();
                                                        },
                                                      ));
                                                    }
                                                    break;
                                                  case 4:
                                                    {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                        builder: (context) {
                                                          return SniperPage();
                                                        },
                                                      ));
                                                    }
                                                    break;
                                                  case 5:
                                                    {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                        builder: (context) {
                                                          return SupporterPage();
                                                        },
                                                      ));
                                                    }
                                                    break;
                                                  case 6:
                                                    {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                        builder: (context) {
                                                          return CasterPage();
                                                        },
                                                      ));
                                                    }
                                                    break;
                                                  case 7:
                                                    {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                        builder: (context) {
                                                          return VanguardPage();
                                                        },
                                                      ));
                                                    }
                                                    break;
                                                  default:
                                                }
                                              },
                                              child: Text("Click Here")))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ))
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
    );
  }
}
