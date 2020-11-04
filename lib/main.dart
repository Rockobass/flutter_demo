import 'package:flutter/material.dart';
import 'package:report_helper/pages/splash_page/page.dart';

void main() => runApp(ReportHelper());


class ReportHelper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          brightness: Brightness.light
      ),
      home: SplashPage().buildPage(null),
    );
  }
}
