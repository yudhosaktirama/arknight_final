import 'package:arknight_library/model/listmodel.dart';
import 'package:arknight_library/page/materiallistPage/MaterialFarmingGuideDetail.dart';
import 'package:flutter/material.dart';

class MaterialGuidePage extends StatelessWidget {
  const MaterialGuidePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Material Farming Guide Group"),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios)),
        ),
        backgroundColor: Color.fromRGBO(38, 33, 33, 1),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color.fromRGBO(38, 33, 33, 1),
            child: ListView.builder(
              itemCount: ListItem().materialselection.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.4,
                    color: Colors.black,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.04,
                          color: Colors.black,
                          child: Center(
                            child: Text(
                              "Tier " +
                                  ListItem().materialselection[index].tier,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.46,
                              height: MediaQuery.of(context).size.height * 0.29,
                              color: Colors.black,
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 0,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.23,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: NetworkImage(ListItem()
                                                  .materialselection[index]
                                                  .gambar[0]))),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.23,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: NetworkImage(ListItem()
                                                  .materialselection[index]
                                                  .gambar[1]))),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.23,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: NetworkImage(ListItem()
                                                  .materialselection[index]
                                                  .gambar[2]))),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    top: 0,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.23,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: NetworkImage(ListItem()
                                                  .materialselection[index]
                                                  .gambar[3]))),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              height: MediaQuery.of(context).size.height * 0.29,
                              color: Colors.black,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Text(
                                    ListItem()
                                        .materialselection[index]
                                        .deskripsi,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Expanded(
                            child: Container(
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.black),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(21)))),
                                  fixedSize: MaterialStatePropertyAll(Size(
                                      MediaQuery.of(context).size.width,
                                      MediaQuery.of(context).size.height *
                                          0.01))),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return MaterialFarmingGuideDetailPage(
                                        tier: ListItem()
                                            .materialselection[index]
                                            .tier);
                                  },
                                ));
                              },
                              child: Text(
                                "Lihat Detail List Material",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                        ))
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class MaterialFarmingBuildWidget extends StatelessWidget {
  const MaterialFarmingBuildWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.amber,
          child: Column(
            children: [
              Expanded(
                  child: Container(
                color: Color.fromRGBO(38, 33, 33, 1),
                child: ListView.builder(
                  addAutomaticKeepAlives: false,
                  primary: false,
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.24,
                      margin: EdgeInsets.all(4),
                      color: Colors.amberAccent,
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.height * 0.24,
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                            child: Center(
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.18,
                                height:
                                    MediaQuery.of(context).size.height * 0.12,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://raw.githubusercontent.com/Aceship/Arknight-Images/main/material/30.png'))),
                              ),
                            ),
                          ),
                          Expanded(
                              child: Container(
                            color: Colors.black,
                            child: Column(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  color: Colors.black,
                                  child: Center(
                                    child: Text(
                                      "Material Name : Orirock",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.33,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                      color: Colors.black,
                                      child: Center(
                                        child: Text(
                                          "Stage to Farm",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.33,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                      color: Colors.black,
                                      child: Center(
                                        child: Text(
                                          "Probability To Get",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.77,
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  color: Colors.grey,
                                  child: ListView.builder(
                                    itemCount: 6,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.05,
                                          color: Colors.grey,
                                          child: Row(
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.38,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.05,
                                                color: Colors.black,
                                                child: Center(
                                                  child: SingleChildScrollView(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    child: Text(
                                                      "Main Theme (1-5)",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                  child: Container(
                                                color: Colors.black,
                                                child: Center(
                                                  child: Text(
                                                    "Medium",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
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
                          ))
                        ],
                      ),
                    );
                  },
                ),
              ))
            ],
          ),
        )
      ],
    );
  }
}

class FarmingStageEficienyWidget extends StatelessWidget {
  const FarmingStageEficienyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.33,
          height: MediaQuery.of(context).size.height * 0.04,
          color: Colors.grey[800],
          child: Center(
            child: Text(
              "Main Theme (0-9)",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.33,
          height: MediaQuery.of(context).size.height * 0.04,
          color: Colors.grey[800],
          child: Center(
            child: Text(
              "Always",
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
