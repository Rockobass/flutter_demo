import 'package:fish_redux/fish_redux.dart';
import 'package:report_helper/model/report.dart';

class SplashState implements Cloneable<SplashState> {
  List<ReportOutline> reports;

  @override
  SplashState clone() {
    return SplashState()
      ..reports = reports;
  }
}

SplashState initState(Map<String, dynamic> args) {
  return SplashState();
}
