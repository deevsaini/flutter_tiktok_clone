import 'package:flutter/material.dart';
import 'package:deevstiktok/Routes/routes.dart';
import 'package:deevstiktok/Theme/colors.dart';
import 'package:deevstiktok/Components/redeem_product.dart';

class RedeemCoins extends StatelessWidget {
  const RedeemCoins({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Your Coin Balance",
              style: theme.textTheme.headline6!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: 120,
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: secondaryColor.withOpacity(0.6),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/coin.png',
                  scale: 1.4,
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  "750",
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      topLeft: Radius.circular(12))),
              child: ListView(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Redeem Coin Offers",
                        style: theme.textTheme.headline6!.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, PageRoutes.redeemHistory);
                        },
                        child: Text(
                          "History",
                          style: theme.textTheme.headline6!.copyWith(
                            color: theme.primaryColor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  RedeemProduct(false),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
