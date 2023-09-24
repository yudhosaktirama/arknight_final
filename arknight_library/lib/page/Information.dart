import 'package:arknight_library/model/customclipper.dart';
import 'package:arknight_library/model/listmodel.dart';
import 'package:arknight_library/page/EventCNLIstPage.dart';
import 'package:arknight_library/state_management/provider.dart';
import 'package:arknight_library/widget/ProfileWidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AnimasiKontainer(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromRGBO(38, 33, 33, 1),
        child: ListView(
          children: [
            ProfileWidget(),
            SpacingWidget(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipPath(
                clipper: ClipProfilePage(),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadiusDirectional.circular(14)),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.05,
                        color: Colors.black,
                        child: Center(
                          child: Text(
                            "Arknight User Information",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.1,
                        color: Colors.grey,
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.20,
                              height: MediaQuery.of(context).size.height * 0.1,
                              color: Color.fromRGBO(19, 21, 87, 1),
                              child: Center(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.18,
                                  height:
                                      MediaQuery.of(context).size.height * 0.09,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://gamepress.gg/arknights/sites/arknights/files/2022-11/TexalterAvatar.png'))),
                                ),
                              ),
                            ),
                            Expanded(
                                child: Container(
                              color: Color.fromRGBO(62, 63, 77, 1),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.03,
                                        color: Color.fromRGBO(62, 63, 77, 1),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Text(
                                            "  Dr. SilverKnight #9711",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.71,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.07,
                                        color: Colors.black,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Semoga Ling Free Pull",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ))
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.2,
                        color: Colors.grey,
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.04,
                              color: Colors.black,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  "Support Unit",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                spaceHorizontalWidget(),
                                SupportUnitWidget(
                                  gambar:
                                      "https://gamepress.gg/arknights/sites/arknights/files/2022-11/PenanceAvatar.png",
                                  nama: "Penance",
                                ),
                                spaceHorizontalWidget(),
                                SupportUnitWidget(
                                  gambar:
                                      "https://gamepress.gg/arknights/sites/arknights/files/2023-01/%E5%A4%B4%E5%83%8F_%E6%9E%97.png",
                                  nama: "Lin",
                                ),
                                spaceHorizontalWidget(),
                                SupportUnitWidget(
                                  gambar:
                                      "https://gamepress.gg/arknights/sites/arknights/files/2023-01/%E5%A4%B4%E5%83%8F_%E9%87%8D%E5%B2%B3.png",
                                  nama: "Chongyue",
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          child: Container(
                        color: Colors.black,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                "Tanggal Awal Bermain : 07-02-2020",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Consumer<AnimasiKontainer>(
                builder: (context, value, anak) {
                  return GestureDetector(
                    onTap: () {
                      value.setKondisi();
                    },
                    child: AnimatedContainer(
                      curve: Curves.fastOutSlowIn,
                      duration: Duration(seconds: 1),
                      width: MediaQuery.of(context).size.width,
                      height: value.kondisiawal
                          ? MediaQuery.of(context).size.height * 0.05
                          : MediaQuery.of(context).size.height * 0.2,
                      color: Colors.black,
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.05,
                            color: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.arrow_downward_rounded,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Profil Pembuat",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                  Icon(
                                    Icons.arrow_downward_rounded,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                          value.kondisiawal
                              ? SizedBox()
                              : Expanded(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Container(
                                      color: Colors.black,
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  ListItem().profil,
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Consumer<AnimasiKontainer>(
                builder: (context, value, child) {
                  return GestureDetector(
                      onTap: () {
                        value.setKondisiSumberData();
                      },
                      child: AnimatedContainer(
                        width: MediaQuery.of(context).size.width,
                        height: value.kondisiawalSumberData? MediaQuery.of(context).size.height * 0.05 : MediaQuery.of(context).size.height * 0.25,
                        color: Colors.black,
                        curve: Curves.fastOutSlowIn,
                        duration: Duration(seconds: 1),
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.05,
                              color: Colors.black,
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.arrow_downward_rounded,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Sumber Data",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Icon(
                                      Icons.arrow_downward_rounded,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            value.kondisiawalSumberData ? SizedBox() : 
                            Expanded(child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Container(
                                color: Colors.black,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text("Data Informasi dan Gambar : gamepress.gg/arknight\n\nData Gambar : AceShip\n\nData Lore : Arknight Fandom ",style: TextStyle(
                                        color: Colors.white
                                      ),),
                                    ],
                                  ),
                                ),
                              ),
                            ))
                          ],
                        ),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class spaceHorizontalWidget extends StatelessWidget {
  const spaceHorizontalWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.02,
    );
  }
}

class SupportUnitWidget extends StatelessWidget {
  final String gambar;
  final String nama;
  const SupportUnitWidget({
    required this.gambar,
    required this.nama,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.2,
          height: MediaQuery.of(context).size.height * 0.1,
          color: Color.fromRGBO(19, 21, 87, 1),
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.16,
              height: MediaQuery.of(context).size.height * 0.08,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(image: NetworkImage(gambar))),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.2,
          height: MediaQuery.of(context).size.height * 0.04,
          color: Colors.black87,
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Text(
                nama,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
