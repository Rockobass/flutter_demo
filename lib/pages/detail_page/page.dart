import 'package:fish_redux/fish_redux.dart';
import 'package:report_helper/pages/detail_page/adapter.dart';
import 'package:report_helper/pages/detail_page/state.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ReportPage extends Page<ReportState, Map<String, dynamic>> {
  ReportPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<ReportState>(
                adapter: NoneConn<ReportState>() + ReportPageAdapter(),
                slots: <String, Dependent<ReportState>>{
                }),
            middleware: <Middleware<ReportState>>[
            ],);

}
