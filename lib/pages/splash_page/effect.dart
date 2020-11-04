import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' as p;
import 'package:report_helper/model/report.dart';
import 'package:report_helper/pages/home_page/page.dart';
import 'package:report_helper/util/service.dart';
import 'action.dart';
import 'state.dart';

Effect<SplashState> buildEffect() {
  return combineEffects(<Object, Effect<SplashState>>{
    Lifecycle.initState: _init,
    SplashAction.onComplete: _onComplete,
  });
}

void _onComplete(Action action, Context<SplashState> ctx) {
  List<ReportOutline> empty = [];
  Map<String, dynamic> payload = {
    "reports": action.payload ?? empty,
    "index": 0,
  };
  p.Navigator.of(ctx.context).pushAndRemoveUntil(p.MaterialPageRoute(builder: (context) {
    return HomePage().buildPage(payload);
  }),(route) => route == null
  );
}

void _init(Action action, Context<SplashState> ctx) async{
  List<ReportOutline> reports =await Service.getReportList();
  ctx.dispatch(SplashActionCreator.onFetch(reports));
}

