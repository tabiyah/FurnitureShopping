import 'package:flutter/material.dart';
import 'package:furniture/models/items_list.dart';
import 'package:furniture/models/grid_items_list.dart';

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
      body: SingleChildScrollView(
        child: Column(
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
                    color: Colors.grey,
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
                        child: Center(child: Image.asset(items[index].image)),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        items[index].name,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(width: 16.0),
                itemCount: items.length,
              ),
            ),
            const Divider(height: 1, color: Colors.white), // Add a divider
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns in the grid
              ),
              itemBuilder: (context, index) {
                final item = gitems[index];

                return Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.network(
                          item.image,
                          width: 150.0,
                          height: 150.0,
                          fit: BoxFit.cover,
                        ),
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
                );
              },
              itemCount: gitems.length,
            ),
          ],
        ),
      ),
    );
  }
}
