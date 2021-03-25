import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final List<Widget> _screenList = [
    Center(child: Text('Home')),
    Center(child: Text('Wallets')),
    Center(child: Text('Send')),
    Center(child: Text('Reports')),
    Center(child: Text('Settings')),
  ];

  int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenList[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: _getBottomAppBarItem(
                        icon: Icons.home,
                        onPressed: () {
                          setState(() {
                            _selectedIndex = 0;
                          });
                        },
                        index: 0,
                        selectedIndex: _selectedIndex)),
                Expanded(
                    child: _getBottomAppBarItem(
                        icon: Icons.credit_card,
                        onPressed: () {
                          setState(() {
                            _selectedIndex = 1;
                          });
                        },
                        index: 1,
                        selectedIndex: _selectedIndex)),
                Spacer(), //This space is for the notch FAB
                Expanded(
                    child: _getBottomAppBarItem(
                        icon: Icons.analytics,
                        onPressed: () {
                          setState(() {
                            _selectedIndex = 3;
                          });
                        },
                        index: 3,
                        selectedIndex: _selectedIndex)),
                Expanded(
                    child: _getBottomAppBarItem(
                        icon: Icons.settings,
                        onPressed: () {
                          setState(() {
                            _selectedIndex = 4;
                          });
                        },
                        index: 4,
                        selectedIndex: _selectedIndex)),
              ],
            ),
          ),
        ),
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        clipBehavior: Clip.antiAlias,
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.send),
          onPressed: () {
            setState(() {
              _selectedIndex = 2;
            });
          },
          backgroundColor: Theme.of(context).primaryColor),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _getBottomAppBarItem(
      {@required IconData icon,
      @required void Function() onPressed,
      @required int index,
      @required int selectedIndex}) {
    return Material(
      color: Colors.transparent,
      child: IconButton(
        icon: Icon(
          icon,
        ),
        onPressed: onPressed,
        color: index == selectedIndex
            ? Theme.of(context).primaryColor
            : Color(0xffA6AAB4),
      ),
    );
  }
}
