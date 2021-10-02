import 'package:flutter/material.dart';
import 'view/top_screen.dart';
import 'view/register_task_screen.dart';
import 'view/data_screen.dart';
import 'view/mypage_screen.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;

  List<Widget> _widgetList = <Widget> [
    TopScreen(),
    RegisterTaskScreen(),
    MyPageScreen(),
  ];

  void _navigationItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetList.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(Icons.check, size: 32.0), label: 'top', backgroundColor: Color(0xFF00000F)),
          BottomNavigationBarItem(icon: Icon(Icons.add, size: 32.0), label: 'add', backgroundColor: Color(0xFF00000F)),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined, size: 32.0), label: 'account', backgroundColor: Color(0xFF00000F))
        ],
        currentIndex: _selectedIndex,
        onTap: _navigationItemTap,
        selectedFontSize: 13.0,
        selectedItemColor: Colors.blue,
        unselectedFontSize: 10.0,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
      ),

      backgroundColor: Colors.red,
    );
  }
}