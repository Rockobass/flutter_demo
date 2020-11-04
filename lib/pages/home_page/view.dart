import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:report_helper/pages/home_page/action.dart';
import 'state.dart';

Widget buildView(HomePageState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: viewService.buildComponent(state.pages[state.currentIndex]),
    bottomNavigationBar: BubbleBottomBar(
      opacity: 0.2,
      currentIndex: state.currentIndex,
      onTap: (index) => dispatch(HomePageActionCreator.onTabChange(index)),
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      elevation: 8,
      items: <BubbleBottomBarItem>[
        BubbleBottomBarItem(
          backgroundColor: Colors.deepPurple,
          icon: Icon(
            Icons.map,
            color: Colors.black,
          ),
          activeIcon: Icon(
            Icons.map,
            color: Colors.deepPurple,
          ),
          title: Text('Repo')
        ),
        BubbleBottomBarItem(
          backgroundColor: Colors.green,
          icon: Icon(
            Icons.text_fields,
            color: Colors.black,
          ),
          activeIcon: Icon(
            Icons.text_fields,
            color: Colors.green,
          ),
          title: Text('Tool')
        )
      ],
    ),
  );
}
