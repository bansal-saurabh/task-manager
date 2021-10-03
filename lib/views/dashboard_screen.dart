import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'home_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Easy Task Manager'),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add Task',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: const HomeScreen(),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              padding: const EdgeInsets.all(15.0),
              iconSize: 30.0,
              color: Colors.black38,
              tooltip: 'Home',
              icon: const Icon(Icons.home_filled),
              onPressed: () {},
            ),
            IconButton(
              padding: const EdgeInsets.all(15.0),
              iconSize: 30.0,
              color: Colors.black38,
              tooltip: 'Calender',
              icon: const Icon(Icons.calendar_today),
              onPressed: () {},
            ),
            IconButton(
              padding: const EdgeInsets.all(15.0),
              iconSize: 30.0,
              color: Colors.black38,
              tooltip: 'Profile',
              icon: const Icon(Icons.person_outline),
              onPressed: () {},
            ),
            IconButton(
              padding: const EdgeInsets.all(15.0),
              iconSize: 30.0,
              color: Colors.black38,
              tooltip: 'Settings',
              icon: const Icon(Icons.settings_outlined),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
