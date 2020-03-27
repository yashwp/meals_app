import 'package:flutter/material.dart';

import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/favorites_screen.dart';
import 'package:meals_app/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {
      'title': 'Categories',
      'page': CategoriesScreen() 
    }, 
    {
      'title': 'Your Favorites',
      'page': FavoritesScreen() 
    }, 
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text( _pages[_selectedPageIndex]['title']),
        ),
        drawer: MainDrawer(),
        body: _pages[_selectedPageIndex]['page'],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          backgroundColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.indigo,
          currentIndex: _selectedPageIndex,
          type: BottomNavigationBarType.shifting,

          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.category),
              title: Text('Categories')
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.favorite),
              title: Text('Favorites')
            ),
          ],
        ),
      ),
    );
  }
}
