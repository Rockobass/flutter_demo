import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:report_helper/util/gradual_change_view.dart';
import 'state.dart';

Widget buildView(ReportState state, Dispatch dispatch, ViewService viewService) {
  ListAdapter adapter = viewService.buildAdapter();
  return Scaffold(
    appBar: AppBar(
      primary: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(state.report.title),
          ),
        ],
      ),
      toolbarOpacity: 1.0,
      flexibleSpace: GradualChangeView(
        rotation: Rotation.LR,
        colors: [Colors.amber,Colors.orangeAccent,Colors.orange],
      ),
    ),
    body: ListView.builder(itemBuilder: adapter.itemBuilder, itemCount: adapter.itemCount,),
  );
}
