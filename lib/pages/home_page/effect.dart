import 'package:fish_redux/fish_redux.dart';
import 'package:report_helper/util/service.dart';
import 'action.dart';
import 'state.dart';

Effect<HomePageState> buildEffect() {
  return combineEffects(<Object, Effect<HomePageState>>{

  });
}

void _onFetch(Action action, Context<HomePageState> ctx) async {
  Service.getReportList().then((reports) {
    ctx.dispatch(HomePageActionCreator.didLoadAction(reports));
  });
}
