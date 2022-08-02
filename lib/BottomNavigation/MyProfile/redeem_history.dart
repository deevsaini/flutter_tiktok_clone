import 'package:flutter/material.dart';
import 'package:deevstiktok/Components/redeem_product.dart';
import 'package:deevstiktok/Theme/colors.dart';

class RedeemHistory extends StatelessWidget {
  const RedeemHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Redeem History",
            style: theme.textTheme.headline6,
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12), topLeft: Radius.circular(12))),
          child: SingleChildScrollView(child: RedeemProduct(true)),
        ));
  }
}
