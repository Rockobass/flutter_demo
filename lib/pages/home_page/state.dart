import 'package:fish_redux/fish_redux.dart';
import 'package:report_helper/model/report.dart';
import 'package:report_helper/pages/home_page/report_list_component/state.dart';

class HomePageState implements Cloneable<HomePageState> {
  int currentIndex;
  List<ReportOutline> reports;
  //
  final List<String> pages = [
    "report_list",
    "report_list",
  ];

  @override
  HomePageState clone() {
    return HomePageState()
      ..currentIndex = currentIndex
      ..reports = reports;
  }
}

HomePageState initState(Map<String, dynamic> args) {
  HomePageState state = HomePageState();
  state.reports = args["reports"];
  state.currentIndex = args["index"];
  return state;
}

class ReportListConnector extends ConnOp<HomePageState, ReportListState>{
  @override
  ReportListState get(HomePageState state){
    ReportListState subState = ReportListState();
    subState.reports = state.reports;
    return subState;
  }

  @override
  void set(HomePageState state, ReportListState subState){}
}