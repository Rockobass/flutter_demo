import 'package:fish_redux/fish_redux.dart';

class ToolState implements Cloneable<ToolState> {

  @override
  ToolState clone() {
    return ToolState();
  }
}

ToolState initState(Map<String, dynamic> args) {
  return ToolState();
}
