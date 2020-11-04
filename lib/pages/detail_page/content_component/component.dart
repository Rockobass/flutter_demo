import 'package:cached_network_image/cached_network_image.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

class ContentComponent extends Component<List<String>>{
  ContentComponent(): super(
    view: buildView,
  );
}

Widget buildView(List<String> state, dispatch, ViewService viewService){
  return Container(
    child: Card(
      child: Column(
        children: <Widget>[
          Text("实验内容", style: TextStyle(
            fontSize: 19.0,fontWeight: FontWeight.bold
          ),),
          ListView.builder(
            itemBuilder: (context,index){
            return CachedNetworkImage(imageUrl: state[index],placeholder: null,);////////
            },
            itemCount: state.length,)
        ],
      ),
    ),
  );
}