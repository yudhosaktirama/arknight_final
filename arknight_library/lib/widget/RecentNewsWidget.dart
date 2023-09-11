import 'package:flutter/material.dart';

class RecentNewsWidget extends StatelessWidget {
  const RecentNewsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.55,
          height: MediaQuery.of(context).size.height * 0.15,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.05,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.10,
                      height: MediaQuery.of(context).size.height * 0.05,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://gamepress.gg/arknights/sites/arknights/files/Arkgnits-main.jpg')),
                          shape: BoxShape.circle),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.height * 0.033,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(6),
                          shape: BoxShape.rectangle),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          "Arknight",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.55,
                height: MediaQuery.of(context).size.height * 0.05,
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Arknights: Mastery Priority Guide - A Death in Chunfen",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    )),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.05,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.28,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Text(
                          "13 hours ago",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Row(
                      children: [
                        Icon(Icons.history),
                      ],
                    ))
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://gamepress.gg/sites/default/files/styles/600x315/public/2023-08/DC_0.png?itok=2S2wZR16"),
                  fit: BoxFit.fill)),
        ))
      ],
    );
  }
}
