import 'package:arknight_library/widget/DoubleTitleIconWidget.dart';
import 'package:arknight_library/widget/ProfileWidget.dart';
import 'package:flutter/material.dart';

class EventCNListPage extends StatelessWidget {
  const EventCNListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text("Arknight CN Event List"),
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
          color: Color.fromRGBO(38, 33, 33, 1),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: 8,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  color: Colors.black,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.18,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://static.wikia.nocookie.net/mrfz/images/3/39/CN_Ideal_City_Rerun_banner.png/revision/latest?cb=20230826064020'),
                                fit: BoxFit.fill)),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.86,
                        height: MediaQuery.of(context).size.height * 0.03,
                        color: Colors.black,
                        child: Center(
                          child: Text(
                            "Gavial Alter Rerun Event",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.86,
                        height: MediaQuery.of(context).size.height * 0.03,
                        color: Colors.black,
                        child: Center(
                          child: Text(
                            "CN Date : ",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Expanded(
                          child: Container(
                        color: Colors.black,
                        child: Center(
                          child: Text(
                            "CN: August 31, 2023 ~ September 10, 2023",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
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

class SpacingWidget extends StatelessWidget {
  const SpacingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.038,
    );
  }
}
