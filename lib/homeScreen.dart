// ignore_for_file: unused_field, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, sort_child_properties_last, deprecated_member_use, unused_element, sized_box_for_whitespace

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<IconData> _icons = [
    Icons.home,
    Icons.filter_list,
    Icons.chat,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/pic.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 730,
                ),
                Positioned(
                  top: 16,
                  left: 2,
                  child: Image.asset(
                    'assets/btnfilter.png',
                    width: 50,
                    height: 50,
                  ),
                ),
                Positioned(
                  top: 16,
                  right: 2,
                  child: Image.asset(
                    'assets/dot.png',
                    width: 50,
                    height: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 560),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Adnan 32",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 180),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              onPrimary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Text('Pair'),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "7 km away, New York city",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text('Practising'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _selectedIndex == 0 ? Colors.orange : Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.filter_list,
              color: _selectedIndex == 1 ? Colors.orange : Colors.black,
            ),
            label: 'Filter',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: _selectedIndex == 2 ? Colors.orange : Colors.black,
            ),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: _selectedIndex == 3 ? Colors.orange : Colors.black,
            ),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
