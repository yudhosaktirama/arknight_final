import 'package:arknight_library/widget/DoubleTitleIconWidget.dart';
import 'package:arknight_library/widget/ProfileWidget.dart';
import 'package:flutter/material.dart';

class MaterialGuidePage extends StatelessWidget {
  const MaterialGuidePage({super.key});

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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.038,
              ),
              ProfileWidget(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.038,
              ),
              DoubleIconAndTitleWidget(
                  gambar: "assets/mostima.png",
                  judul: "Material farming Guide"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.038,
              ),
              MaterialFarmingBuildWidget(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.038,
              ),
              MaterialFarmingBuildWidget(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.038,
              ),
              MaterialFarmingBuildWidget(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.038,
              ),
              MaterialFarmingBuildWidget()
            ],
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
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.4,
          color: Colors.amber,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.05,
                color: Colors.black,
                child: Center(
                  child: Text(
                    "Tier 1 Material",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                color: Colors.grey,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.15,
                      margin: EdgeInsets.all(4),
                      color: Colors.amberAccent,
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.height * 0.15,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(38, 33, 33, 1),
                            ),
                            child: Center(
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.13,
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
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
                                      MediaQuery.of(context).size.width * 0.7,
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(
                                      children: [
                                        FarmingStageEficienyWidget(),
                                        FarmingStageEficienyWidget()
                                      ],
                                    ),
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
