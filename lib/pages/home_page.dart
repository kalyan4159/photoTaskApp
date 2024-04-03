import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app_flutter/pages/cart_page.dart';

import 'package:shop_app_flutter/widgets/product_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentpage=0;

   List<Widget> pages= const [Productlist(),CartPage(),];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body : IndexedStack(
        index: currentpage,
        children: pages,
      ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 35,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          
          onTap: (value) {
            setState(() {
              currentpage=value;
            });
          },
          currentIndex: currentpage,
          items: const[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
               label:'',
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
               label:'',
              ),

          ],),
    );
  }
}