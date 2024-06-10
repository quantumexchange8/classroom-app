import 'package:flutter/material.dart';
import 'package:flutter_application_1/const/bottomNaviBar.dart';
import 'package:flutter_application_1/const/constant.dart';
import 'package:flutter_application_1/const/text_style.dart';
import 'package:flutter_application_1/login/loginAccount.dart';
import 'package:flutter_application_1/pages/MainScreen.dart';
import 'package:flutter_application_1/pages/UserProfile.dart';
import 'package:flutter_application_1/pages/homePage.dart';
import 'package:flutter_application_1/pages/searchPage.dart';
import 'package:flutter_application_1/pages/thirdPage.dart';
import 'package:flutter_application_1/signUp/createNewAccount.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Classroom',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyMainPage(title: 'Classroom'), 
    );
  }
}

/*class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentPageIndex = 0;
  final screens = [
    homePage(), searchPage(), thirdPage(), UserProfile(),
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPageIndex,
        children: screens,
        ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        backgroundColor: primaryPurple.shade100,
        selectedItemColor: primaryPurple.shade500,
        unselectedItemColor: primaryPurple.shade200,
        currentIndex: currentPageIndex,
        onTap: (index)=> setState(() => currentPageIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.widgets_outlined), label: 'xxxx'),
          BottomNavigationBarItem(icon: Icon(Icons.perm_identity), label: 'profile'),
        ],
      ),

    );
  }
}*/

