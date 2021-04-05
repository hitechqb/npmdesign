import 'package:flutter/material.dart';
import 'package:nmpdemo/widgets/home/balance.dart';
import 'package:nmpdemo/widgets/home/header.dart';
import 'package:nmpdemo/widgets/home/intro/slide.dart';
import 'package:nmpdemo/widgets/home/payment/payment_item.dart';

Widget desktopPage() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Header(),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.chevron_left_rounded,
                      size: 60,
                      color: Colors.black45,
                    ),
                    Expanded(child: IntroSlide()),
                    Icon(
                      Icons.chevron_right_rounded,
                      size: 60,
                      color: Colors.black45,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
      Expanded(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(24.0), child: BalanceAmount()),
            Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    PaymentItem(
                      title: "Xây lại mặt",
                      category: "Service",
                      iconData: Icons.face_retouching_natural,
                      amount: "-\VND 1.500.080",
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    PaymentItem(
                      title: "Bố Già Film",
                      category: "Media",
                      iconData: Icons.movie_creation_rounded,
                      amount: "-\VND 260.000",
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    PaymentItem(
                      title: "Lẩu gà lá é",
                      category: "Food",
                      iconData: Icons.no_food,
                      amount: "-\VND 250.000",
                    )
                  ],
                ))
          ],
        ),
      )),
    ],
  );
}
