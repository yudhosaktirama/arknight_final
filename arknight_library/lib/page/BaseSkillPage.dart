import 'package:arknight_library/model/listmodel.dart';
import 'package:arknight_library/page/baseSkillListPage/BaseSkillListDetailPage.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BaseSkillPage extends StatelessWidget {
  BaseSkillPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text("Base Skill List"),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios)),
        ),
        backgroundColor: Color.fromRGBO(38, 33, 33, 1),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemCount: ListItem().baseSkillListSelection.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.32,
                  color: Colors.black,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.05,
                        color: Colors.black,
                        child: Center(
                          child: Text(
                            ListItem().baseSkillListSelection[index].judul +
                                " Skill",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: CachedNetworkImageProvider(ListItem()
                                    .baseSkillListSelection[index]
                                    .gambar),
                                fit: BoxFit.fill)),
                      ),
                      Expanded(
                          child: Container(
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.black),
                                fixedSize: MaterialStatePropertyAll(Size(
                                    MediaQuery.of(context).size.width,
                                    MediaQuery.of(context).size.height))),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return BaseSkillListDetailPage(
                                      judulList: ListItem()
                                          .baseSkillListSelection[index]
                                          .judul,
                                      nomorid: ListItem()
                                          .baseSkillListSelection[index]
                                          .nomorid);
                                },
                              ));
                            },
                            child: Text(
                              "Lihat Detail Skill Operator",
                              style: TextStyle(
                                fontSize: 20,
                              ),
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
    );
  }
}
