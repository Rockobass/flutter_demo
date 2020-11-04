import 'package:fish_redux/fish_redux.dart';
import 'package:report_helper/pages/home_page/report_list_component/component.dart';
import 'package:report_helper/pages/home_page/state.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class HomePage extends Page<HomePageState, Map<String, dynamic>> {
  HomePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<HomePageState>(
                adapter: null,
                slots: <String, Dependent<HomePageState>>{
                  "report_list": ReportListConnector()+ReportListComponent(),
                }),
);

}
