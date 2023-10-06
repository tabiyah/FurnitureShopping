import 'package:flutter/material.dart';
import 'package:furniture/commons/reuasabel_bottom_button.dart';
import 'package:furniture/commons/reusable_appbar.dart';
import 'package:furniture/commons/reusable_button.dart';
import 'package:furniture/commons/reusable_counter.dart';
import 'package:furniture/screens/checkout_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({
    super.key,
    required this.image,
    required this.name,
    required this.totalPrice,
    required this.quantity,
    required this.actualPrice,
  });

  final String? image;
  final String? name;
  final double? totalPrice;
  final int quantity;
  final double actualPrice;
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int currentQuantity = 0;
  double? currentPrice;
  bool widgetVisible = true;
  @override
  void initState() {
    super.initState();
    currentQuantity = widget.quantity;
    currentPrice = widget.totalPrice;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
        child: Column(
          children: [
            const ReusableAppBar(title: "My Cart"),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xffF0F0F0),
                    width: 1.0,
                  ),
                ),
              ),
              child: Visibility(
                visible: widgetVisible,
                child: Row(
                  children: [
                    SizedBox(
                      height: 120,
                      width: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image(
                          image: AssetImage(widget.image!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 18),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.name!,
                          style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          "\$${currentPrice?.toStringAsFixed(2)}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        ReusableCounter(
                          value: currentQuantity,
                          onIncrementPressed: () {
                            setState(() {
                              currentQuantity++;
                              currentPrice =
                                  widget.actualPrice * currentQuantity;
                            });
                          },
                          onDecrementPressed: () {
                            setState(() {
                              if (currentQuantity > 1) {
                                currentQuantity--;
                                currentPrice =
                                    widget.actualPrice * currentQuantity;
                              }
                            });
                          },
                        ),
                      ],
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              widgetVisible = false;
                            });
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 2.0,
                              ),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.close,
                                size: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 150,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ReusableBottomButton(
          bottomButton: ReusableButton(
              buttonText: "CheckOut",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CheckoutScreen()));
              },
              bgColor: Colors.black,
              txtColor: Colors.white)),
    );
  }
}
