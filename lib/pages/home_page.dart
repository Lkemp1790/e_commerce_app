import 'package:e_commerce_app/components/bottom_nav_bar.dart';
import 'package:e_commerce_app/pages/cart_page.dart';
import 'package:e_commerce_app/pages/shop_page.dart';
import 'package:e_commerce_app/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    //  shop page
    const ShopPage(),

    // cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
          backgroundColor: Theme.of(context).colorScheme.surface,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  // logo
                  DrawerHeader(
                    child: Image.asset(
                      'lib/images/nike.png',
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: ListTile(
                      leading: Icon(Icons.home,),
                      title: Text(
                        "Home",
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: ListTile(
                      leading: Icon(Icons.info,),
                      title: Text(
                        "About",
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 25, bottom: 25),
                    child: ListTile(
                      leading: Icon(Icons.logout,),
                      title: Text(
                        "Logout",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25, bottom: 25),
                    child: IconButton(
                        onPressed: () {
                          Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
                        },
                        icon: Icon(Icons.dark_mode)),
                  ),
                ],
              )
            ],
          )), // Added const
      body: _pages[_selectedIndex],
    );
  }
}
