import 'dart:ui';

import 'package:cyberspace_test/ui/home_page.dart';
import 'package:cyberspace_test/ui/reports_page.dart';
import 'package:cyberspace_test/ui/send_money_page.dart';
import 'package:cyberspace_test/ui/settings_page.dart';
import 'package:cyberspace_test/ui/wallets_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> screenList = [
      HomePage(),
      WalletsPage(),
      SendMoneyPage(),
      ReportsPage(),
      SettingsPage(),
    ];
    final List<String> appBarTitleList = [
      '\$ 926.21',
      'Wallets',
      'Send Money',
      'Reports',
      'Settings',
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF9FAFB),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Opacity(
                      opacity: _selectedIndex == 0 ? 1 : 0,
                      child: Text(
                        'Your balance',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                            color: Color(0xffA6AAB4)),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          appBarTitleList[_selectedIndex],
                          style: TextStyle(
                            color: Color(0xff171D33),
                            fontSize: 32.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: GoogleFonts.sarabun().fontFamily,
                          ),
                        )),
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffECECFB)),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                      'assets/images/profile_image.png'),
                                  radius: 16,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              top: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff54D3AD),
                                    ),
                                    height: 8.0,
                                    width: 8.0,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(child: screenList[_selectedIndex]),
            ],
          ),
        ),
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
            child: Icon(
              Icons.send,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                _selectedIndex = 2;
              });
            },
            backgroundColor: Theme.of(context).primaryColor),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
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
