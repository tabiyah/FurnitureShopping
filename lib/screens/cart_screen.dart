import 'package:flutter/material.dart';
import 'package:furniture/commons/reusable_button.dart';
import 'package:furniture/commons/reusable_counter.dart';

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
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                  ),
                ),
                const SizedBox(
                  width: 120,
                ),
                const Text(
                  "My Cart",
                  style: TextStyle(
                    color: Color(0xff303030),
                    fontFamily: 'Gelasio',
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    height: 1.26,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
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
      bottomNavigationBar: BottomAppBar(
          elevation: 0.0,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 70,
                    width: size.width,
                    child: ReusableButton(
                      buttonText: 'Add to cart',
                      onPressed: () {},
                      bgColor: const Color(0xff242424),
                      txtColor: const Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
