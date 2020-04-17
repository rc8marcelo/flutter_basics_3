import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTabItem = 0;

  static const List<Widget> _tabScreens = <Widget>[
    Text('Dashboard'),
    Text('Team'),
    Text('Profile'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedTabItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: incidentButton(context),
        title: const Text('Home Route'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _tabScreens.elementAt(_selectedTabItem),
          ],
        ),
      ),
      bottomNavigationBar: createBottomNav(),
    );
  }

  IconButton incidentButton(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.warning,
        color: Colors.yellow[600],
      ),
      onPressed: () => Navigator.pushNamed(context, '/incident'),
    );
  }

  BottomNavigationBar createBottomNav() {
    return BottomNavigationBar(
      currentIndex: _selectedTabItem,
      onTap: _onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.dashboard),
          title: Text('Dashboard'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.group),
          title: Text('Team'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('Profile'),
        ),
      ],
    );
  }
}
