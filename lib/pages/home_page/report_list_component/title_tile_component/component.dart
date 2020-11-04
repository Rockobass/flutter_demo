import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:report_helper/model/report.dart';
import 'package:report_helper/pages/home_page/report_list_component/action.dart';

class TitleTileComponent extends Component<ReportOutline>{
  TitleTileComponent(): super(
    view: buildView
  );
}

Widget buildView(ReportOutline state, dispatch, ViewService viewService){
  return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(state.section+state.title, style: TextStyle(fontSize: 17.0),),
          IconButton(
            icon: Icon(Icons.chevron_right),
            onPressed: () => dispatch(ReportListActionCreator.onSelected(state.id)),
          )
        ],
      ),
  );
}
