import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' as p;
import 'package:report_helper/model/report.dart';
import 'package:report_helper/pages/detail_page/page.dart';
import 'package:report_helper/util/service.dart';
import 'action.dart';
import 'state.dart';

Effect<ReportListState> buildEffect() {
  return combineEffects(<Object, Effect<ReportListState>>{
    ReportListAction.onSelected: _onSelected,
  });
}

void _onSelected(Action action, Context<ReportListState> ctx) async{
  int id =action.payload;
  Report report = await Service.getReport(id);
  Map<String, dynamic> payload = {
    "report": report,
  };
  p.Navigator.of(ctx.context).push(p.MaterialPageRoute(builder: (context) {
    return ReportPage().buildPage(payload);
  }));
}
