import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ToolAction { action }

class ToolActionCreator {
  static Action onAction() {
    return const Action(ToolAction.action);
  }
}
