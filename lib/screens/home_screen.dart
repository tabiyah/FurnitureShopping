import 'package:flutter/material.dart';
import 'package:furniture/models/items_list.dart';
import 'package:furniture/models/grid_items_list.dart';
import 'package:furniture/screens/products_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 34.0,
                ),
                Column(
                  children: [
                    Text(
                      "Make Home",
                      style: TextStyle(
                        color: Color(0xff606060),
                        fontFamily: 'Gelasio',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        height: 1.25,
                        letterSpacing: 1.0,
                      ),
                    ),
                    Text(
                      "Beautiful",
                      style: TextStyle(
                        color: Color(0xff303030),
                        fontFamily: 'Gelasio',
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                        height: 1.26,
                        letterSpacing: 1.0,
                      ),
                    )
                  ],
                ),
                Icon(
                  Icons.shopping_cart,
                  size: 34.0,
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 100,
            width: size.width,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      width: 50.0,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xfff5f5f5),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.white),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child:
                          Center(child: Image.asset(categories[index].image)),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      categories[index].name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 16.0),
              itemCount: categories.length,
            ),
          ),
          const Divider(height: 1, color: Colors.white),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 300),
              itemBuilder: (context, index) {
                final item = furniture[index];

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductsScreen(
                                image: item.image,
                                name: item.name,
                                price: item.price,
                                description: item.description)));
                  },
                  child: Container(
                    margin: const EdgeInsets.all(1.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          item.image,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          item.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '\$${item.price.toStringAsFixed(2)}',
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: furniture.length,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFFFFFFFF),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
              ),
            ),
            IconButton(
              icon: const Icon(Icons.bookmark),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
            ),
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
            ),
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
