import 'package:flutter/material.dart';
import 'package:furniture/commons/reusable_appbar.dart';
import 'package:furniture/commons/reusable_checkout_container.dart';
import 'package:furniture/commons/reusable_checkout_row.dart';
import 'package:furniture/commons/reusable_container2.dart';
import 'package:furniture/commons/reusable_row.dart';
import 'package:furniture/commons/reuasabel_bottom_button.dart';
import 'package:furniture/commons/reusable_button.dart';
import 'package:furniture/screens/congrats_screen.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
          child: Column(children: [
            const ReusableAppBar(
              title: "Checkout",
            ),
            const ReusableCheckoutRow(title: "Shipping Address"),
            ReusableContainer2(
                column: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("Brunu Fernandus",
                      style: Theme.of(context).textTheme.bodyLarge),
                ),
                Container(
                  width: size.width,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xffF0F0F0),
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "25 rue Robert Latouche, Nice, 06200, Côte D’azur, France",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                )
              ],
            )),
            const ReusableCheckoutRow(title: "Payment"),
            const ReusableCheckoutContainer(
                image: "assets/mastercard.png", text: "**** **** **** 3495"),
            const ReusableCheckoutRow(title: "Delivery Method"),
            const ReusableCheckoutContainer(
                image: "assets/dhl.png", text: "Fast (2-3days)"),
            const ReusableContainer2(
                column: Column(
              children: [
                ReusableRow(price: "\$ 95.00", text: "Order"),
                ReusableRow(price: "\$ 05.00", text: "Delivery"),
                ReusableRow(price: "\$ 100.00", text: "Total"),
              ],
            ))
          ]),
        ),
      ),
      bottomNavigationBar: ReusableBottomButton(
          bottomButton: ReusableButton(
              buttonText: "Submit Order",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CongratsScreen()));
              },
              bgColor: Colors.black,
              txtColor: Colors.white)),
    );
  }
}
