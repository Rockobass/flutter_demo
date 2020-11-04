import 'package:fish_redux/fish_redux.dart';
import 'package:report_helper/model/report.dart';

//TODO replace with your own action
enum HomePageAction {
  onTabChange,
  onFetch,
  didLoad,
}

class HomePageActionCreator {

  static Action didLoadAction(List<ReportOutline> reports) {
    return Action(HomePageAction.didLoad, payload: reports);
  }

  static Action onFetchAction() {
    return Action(HomePageAction.onFetch);
  }

  static Action onTabChange(int index) {
    return Action(HomePageAction.onTabChange, payload: index);
  }
}
