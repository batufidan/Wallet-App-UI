import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;

  const MyCard({
    Key? key,
    required this.balance,
    required this.cardNumber,
    required this.color,
    required this.expiryMonth,
    required this.expiryYear,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Balance',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      'lib/icons/visa.png',
                      height: 50,
                    ),
                  ],
                ),
              ],
            ),
            Text(
              '\$' + balance.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardNumber.toString(),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  expiryMonth.toString() + '/' + expiryYear.toString(),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
