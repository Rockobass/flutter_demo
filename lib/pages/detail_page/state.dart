import 'package:fish_redux/fish_redux.dart';
import 'package:report_helper/model/report.dart';

class ReportState implements Cloneable<ReportState> {
  Report report;
  @override
  ReportState clone() {
    return ReportState()
      ..report = report
    ;
  }
}

ReportState initState(Map<String, dynamic> args) {
  ReportState state = ReportState();
  state.report = args["report"];
  return state;
}
