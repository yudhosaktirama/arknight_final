import 'package:arknight_library/page/EventCNLIstPage.dart';
import 'package:arknight_library/widget/DoubleTitleIconWidget.dart';
import 'package:arknight_library/widget/ProfileWidget.dart';
import 'package:flutter/material.dart';

import '../widget/RIICBaseSkillTemplateWidget.dart';

// ignore: must_be_immutable
class BaseSkillPage extends StatelessWidget {
  BaseSkillPage({super.key});

  String coba =
      "When this Operator is assigned to the Control Center, increases Morale of all Operators in the Control Center by +0.05 per hour.";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(38, 33, 33, 1),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SpacingWidget(),
              ProfileWidget(),
              SpacingWidget(),
              DoubleIconAndTitleWidget(
                  gambar: "assets/parmanix.png", judul: "RIIC Base Skill List"),
              SpacingWidget(),
              RIICBaseSkillTemplateWidget(
                  judul: "Control Center Skill", coba: coba),
              SpacingWidget(),
              RIICBaseSkillTemplateWidget(
                  judul: "Control Center Skill", coba: coba),
              SpacingWidget(),
              RIICBaseSkillTemplateWidget(
                  judul: "Control Center Skill", coba: coba),
              SpacingWidget(),
              RIICBaseSkillTemplateWidget(
                  judul: "Control Center Skill", coba: coba),
              SpacingWidget(),
              RIICBaseSkillTemplateWidget(
                  judul: "Control Center Skill", coba: coba),
              SpacingWidget(),
              RIICBaseSkillTemplateWidget(
                  judul: "Control Center Skill", coba: coba),
              SpacingWidget(),
              RIICBaseSkillTemplateWidget(
                  judul: "Control Center Skill", coba: coba),
              SpacingWidget(),
              RIICBaseSkillTemplateWidget(
                  judul: "Control Center Skill", coba: coba),
              SpacingWidget(),
              RIICBaseSkillTemplateWidget(
                  judul: "Control Center Skill", coba: coba),
              SpacingWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
