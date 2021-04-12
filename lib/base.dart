import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'pages/discover.dart';
import 'pages/feed.dart';
import 'pages/friends.dart';


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String HOST;



  /**
   * Get the current youtube API key stored in the django database to set it
   * in shared preferences
   * 
   * Might need to move this to the library.dart file
   */

  /**
   * Bottom navigation bar index selection
   */

  int selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 30);
  List<Widget> _widgetOptions = <Widget>[
    LibraryPage(),
    HomePage(),
    FriendsPage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            // ignore: deprecated_member_use
            title: Text(
              'Home',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.library_music,
              color: Colors.grey,
            ),
            // ignore: deprecated_member_use
            title: Text(
              'Library',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            // ignore: deprecated_member_use
            title: Text(
              'Discover',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.red,
        onTap: _onItemTapped,
      ),
    );
  }
}