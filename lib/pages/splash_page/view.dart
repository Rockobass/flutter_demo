import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:report_helper/pages/splash_page/action.dart';
import 'package:report_helper/pages/splash_page/skip_down_time_progress.dart';
import 'state.dart';

Widget buildView(SplashState state, Dispatch dispatch, ViewService viewService) {
  return Stack(
    children: <Widget>[
      ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Image.asset('images/angry.gif',fit: BoxFit.fitWidth,),
      ),
      Positioned(
        child: SkipDownTimeProgress(
            color: Colors.amber,
            radius: 22.0,
            duration: Duration(seconds: 4),
            size: Size(25.0, 25.0),
            skipText: "跳过",
            onTap: () => dispatch(SplashActionCreator.onComplete(state.reports)),
            onFinishCallBack: (bool value) {
              if (value) dispatch(SplashActionCreator.onComplete(state.reports));
            }
            ),
          top: 30,
          right: 30
      )
    ],
  );
}
