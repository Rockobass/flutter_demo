import 'package:fish_redux/fish_redux.dart';
import 'package:report_helper/model/report.dart';

import 'action.dart';
import 'state.dart';

Reducer<HomePageState> buildReducer() {
  return asReducer(
    <Object, Reducer<HomePageState>>{
      HomePageAction.didLoad: loadReports,
      HomePageAction.onTabChange: tabChange
    },
  );
}

HomePageState loadReports(HomePageState state, Action action) {
  HomePageState newState = state.clone();
  List<ReportOutline> reports = action.payload;
  newState.reports = reports;
  return newState;
}

HomePageState tabChange(HomePageState state, Action action) {
  HomePageState newState = state.clone();
  newState.currentIndex = action.payload;
  return newState;
}
