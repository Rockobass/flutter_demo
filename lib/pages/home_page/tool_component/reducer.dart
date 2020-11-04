import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ToolState> buildReducer() {
  return asReducer(
    <Object, Reducer<ToolState>>{
      ToolAction.action: _onAction,
    },
  );
}

ToolState _onAction(ToolState state, Action action) {
  final ToolState newState = state.clone();
  return newState;
}
