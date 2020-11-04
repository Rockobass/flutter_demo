import 'package:cached_network_image/cached_network_image.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PurposeComponent extends Component<String>{
  PurposeComponent(): super(
    view: buildView,
  );
}

Widget buildView(String state, dispatch, ViewService viewService){
  return Card(
    margin: EdgeInsets.only(bottom: 12),
    child: Column(
      children: <Widget>[
        Text(
          "实验目的",
          style: TextStyle(fontSize: 19.0,
            fontWeight: FontWeight.bold,),
          textAlign: TextAlign.right,
        ),
        Container(
          height: 4,
        ),
        Text(
          state,
          style: TextStyle(fontSize: 14),
          textAlign: TextAlign.right,
        )
      ],
    ),
  );
}