import 'package:flutter/material.dart';
import 'package:strike_shop/screens/menu.dart';
import 'package:strike_shop/screens/productlist_form.dart';
import 'package:strike_shop/screens/product_entry_list.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF111827),
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
            color: Colors.black,
            ),
            child: Column(
              children: [
                Text(
                  'Strike Shop',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Seluruh produk sepak bola terbaru ada di sini!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          
          ListTile(
            leading: const Icon(Icons.home_outlined, color: Colors.white),
            title: const Text(
              'Home',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),

          ListTile(
            leading: const Icon(Icons.post_add, color: Colors.white),
            title: const Text(
              'Add Products',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
             Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProductFormPage()),
              );
            },
          ),

          ListTile(
            leading: const Icon(Icons.add_reaction_rounded, color: Colors.white),
            title: const Text(
              'Product List',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProductEntryListPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}