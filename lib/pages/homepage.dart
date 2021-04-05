import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nmpdemo/helpers/constants.dart';
import 'package:nmpdemo/pages/platform/desktop.dart';
import 'package:nmpdemo/pages/platform/mobile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// logic first
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  ///

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Constants.backgroundColor,
        body: SafeArea(
          child: (isMobile(context) ? mobilePage() : desktopPage()),
        ),
      ),
    );
  }
}
