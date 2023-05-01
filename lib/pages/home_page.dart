import 'package:flutter/material.dart';
import 'package:nike_app/components/bottom_nav_bar.dart';

import 'cart_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // this selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  //this method is to update our selected index
  //when the user taps on the bottom bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to display
  final List<Widget> _pages = [
    //shop page
    const ShopPage(),
    //cart page
    const CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
            onPressed: () => Scaffold.of(
              context,
            ).openDrawer(),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //logo
                DrawerHeader(
                  child: Image.asset(
                    'lib/images/logo.png',
                    color: Colors.white,
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Divider(
                    color: Colors.white,
                    thickness: 0.75,
                  ),
                ),
                //other pages
                const Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: ListTile(
                    leading: Icon(Icons.home),
                    iconColor: Colors.white,
                    title: Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                ),
                //other pages
                const Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: ListTile(
                    leading: Icon(Icons.info),
                    iconColor: Colors.white,
                    title: Text(
                      'About',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                ),
              ],
            ),
            //other pages
            const Padding(
              padding: EdgeInsets.only(left: 24, bottom: 20),
              child: ListTile(
                leading: Icon(Icons.logout),
                iconColor: Colors.white,
                title: Text(
                  'Log out',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
