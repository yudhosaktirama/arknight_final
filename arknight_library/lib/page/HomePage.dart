import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:arknight_library/model/karausel.dart';
import 'package:arknight_library/page/BaseSkillPage.dart';
import 'package:arknight_library/page/EventCNLIstPage.dart';
import 'package:arknight_library/page/MaterialGuidePage.dart';
import 'package:arknight_library/page/OperatorSpotLight.dart';
import 'package:arknight_library/state_management/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widget/DoubleTitleIconWidget.dart';
import '../widget/ProfileWidget.dart';
import '../widget/RecentNewsWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<EventPreview> eventPrev = [
    EventPreview(
        gambar:
            "https://gamepress.gg/arknights/sites/arknights/files/2023-08/ADeathInChunfen_0.png",
        deskripsi:
            "During the event period,  event stages will be available for limited time, player can obtain event currency from  any stage except for Annihilation, and Extreme Modes. and redeem event rewards and [Information Fragments]. [Information Fragments] can be used to unlock stories in current or previous storyset.",
        judul: "A Death in Chunfen"),
    EventPreview(
        gambar:
            "https://gamepress.gg/arknights/sites/arknights/files/2023-08/TrialsForNavigator2_1.png",
        deskripsi:
            "Players can complete [Trial Tasks] and increase [Path of Trials] level to get the corresponding rewards.",
        judul: "Trials for Navigator #02"),
    EventPreview(
        gambar:
            "https://gamepress.gg/arknights/sites/arknights/files/2023-08/InvitationToWineRerun_0.png",
        deskripsi:
            "In rerun event, players can obtain event reward by clearing event stages, complete event missions and redeem at event shop.",
        judul: "Invitation To Wine Rerun")
  ];

  List<String> deskripsi = [
    "During the event period,  event stages will be available for limited time, player can obtain event currency from  any stage except for Annihilation, and Extreme Modes. and redeem event rewards and [Information Fragments]. [Information Fragments] can be used to unlock stories in current or previous storyset.",
    "Players can complete [Trial Tasks] and increase [Path of Trials] level to get the corresponding rewards.",
    "In rerun event, players can obtain event reward by clearing event stages, complete event missions and redeem at event shop.",
  ];
  List<String> judul = [
    "A Death in Chunfen",
    "Trials for Navigator #02",
    "Invitation To Wine Rerun"
  ];

  List<String> gambar = [
    "https://gamepress.gg/arknights/sites/arknights/files/styles/banner_image/public/2020-02/Arknights%20Operator%20Spotlights.png?itok=fuJBkgjN",
    "https://gamepress.gg/arknights/sites/arknights/files/styles/banner_image/public/2022-03/FarmingEfficienciesFeature.png?h=0e4e9e48&itok=7-sWNej6",
    "https://gamepress.gg/arknights/sites/arknights/files/styles/banner_image/public/2020-03/Feature%20Image%20RIIC%20Base%20Skill%20List_0.png?h=0e4e9e48&itok=8oU4jYJy",
    "https://gamepress.gg/arknights/sites/arknights/files/styles/banner_image/public/2020-04/Arknights%20Tag%20Filter%20Banner.png?h=ceb20177&itok=YfDuiSBE"
  ];

  List<String> deskripsiguide = [
    "Operator Spotlight",
    "Material Guide",
    "Base Skill",
    "Event CN List"
  ];

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => KarauselState(),
        child: Scaffold(
          backgroundColor: Color.fromRGBO(38, 33, 33, 1),
          appBar: null,
          body: ListView(
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
                        height: MediaQuery.of(context).size.height * 0.08,
                        child: Center(
                          child: AnimatedTextKit(
                              pause: Duration(seconds: 2),
                              repeatForever: true,
                              animatedTexts: [
                                FadeAnimatedText("Welcome Home Doctor",
                                    textStyle: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500)),
                                FadeAnimatedText("To Event Preview Section",
                                    textStyle: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500))
                              ]),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.13,
                        height: MediaQuery.of(context).size.height * 0.08,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/jesica.png'),
                                fit: BoxFit.contain)),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.13,
                        height: MediaQuery.of(context).size.height * 0.08,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/mostima.png'),
                                fit: BoxFit.fill)),
                      )
                    ],
                  ),
                  Center(
                    child: Card(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.06,
                        color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Consumer<KarauselState>(
                                builder: (context, value, child) {
                              return Builder(builder: (context) {
                                return Text(
                                  judul[value.index],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17),
                                );
                              });
                            }),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Consumer<KarauselState>(
                    builder: (context, value, child) {
                      return CarouselSlider(
                          items: eventPrev.map((e) {
                            return Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 1.2),
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height * 0.25,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: CachedNetworkImageProvider(
                                              e.gambar),
                                          fit: BoxFit.fill)),
                                ),
                              ],
                            );
                          }).toList(),
                          options: CarouselOptions(
                              onPageChanged: (index, reason) {
                                Provider.of<KarauselState>(context,
                                        listen: false)
                                    .setIndex(index);
                              },
                              autoPlay: true,
                              viewportFraction: 0.98,
                              height:
                                  MediaQuery.of(context).size.height * 0.25));
                    },
                  ),
                  Center(
                    child: Card(
                      child: Consumer<KarauselState>(
                        builder: (context, value, child) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.15,
                            color: Colors.black,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  deskripsi[Provider.of<KarauselState>(context)
                                      .index],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  DoubleIconAndTitleWidget(
                    gambar: "assets/parmanix.png",
                    judul: "Arknight Recent News",
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.92,
                        height: MediaQuery.of(context).size.height * 0.4,
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: 4,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(bottom: 14),
                              width: MediaQuery.of(context).size.width * 0.6,
                              height: MediaQuery.of(context).size.height * 0.18,
                              color: Colors.white,
                              child: RecentNewsWidget(),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  DoubleIconAndTitleWidget(
                    gambar: "assets/jesica.png",
                    judul: "Arknight Newbie Guide",
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.93,
                        height: MediaQuery.of(context).size.height * 0.26,
                        child: GridView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          itemCount: deskripsiguide.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: GestureDetector(
                                onTap: () {
                                  if (index == 0) {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return OperatorSpotlight();
                                      },
                                    ));
                                  } else if (index == 1) {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return MaterialGuidePage();
                                      },
                                    ));
                                  } else if (index == 2) {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return BaseSkillPage();
                                      },
                                    ));
                                  } else {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return EventCNListPage();
                                      },
                                    ));
                                  }
                                },
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.43,
                                  height:
                                      MediaQuery.of(context).size.height * 0.26,
                                  color: Colors.black,
                                  child: Column(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.44,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.18,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image:
                                                    NetworkImage(gambar[index]),
                                                fit: BoxFit.fill)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  DoubleIconAndTitleWidget(
                      gambar: 'assets/mostima.png',
                      judul: "Join Rhodes Island"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.23,
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://gamepress.gg/arknights/sites/arknights/files/2022-11/%E7%AB%8B%E7%BB%98_%E7%BC%84%E9%BB%98%E5%BE%B7%E5%85%8B%E8%90%A8%E6%96%AF_1.png'),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://wallpapercave.com/wp/wp4693558.jpg'),
                                fit: BoxFit.fill)),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.22,
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://static.wikia.nocookie.net/mrfz/images/c/ce/Logos.png/revision/latest?cb=20221011084703'),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.03,
                        child: Center(
                            child: Text(
                          "End Of Home Page",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        )),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
