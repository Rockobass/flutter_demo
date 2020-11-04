import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<ToolState> buildEffect() {
  return combineEffects(<Object, Effect<ToolState>>{
    ToolAction.action: _onAction,
  });
}

void _onAction(Action action, Context<ToolState> ctx) {
}
