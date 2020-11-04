import 'package:fish_redux/fish_redux.dart';
import 'package:report_helper/pages/home_page/report_list_component/adapter.dart';

import 'effect.dart';
import 'state.dart';
import 'view.dart';

class ReportListComponent extends Component<ReportListState> {
  ReportListComponent()
      : super(
            view: buildView,
            effect: buildEffect(),
            dependencies: Dependencies<ReportListState>(
                adapter: NoneConn<ReportListState>() + ReportListAdapter(),
                slots: <String, Dependent<ReportListState>>{}),
  );
}
