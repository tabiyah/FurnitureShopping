import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<IconData> icons = [
    Icons.star,
    Icons.favorite,
    Icons.check_circle,
    Icons.person,
    Icons.settings,
    // Add more icons to the list as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 40),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 24.0,
                  height: 24.0,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(2.0, 1.69, 2.0, 1.69),
                    child: Positioned(
                      top: 62.0,
                      left: 20.0,
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 34.0,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text("Make Home",
                        style: Theme.of(context).textTheme.headline1),
                    Text(
                      "Beautiful",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 24.0,
                  height: 24.0,
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0, 1.69, 2.0, 1.69),
                    child: Positioned(
                      top: 62.0,
                      left: 20.0,
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.grey,
                        size: 34.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: icons.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 100.0, // Adjust the container's width as needed
                      margin:
                          EdgeInsets.all(8.0), // Add spacing between containers
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Icon(
                          icons[index], // Use the icon from the list
                          size: 48.0, // Adjust the icon size as needed
                          color: Colors.white, // Customize the icon color
                        ),
                      ),
                    );
                  },
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
