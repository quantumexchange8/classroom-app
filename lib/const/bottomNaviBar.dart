import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/const/constant.dart';
import 'package:flutter_application_1/pages/UserProfile.dart';
import 'package:flutter_application_1/pages/homePage.dart';
import 'package:flutter_application_1/pages/searchPage.dart';
import 'package:flutter_application_1/pages/thirdPage.dart';

class BottomNavBar extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int> onIndexChanged;
  const BottomNavBar({required this.currentIndex, required this.onIndexChanged, Key?key,}):super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int _currentIndex = 0;
  void _onItemTapped (int index){
    setState(() {
      _currentIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
          body: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            backgroundColor: primaryPurple.shade100,
            selectedItemColor: primaryPurple.shade500,
            unselectedItemColor: primaryPurple.shade200,
            currentIndex: widget.currentIndex,
            onTap: _onItemTapped,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
              BottomNavigationBarItem(icon: Icon(Icons.widgets_outlined), label: 'xxxx'),
              BottomNavigationBarItem(icon: Icon(Icons.perm_identity), label: 'profile'),
            ],
            
          ),
        
    );
      

  }
}