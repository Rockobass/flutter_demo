import 'package:avatar_glow/avatar_glow.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:report_helper/util/gradual_change_view.dart';
import 'package:shimmer/shimmer.dart';
import 'state.dart';

Widget buildView(ReportListState state, Dispatch dispatch, ViewService viewService) {
  final ListAdapter listAdapter = viewService.buildAdapter();
  return Container(
    child: Scaffold(
      appBar: AppBar(
        primary: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            AvatarGlow(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/straightfo.jpg'),
              ),
              endRadius: 24.0,
              glowColor: Color.fromARGB(255, 255, 215, 255),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text('Report Helper'),
            ),
          ],
        ),
        toolbarOpacity: 1.0,
        flexibleSpace: GradualChangeView(
          rotation: Rotation.LR,
          colors: [Colors.amber,Colors.orangeAccent,Colors.orange],
        ),
      ),
      body: Container(
        child: state.reports.length > 0 ?ListView.builder(
          itemBuilder: listAdapter.itemBuilder,
          itemCount: listAdapter.itemCount,
        ):ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          children: [0, 1, 2, 3, 4, 5, 6, 7]
              .map(
                (_) => Shimmer.fromColors(
              baseColor: Colors.grey[300],
              highlightColor: Colors.grey[100],
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 58.0,
                      height: 58.0,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 8.0,
                            color: Colors.white,
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(vertical: 2.0),
                          ),
                          Container(
                            width: double.infinity,
                            height: 8.0,
                            color: Colors.white,
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(vertical: 2.0),
                          ),
                          Container(
                            width: 40.0,
                            height: 8.0,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ).toList(),
        )
      ),
    ),
  );
}
