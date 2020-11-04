import 'package:fish_redux/fish_redux.dart';
import 'package:report_helper/pages/detail_page/content_component/component.dart';
import 'package:report_helper/pages/detail_page/instruments_component/dart/component.dart';
import 'package:report_helper/pages/detail_page/purpose_component/component.dart';
import 'package:report_helper/pages/detail_page/state.dart';

class ReportPageAdapter extends DynamicFlowAdapter<ReportState>{
  ReportPageAdapter(): super(
    pool: <String, Component<Object>>{
      "purpose": PurposeComponent(),
      "instruments": InstrumentsComponent(),
      "contents": ContentComponent(),

    },
    connector: ReportConnector()
  );
}

class ReportConnector extends ConnOp<ReportState, List<ItemBean>>{
  List<ItemBean> get(ReportState state){
    List<ItemBean> items = [];
    items.add(ItemBean("purpose", state.report.purpose));
    items.add(ItemBean("instruments", state.report.instruments));
    items.add(ItemBean("contents", state.report.content));
//    items.add(ItemBean("steps", state.report.steps));
//    items.add(ItemBean("raw_statics", state.report.rawStatics));
//    items.add(ItemBean("process", state.report.process));
//    items.add(ItemBean("discussion", state.report.discussion));
//    items.add(ItemBean("description", state.report.descriptions));
    return items;
  }
}