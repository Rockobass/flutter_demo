import 'package:fish_redux/fish_redux.dart';
import 'package:report_helper/model/report.dart';

class ReportListState implements Cloneable<ReportListState> {
  List<ReportOutline> reports;
  @override
  ReportListState clone() {
    return ReportListState()
      ..reports = reports;
  }
}

ReportListState initState(Map<String, dynamic> args) {
  return ReportListState();
}
