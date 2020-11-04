import 'package:fish_redux/fish_redux.dart';
import 'package:report_helper/pages/splash_page//reducer.dart';

import 'effect.dart';
import 'state.dart';
import 'view.dart';

class SplashPage extends Page<SplashState, Map<String, dynamic>> {
  SplashPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            view: buildView,
            reducer: buildReducer(),
            dependencies: Dependencies<SplashState>(
                adapter: null,
                slots: <String, Dependent<SplashState>>{
                }),
            middleware: <Middleware<SplashState>>[
            ],);

}
