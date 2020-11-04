import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ToolComponent extends Component<ToolState> {
  ToolComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<ToolState>(
                adapter: null,
                slots: <String, Dependent<ToolState>>{
                }),);

}
