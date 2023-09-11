import 'package:arknight_library/page/GuideBook.dart';
import 'package:arknight_library/page/HomePage.dart';
import 'package:arknight_library/page/Information.dart';
import 'package:arknight_library/state_management/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BottomNavState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: null,
          body: Consumer<BottomNavState>(
            builder: (context, value, child) {
              if (value.index == 0) {
                return HomePage();
              } else if (value.index == 1) {
                return GuideBookPage();
              } else {
                return InformationPage();
              }
            },
          ),
          bottomNavigationBar: Consumer<BottomNavState>(
            builder: (context, valueku, child) {
              return BottomNavigationBar(
                backgroundColor: Colors.black,
                items: [
                  BottomNavigationBarItem(
                      label: "Home",
                      icon: Icon(
                        Icons.home,
                        color: Colors.white,
                      )),
                  BottomNavigationBarItem(
                      label: "Guide Book",
                      icon: Icon(
                        Icons.book,
                        color: Colors.white,
                      )),
                  BottomNavigationBarItem(
                      label: "Information",
                      icon: Icon(
                        Icons.person,
                        color: Colors.white,
                      ))
                ],
                unselectedLabelStyle: TextStyle(color: Colors.white),
                unselectedItemColor: Colors.white,
                currentIndex: valueku.index,
                onTap: (value) {
                  valueku.setIndex(value);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
