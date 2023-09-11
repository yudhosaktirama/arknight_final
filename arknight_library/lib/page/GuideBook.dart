import 'package:arknight_library/model/karausel.dart';
import 'package:arknight_library/model/listmodel.dart';
import 'package:arknight_library/page/BaseSkillPage.dart';
import 'package:arknight_library/page/EventCNLIstPage.dart';
import 'package:arknight_library/page/MaterialGuidePage.dart';
import 'package:arknight_library/page/OperatorListPage.dart';
import 'package:arknight_library/page/OperatorSpotLight.dart';
import 'package:arknight_library/page/TierListPage.dart';
import 'package:arknight_library/state_management/provider.dart';
import 'package:arknight_library/widget/DoubleTitleIconWidget.dart';
import 'package:arknight_library/widget/ProfileWidget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widget/StatEnemyWidget.dart';

// ignore: must_be_immutable
class GuideBookPage extends StatelessWidget {
  GuideBookPage({super.key});

  List<FeatureOperator> listfeature = [
    FeatureOperator(
        deskripsi:
            "Mlynar Nearl, uncle to Margaret and Maria, is a direct member of the Nearl family and could have used the name to climb to meteoric stardom. However, he detests the idea of the knight competition circuit and has largely withdrawn from Kazimierz society to avoid it. ",
        gambarOperator: "https://images.alphacoders.com/129/1296527.jpg",
        iconOperator:
            "https://gamepress.gg/arknights/sites/arknights/files/2022-09/%E5%A4%B4%E5%83%8F_%E7%8E%9B%E6%81%A9%E7%BA%B3.png",
        namaOperator: "Mylnar",
        rarity: "Six Star Operator"),
    FeatureOperator(
        deskripsi:
            "Texas has always been a woman of mystery. Between her apathetic demeanor and her strong work ethic for Penguin Logistics, she has always given the impression that she has no time for her past, whatever it might be.",
        gambarOperator:
            "https://gamerwk.sgp1.cdn.digitaloceanspaces.com/2023/05/Texas-Alter-Global.jpg",
        iconOperator:
            "https://gamepress.gg/arknights/sites/arknights/files/2022-11/TexalterAvatar.png",
        namaOperator: "Texas The Omertosa",
        rarity: "Six Star Operator"),
    FeatureOperator(
        deskripsi:
            "Even when Reed first joined Rhodes Island as a Vanguard, her fire-based Originium Arts were a source of mystery to her fellow Operators—in large part because they didn’t appear to actually involve “fire.”",
        gambarOperator: "https://w.wallha.com/ws/14/c3ogEyIK.jpg",
        iconOperator:
            "https://gamepress.gg/arknights/sites/arknights/files/2022-12/%E5%A4%B4%E5%83%8F_%E7%84%B0%E5%BD%B1%E8%8B%87%E8%8D%89.png",
        namaOperator: "Red The Flame Shadow",
        rarity: "Six Star Operator"),
  ];

  List<FeatureEnemy> featureEnemy = [
    FeatureEnemy(
        modeKemunculan: ["Main Theme (Episode 8)", "Main Theme (Episode 8)"],
        kemunculan: ["JT8-3", "H8-4"],
        Attack: "A+",
        Defense: "A",
        Resistence: "A",
        deskripsi:
            "The leader and spokesperson of Reunion. So far, she has been confirmed to have masterminded multiple riots, as well as the destruction of Chernobog.",
        endurance: "S",
        gambar:
            "https://static.wikia.nocookie.net/mrfz/images/4/4b/Talulah_Attacks.png/revision/latest/scale-to-width-down/1280?cb=20210221123837",
        icon:
            "https://static.wikia.nocookie.net/mrfz/images/5/5a/The_Deathless_Black_Snake_sprite.png/revision/latest?cb=20210522032827",
        Nama: "Talulah (Leader of Reunion)"),
    FeatureEnemy(
        modeKemunculan: [
          "Main Theme (Episode 7)",
          "Main Theme (Episode 7)",
          "Vignettes",
          "Trials for Navigator"
        ],
        kemunculan: [
          "7-18",
          "H7-4",
          "VI-7",
          "Clash Of Ideologies (Wave 2)"
        ],
        Attack: "A",
        Defense: "S",
        Resistence: "S",
        deskripsi:
            "His armor is in disrepair and damaged in many places. The blade of his once sharp halberd is now eroded with rust. However, the indomitable Patriot never capitulates, never backs down, and never shows mercy. He has long struggled with fate, and now resolves to slit the throat of fate.",
        endurance: "S",
        gambar:
            "https://static.wikia.nocookie.net/mrfz/images/e/e0/Patriot_Stands_For_Talulah.png/revision/latest/scale-to-width-down/1280?cb=20201109145034",
        icon:
            "https://static.wikia.nocookie.net/mrfz/images/0/01/Patriot_sprite.png/revision/latest/thumbnail/width/360/height/450?cb=20210522032653",
        Nama: "Patriot (Sarkaz Leader)"),
    FeatureEnemy(
        modeKemunculan: ["Integrated Strategy 2"],
        kemunculan: ["The Point Of No Return"],
        Attack: "A+",
        Defense: "B",
        Resistence: "B",
        deskripsi:
            "Calamity of the Crimson Troupe, codename Phantom. Once the rising star of the troupe, the unfinished masterpiece of the troupe leader. Even after his fallout with the troupe and subsequent descent into insanity, he still keeps the name 'Blood Diamond'.",
        endurance: "S",
        gambar:
            "https://gamepress.gg/arknights/sites/arknights/files/inline-images/600px-Avg_24_RL01.png",
        icon:
            "https://static.wikia.nocookie.net/mrfz/images/1/1d/Lucian%2C_%22Blood_Diamond%22_sprite.png/revision/latest/thumbnail/width/360/height/450?cb=20220108123419",
        Nama: "Lucian (Blood Diamond)")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(38, 33, 33, 1),
      body: ChangeNotifierProvider(
        create: (context) => FeatureEnemyState(),
        child: ListView(
          addAutomaticKeepAlives: false,
          primary: false,
          children: [
            Column(
              children: [
                ProfileWidget(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.height * 0.12,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(4)),
                      child: Center(
                        child: TextField(
                          cursorColor: Colors.black,
                          cursorOpacityAnimates: true,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              hoverColor: Colors.black,
                              focusColor: Colors.black,
                              fillColor: Colors.white,
                              hintText: "Search Operator",
                              filled: true,
                              focusedBorder: OutlineInputBorder(),
                              border: OutlineInputBorder()),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.08,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            size: 38,
                          )),
                    )
                  ],
                ),
                SpacingWidget(),
                DoubleIconAndTitleWidget(
                    gambar: 'assets/parmanix.png', judul: "Main Menu"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.96,
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: GridView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: ListItem().cobamain.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              if (index == 0) {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return TierListPage();
                                  },
                                ));
                              } else if (index == 1) {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return OperatorListPage();
                                  },
                                ));
                              } else if (index == 2) {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return OperatorSpotlight();
                                  },
                                ));
                              } else if (index == 3) {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return MaterialGuidePage();
                                  },
                                ));
                              } else if (index == 4) {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return EventCNListPage();
                                  },
                                ));
                              } else {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return BaseSkillPage();
                                  },
                                ));
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.all(4),
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: MediaQuery.of(context).size.height * 0.2,
                              color: Colors.black,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    height: MediaQuery.of(context).size.height *
                                        0.10,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://cdn-icons-png.flaticon.com/512/1603/1603847.png'))),
                                  ),
                                  Expanded(
                                      child: Container(
                                    child: Center(
                                        child: Text(
                                      ListItem().cobamain[index].judul,
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
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
                SpacingWidget(),
                DoubleIconAndTitleWidget(
                    gambar: "assets/parmanix.png", judul: "Feature Operator"),
                CarouselSlider(
                    items: listfeature.map((e) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.74,
                          height: MediaQuery.of(context).size.height * 0.5,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.74,
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    color: Colors.white,
                                    child: Center(
                                        child: Card(
                                      elevation: 10,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.74,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.18,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image:
                                                    CachedNetworkImageProvider(
                                                        e.gambarOperator),
                                                fit: BoxFit.fill)),
                                      ),
                                    )),
                                  ),
                                  Positioned(
                                    bottom: 1,
                                    left: 1,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.18,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.08,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: CachedNetworkImageProvider(
                                                  e.iconOperator)),
                                          color: Colors.black,
                                          shape: BoxShape.circle),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.74,
                                height:
                                    MediaQuery.of(context).size.height * 0.17,
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.74,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Text(
                                          e.namaOperator,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.74,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.08,
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.vertical,
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text(e.deskripsi),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Center(
                                                child: Text(
                                                  e.rarity,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                    options: CarouselOptions(
                        height: MediaQuery.of(context).size.height * 0.4)),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                DoubleIconAndTitleWidget(
                    gambar: "assets/mostima.png", judul: "Feature Enemy"),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Consumer<FeatureEnemyState>(
                  builder: (context, value, child) {
                    return CarouselSlider(
                        carouselController: CarouselController(),
                        items: featureEnemy.map((e) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.4,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05,
                                      color: Colors.black,
                                      child: Center(
                                        child: Text(
                                          e.Nama,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.42,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.35,
                                      color: Colors.blue,
                                      child: Column(
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.42,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.18,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image:
                                                        CachedNetworkImageProvider(
                                                            e.gambar),
                                                    fit: BoxFit.fill)),
                                          ),
                                          Expanded(
                                              child: Container(
                                            color: Colors.black,
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.vertical,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: Text(
                                                  e.deskripsi,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16),
                                                ),
                                              ),
                                            ),
                                          ))
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.42,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.35,
                                      color: Colors.grey,
                                      child: Column(
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.42,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.04,
                                            color: Colors.black,
                                            child: Center(
                                              child: Text(
                                                "Enemy Stat Information",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.18,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.08,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image:
                                                        CachedNetworkImageProvider(
                                                            e.icon))),
                                          ),
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.01,
                                          ),
                                          StatEnemyWidget(
                                            nilaiDua: e.Attack,
                                            nilaiSatu: e.endurance,
                                            statDua: "Attack",
                                            statSatu: "Endure",
                                          ),
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.01,
                                          ),
                                          StatEnemyWidget(
                                            nilaiDua: e.Resistence,
                                            nilaiSatu: e.Defense,
                                            statDua: "Resist",
                                            statSatu: "Defense",
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                Builder(builder: (context) {
                                  return Row(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.9,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.13,
                                        color: Colors.black,
                                        child: Column(
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.9,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.03,
                                              color: Colors.black,
                                              child: Center(
                                                  child: Text(
                                                "Appearances",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )),
                                            ),
                                            Expanded(
                                                child: Container(
                                              color: Colors.white,
                                              child: ListView.builder(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount:
                                                    e.modeKemunculan.length,
                                                itemBuilder: (context, index) {
                                                  return Container(
                                                    margin: EdgeInsets.all(3),
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.3,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.08,
                                                    color: Colors.black,
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.3,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.03,
                                                          color:
                                                              Colors.blueGrey,
                                                          child: Center(
                                                            child:
                                                                SingleChildScrollView(
                                                              scrollDirection:
                                                                  Axis.horizontal,
                                                              child: Text(
                                                                e.modeKemunculan[
                                                                    index],
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                            child: Container(
                                                          color: Colors.black,
                                                          child: Center(
                                                              child:
                                                                  SingleChildScrollView(
                                                            scrollDirection:
                                                                Axis.horizontal,
                                                            child: Text(
                                                              e.kemunculan[
                                                                  index],
                                                              style: TextStyle(
                                                                  fontSize: 20,
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                          )),
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
                                })
                              ],
                            ),
                          );
                        }).toList(),
                        options: CarouselOptions(
                            viewportFraction: 1,
                            onPageChanged: (index, reason) {
                              value.setIndex(index);
                            },
                            enlargeCenterPage: false,
                            pageSnapping: true,
                            animateToClosest: true,
                            enableInfiniteScroll: true,
                            scrollPhysics: BouncingScrollPhysics(
                                parent: AlwaysScrollableScrollPhysics()),
                            height: MediaQuery.of(context).size.height * 0.55));
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
