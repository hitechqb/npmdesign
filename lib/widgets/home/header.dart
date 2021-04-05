import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "April, 2021",
                style: TextStyle(color: Colors.white24, fontSize: 18),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "Luu Duc Hoang",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          width: 80,
          height: 80,
          clipBehavior: Clip.antiAlias,
          child: Image.network(
              "https://revive.run/static/logo-d46261a11b8c01574d67e461c96e1527.png"),
        )
      ],
    );
  }
}
