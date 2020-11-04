import 'package:fish_redux/fish_redux.dart';
import 'package:report_helper/pages/home_page/report_list_component/state.dart';
import 'package:report_helper/pages/home_page/report_list_component/title_tile_component/component.dart';

class ReportListAdapter extends DynamicFlowAdapter<ReportListState>{
  ReportListAdapter(): super(
    pool: <String, Component<Object>>{
      "tile": TitleTileComponent(),
    },
    connector: ReportListConnector()
  );
}

class ReportListConnector extends ConnOp<ReportListState, List<ItemBean>> {
  @override
  List<ItemBean> get(ReportListState state){
    return state.reports.map((report) => ItemBean("tile", report)).toList();
  }
}