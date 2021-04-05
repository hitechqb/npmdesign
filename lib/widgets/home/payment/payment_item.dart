import 'package:flutter/material.dart';
import 'package:nmpdemo/helpers/constants.dart';
import 'package:nmpdemo/widgets/home/intro/circle/slide_circle.dart';

class PaymentItem extends StatelessWidget {
  final String title;
  final String category;
  final IconData iconData;
  final String amount;

  const PaymentItem(
      {Key key,
      @required this.title,
      this.category,
      @required this.iconData,
      @required this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Constants.backgroundColor,
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
          ]),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              child: SlideCircle(
                innerShadow: false,
                outerShadow: true,
                backgroundColor: Constants.backgroundColor,
                shadowColor: Constants.softShadowColor,
                highlightColor: Constants.highlightColor,
                child: Icon(
                  iconData,
                  size: 28,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 4,
                ),
                (category == null)
                    ? SizedBox.shrink()
                    : Text(category,
                        style: TextStyle(
                            color: Colors.yellow.shade200.withOpacity(0.7),
                            fontSize: 16,
                            fontWeight: FontWeight.w600))
              ],
            )),
            Text(amount,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600))
          ],
        ),
      ),
    );
  }
}
