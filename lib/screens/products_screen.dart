import 'package:flutter/material.dart';
import 'package:furniture/commons/reusable_button.dart';
import 'package:furniture/commons/reusable_counter.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen(
      {super.key,
      required this.image,
      required this.name,
      required this.price,
      required this.description});
  final String image;
  final String name;
  final double price;
  final String description;
  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: SizedBox(
                height: 420,
                width: 900,
                child: ClipRRect(
                  borderRadius:
                      const BorderRadius.only(bottomLeft: Radius.circular(60)),
                  child: Image.asset(
                    widget.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      widget.name,
                      style: const TextStyle(
                        color: Color(0xff303030),
                        fontFamily: 'Gelasio',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                        height: 1.26,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${widget.price}",
                      style: const TextStyle(
                        color: Color(0xff303030),
                        fontFamily: 'Gelasio',
                        fontSize: 28.0,
                        fontWeight: FontWeight.w700,
                        height: 1.26,
                        letterSpacing: 1.0,
                      ),
                    ),
                    ReusableCounter(
                      value: quantity,
                      onIncrementPressed: () {
                        setState(() {
                          quantity++;
                        });
                      },
                      onDecrementPressed: () {
                        setState(() {
                          if (quantity > 1) {
                            quantity--;
                          }
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset("assets/star.png"),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      "4.5",
                      style: TextStyle(
                        color: Color(0xff303030),
                        fontFamily: 'Gelasio',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                        height: 1.26,
                        letterSpacing: 1.0,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "(50 reviews)",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  widget.description,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 60.0,
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color(0xfff0f0f0),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Center(
                        child: IconButton(
                          icon: const Icon(Icons.bookmark),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: SizedBox(
                        width: 100,
                        height: 60,
                        child: ReusableButton(
                            buttonText: "Add To Cart",
                            onPressed: () {},
                            bgColor: Colors.black,
                            txtColor: Colors.white),
                      ),
                    )
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
