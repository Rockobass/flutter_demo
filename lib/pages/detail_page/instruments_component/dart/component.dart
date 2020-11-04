import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

class InstrumentsComponent extends Component<String>{
  InstrumentsComponent(): super(
    view:buildView,
  );
}

Widget buildView(String state, dispatch, ViewService viewService){
  return Card(
    child: Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            Text("实验仪器",style: TextStyle(
              fontSize: 19.0, fontWeight: FontWeight.bold
            ),),
            Text(state,style: TextStyle(
              fontSize: 19.0, fontWeight: FontWeight.bold
            ),)
          ],
        ),
      ],
    )
  );
}