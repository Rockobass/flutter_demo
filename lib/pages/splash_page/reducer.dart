import 'package:fish_redux/fish_redux.dart';
import 'package:report_helper/pages/splash_page/action.dart';
import 'package:report_helper/pages/splash_page/state.dart';

Reducer<SplashState> buildReducer() {
  return asReducer(
    <Object, Reducer<SplashState>>{
      SplashAction.onFetch: _onFetch,
    }
  );
}

SplashState _onFetch(SplashState state, Action action){
  SplashState newState = state.clone();
  newState.reports = action.payload;
  return newState;
}