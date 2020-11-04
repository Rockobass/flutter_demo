import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ReportListAction {
  onSelected
}

class ReportListActionCreator {
  static Action onSelected(int id) {
    return Action(ReportListAction.onSelected, payload: id);
  }
}
