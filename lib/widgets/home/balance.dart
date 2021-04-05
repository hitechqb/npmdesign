import 'package:flutter/material.dart';
import 'package:nmpdemo/helpers/constants.dart';

class BalanceAmount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            "18.000 VND",
            style: TextStyle(
                color: Colors.white, fontSize: 28, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                    color: Constants.softHighlightColor,
                    offset: Offset(-10, -10),
                    spreadRadius: 0,
                    blurRadius: 10),
                BoxShadow(
                    color: Constants.softShadowColor,
                    offset: Offset(10, 10),
                    spreadRadius: 0,
                    blurRadius: 10)
              ],
              gradient: LinearGradient(colors: [
                Constants.balanceGradientStart,
                Constants.balanceGradientMiddle,
                Constants.balanceGradientEnd
              ])),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
            child: Text(
              "Balance",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  shadows: [Shadow(color: Colors.black45, blurRadius: 1)],
                  fontWeight: FontWeight.w600),
            ),
          ),
        )
      ],
    );
  }
}
