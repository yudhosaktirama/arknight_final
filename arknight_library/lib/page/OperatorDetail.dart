import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widget/JudulInformasiWidget.dart';
import '../widget/OperatorClassWidget.dart';
import '../widget/OperatorStatsWidget.dart';
import '../widget/SkillInfoWidget.dart';
import '../widget/SkillMasteryIdikatorWidget.dart';
import '../widget/TalentWidget.dart';

// ignore: must_be_immutable
class OperatorDetail extends StatelessWidget {
  OperatorDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          title: Text("Operator Detail"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.3,
                      color: Colors.grey),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://images5.alphacoders.com/109/1091015.jpg'),
                            fit: BoxFit.fill)),
                  ),
                  Positioned(
                    right: 0.1,
                    bottom: 0.1,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.79,
                      height: MediaQuery.of(context).size.height * 0.08,
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Text(
                            "Muelsyse",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 28),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0.1,
                    left: 5,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.22,
                      height: MediaQuery.of(context).size.height * 0.13,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images5.alphacoders.com/130/1309225.jpg'),
                              fit: BoxFit.fill),
                          color: Colors.black,
                          shape: BoxShape.circle),
                    ),
                  )
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.31,
                child: Column(
                  children: [
                    JudulInformasiDetailWidget(
                        judulInformasi: "General Information"),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height * 0.25,
                          color: Colors.black26,
                          child: Column(
                            children: [
                              Card(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  color: Colors.black,
                                  child: Center(
                                    child: Text(
                                      "Operator Stats",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                  child: Card(
                                child: Container(
                                  color: Colors.cyan,
                                  child: ListView(
                                    children: [
                                      OperatorStatsWidget(
                                        namaStat: "HP",
                                        nilaiStat: "1598",
                                      ),
                                      OperatorStatsWidget(
                                        namaStat: "ATK",
                                        nilaiStat: "569",
                                      ),
                                      OperatorStatsWidget(
                                        namaStat: "DEF",
                                        nilaiStat: "320",
                                      ),
                                      OperatorStatsWidget(
                                        namaStat: "Arts Resist",
                                        nilaiStat: "0",
                                      ),
                                      OperatorStatsWidget(
                                        namaStat: "Redeploy Time",
                                        nilaiStat: "18",
                                      ),
                                      OperatorStatsWidget(
                                        namaStat: "DP Cost",
                                        nilaiStat: "10",
                                      ),
                                      OperatorStatsWidget(
                                        namaStat: "Block",
                                        nilaiStat: "1",
                                      ),
                                      OperatorStatsWidget(
                                        namaStat: "Attack Interval",
                                        nilaiStat: "0.93",
                                      ),
                                    ],
                                  ),
                                ),
                              ))
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height * 0.25,
                          color: Colors.black26,
                          child: Column(
                            children: [
                              Card(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  color: Colors.black,
                                  child: Center(
                                    child: Text(
                                      "Operator Class",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Card(
                                  child: Container(
                                    color: Colors.black,
                                    child: ListView(
                                      children: [
                                        OperatorClassWidget(
                                          namaClass: "Caster",
                                          gambarClass:
                                              "https://gamepress.gg/arknights/sites/arknights/files/2019-10/class_caster.png",
                                          detailClass:
                                              "Casters attack enemies with their Originium Arts, dealing Arts damage instead of the usual Physical damage. This makes Casters a viable option when facing enemies with high DEF as they typically have little to no RES.",
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.01,
                                        ),
                                        OperatorClassWidget(
                                          gambarClass:
                                              "https://gamepress.gg/arknights/sites/arknights/files/2021-09/sub_phalanx_icon.png",
                                          namaClass: "Modal / Phalanx Caster",
                                          detailClass:
                                              "Ranged units that do true AoE Arts damage when a Skill is active. When a skill is not active, they do not attack, but have increased DEF and RES, making them very survivaable for ranged units.Their range and functioning create a higher learning curve for new players than other casters.",
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              JudulInformasiDetailWidget(judulInformasi: "Talent Operator"),
              Container(
                color: Colors.grey,
                child: Card(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.3,
                    color: Colors.amber,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.15,
                          color: Colors.blueAccent,
                          child: Column(
                            children: [
                              TalentWidget(
                                groupTalent: "Talent 1 : Foolproof Plan",
                              ),
                              Expanded(
                                  child: Container(
                                color: Colors.black,
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Text(
                                      "A Crystal Barrier blocks all damage, shattering when 200 or more damage is taken from a single source, dealing 100% of Lin's ATK as Arts damage to all nearby enemies and Stun them for 1s; reforms after 8s",
                                      style: TextStyle(color: Colors.white),
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
                          child: Column(
                            children: [
                              TalentWidget(
                                groupTalent: "Talent 2 : Shrouded Strength",
                              ),
                              Expanded(
                                  child: Container(
                                color: Colors.black,
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Text(
                                        "50% chance to recover 1 SP when attacked",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ))
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.414,
                color: Colors.grey,
                child: Column(
                  children: [
                    JudulInformasiDetailWidget(
                      judulInformasi: "Skill Information",
                    ),
                    Card(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.34,
                        color: Colors.black,
                        child: ListView(
                          children: [
                            SkillInfoWidget(
                              namaSkill: "Skill 1 : Elegance",
                              gambarSkill:
                                  "https://gamepress.gg/arknights/sites/arknights/files/2023-01/skill_icon_skchr_lin_1.png",
                              deskripsiSkill:
                                  "Can switch between the initial state and the following state:Attack interval slightly increased, ATK +10%, attacks Slow0.7s.This Skill modifies the Attack Interval by 1",
                            ),
                            SkillInfoWidget(
                              namaSkill: "Skill 2 : Shelter",
                              gambarSkill:
                                  "https://gamepress.gg/arknights/sites/arknights/files/2023-01/skill_icon_skchr_lin_2.png",
                              deskripsiSkill:
                                  "ASPD +10, less likely to be attacked by enemies, all allies within attack range gain Talent 1 effect while skill is active.",
                            ),
                            SkillInfoWidget(
                              namaSkill: "Skill 3 : Riving Lighttails",
                              gambarSkill:
                                  "https://gamepress.gg/arknights/sites/arknights/files/2023-01/skill_icon_skchr_lin_3.png",
                              deskripsiSkill:
                                  "ATK +90%, attack range and Crystal Barrier shatter damage range increase; Crystal Barrier damage threshold increases to 1.5x. Whenever an attack defeats an enemy, immediately shatter the Crystal Barrier and create a new one Skill can be manually deactivated (skill can be interrupted at any time)",
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                color: Colors.grey,
                child: Column(
                  children: [
                    JudulInformasiDetailWidget(
                        judulInformasi: "Recomended Skill Mastery"),
                    Expanded(
                      child: Card(
                        child: Container(
                          color: Color.fromARGB(255, 79, 37, 37),
                          child: ListView(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.3,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.12,
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.04,
                                              color: Colors.black,
                                              child: Center(
                                                child: Text(
                                                  'Mastery',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                                child: Container(
                                              color: Colors.black,
                                              child: Center(
                                                child: Text(
                                                  "S3M3",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ))
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.3,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.12,
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.04,
                                              color: Colors.black,
                                              child: Center(
                                                child: Text(
                                                  'Skill',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                                child: Container(
                                              color: Colors.black,
                                              child: Center(
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.1,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.055,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: NetworkImage(
                                                              'https://gamepress.gg/arknights/sites/arknights/files/2023-02/%E6%8A%80%E8%83%BD_%E9%97%AE%E9%9B%AA.png'))),
                                                ),
                                              ),
                                            ))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.97,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.12,
                                        color: Colors.black,
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                SkillMasteryIndikatorWidget(
                                                  judulMastery: "Story",
                                                  nilaiMastery: "S+",
                                                ),
                                                SkillMasteryIndikatorWidget(
                                                  judulMastery: "Advance",
                                                  nilaiMastery: "S+",
                                                ),
                                                SkillMasteryIndikatorWidget(
                                                  judulMastery: "Roguelike",
                                                  nilaiMastery: "S",
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              JudulInformasiDetailWidget(judulInformasi: "Youtube Gameplay"),
            ],
          ),
        ),
      ),
    );
  }
}
