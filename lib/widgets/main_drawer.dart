import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function handler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 24),
      ),
      onTap: handler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(16),
            alignment: Alignment.centerLeft,
            child: Text(
              'Meals App',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(height: 20),
          buildListTile(
            'Meals',
            Icons.restaurant,
            () {
              Navigator.of(context).pushReplacementNamed('/');
            }
          ),
          buildListTile(
            'Filter',
            Icons.filter_1,
            () {
              Navigator.of(context).pushReplacementNamed('/filters');
            }
          ),
        ],
      ),
    );
  }
}
