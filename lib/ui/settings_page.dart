import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, IconData> settingsItemStringsToIconDateMap = {
      'Profile Information': Icons.book,
      'Password': Icons.lock,
      'Email': Icons.mail,
      'Phone Number': Icons.phone,
      'Notifications': Icons.notifications,
      'Currency': Icons.attach_money,
      'Language': Icons.language,
      'Account': Icons.person,
      'Privacy Policy': Icons.shield,
      'Terms of Use': Icons.query_builder
    };
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, left: 16.0, right: 16.0),
      child: GridView.builder(
        itemCount: settingsItemStringsToIconDateMap.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 16.0,
        ),
        itemBuilder: (_, int index) {
          final String itemString =
              settingsItemStringsToIconDateMap.keys.elementAt(index);
          final IconData icon =
              settingsItemStringsToIconDateMap.values.elementAt(index);

          return Card(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).primaryColor),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  itemString,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
