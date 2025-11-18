import 'package:flutter/material.dart';
import 'package:strike_shop/widgets/left_drawer.dart';
import 'package:strike_shop/widgets/product_card.dart';

class MyHomePage extends StatelessWidget {
    MyHomePage({super.key});

    final String nama = "Angga Tri Setiawan";
    final String npm = "2406350614";
    final String kelas = "F";

    final List<ItemHomepage> items = [
      ItemHomepage("All Products", Icons.store, Colors.blue),
      ItemHomepage("My Products", Icons.archive, Colors.green),
      ItemHomepage("Create Product", Icons.add, Colors.red),
      ItemHomepage("Logout", Icons.logout, Colors.black),
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Strike Shop',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
             backgroundColor: Colors.black,
          ),
          drawer: LeftDrawer(),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InfoCard(title: 'NPM', content: npm),
                    InfoCard(title: 'Name', content: nama),
                    InfoCard(title: 'Class', content: kelas),
                  ],
                ),
            const SizedBox(height: 16.0),
            Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Selamat datang di Strike Shop',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.white, 
                      ),
                    ),
                  ),
                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 4,
                    shrinkWrap: true,
                    children: items.map((ItemHomepage item) {
                        return ItemCard(item);
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

class InfoCard extends StatelessWidget {
  final String title;  
  final String content;  

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF4B5563), 
      elevation: 2.0,
      child: Container(
        width: MediaQuery.of(context).size.width / 3.5, 
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white, 
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              content,
              style: const TextStyle(
                color: Colors.white, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemHomepage {
 final String name;
 final IconData icon;
 final Color color;

 ItemHomepage(this.name, this.icon, this.color);
}