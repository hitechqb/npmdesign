import 'package:flutter/material.dart';
import 'package:nmpdemo/widgets/home/intro/circle/slide_circel_shadow.dart';
import 'package:nmpdemo/widgets/home/intro/circle/slide_circle_highlight.dart';

class SlideCircle extends StatelessWidget {
  final bool innerShadow;
  final bool outerShadow;
  final Color highlightColor;
  final Color shadowColor;
  final Color backgroundColor;
  final Widget child;

  const SlideCircle(
      {Key key,
      @required this.innerShadow,
      @required this.outerShadow,
      @required this.highlightColor,
      @required this.shadowColor,
      @required this.backgroundColor,
      this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
          decoration: BoxDecoration(
              color: backgroundColor,
              shape: BoxShape.circle,
              boxShadow: (outerShadow)
                  ? [
                      BoxShadow(
                          color: highlightColor,
                          offset: Offset(-10, -10),
                          blurRadius: 20,
                          spreadRadius: 0),
                      BoxShadow(
                          color: shadowColor,
                          offset: Offset(10, 10),
                          blurRadius: 20,
                          spreadRadius: 0)
                    ]
                  : null)),
      (innerShadow)
          ? ClipPath(
              clipper: HighlightClipper(),
              child: SlideCircleHighlight(
                highlightColor: highlightColor,
                backgroundColor: backgroundColor,
              ))
          : SizedBox.shrink(),
      (innerShadow)
          ? ClipPath(
              clipper: ShadowClipper(),
              child: SlideCircleShadow(
                shadowColor: shadowColor,
                backgroundColor: backgroundColor,
              ),
            )
          : SizedBox.shrink(),
      (child != null) ? child : SizedBox.shrink()
    ]);
  }
}

class HighlightClipper extends CustomClipper<Path> {
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }
}
