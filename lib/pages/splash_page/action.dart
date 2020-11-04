import 'package:fish_redux/fish_redux.dart';
import 'package:report_helper/model/report.dart';

//TODO replace with your own action
enum SplashAction {
  onComplete,
  onFetch,
}

class SplashActionCreator {
  static Action onComplete(List<ReportOutline> reports) {
    return Action(SplashAction.onComplete, payload: reports);
  }

  static Action onFetch(List<ReportOutline> reports){
    return Action(SplashAction.onFetch, payload: reports);
  }
}

