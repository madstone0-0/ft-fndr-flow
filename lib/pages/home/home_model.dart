import '/components/recent_search_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for RecentSearchCard component.
  late RecentSearchCardModel recentSearchCardModel1;
  // Model for RecentSearchCard component.
  late RecentSearchCardModel recentSearchCardModel2;
  // Model for RecentSearchCard component.
  late RecentSearchCardModel recentSearchCardModel3;
  // Model for RecentSearchCard component.
  late RecentSearchCardModel recentSearchCardModel4;

  @override
  void initState(BuildContext context) {
    recentSearchCardModel1 =
        createModel(context, () => RecentSearchCardModel());
    recentSearchCardModel2 =
        createModel(context, () => RecentSearchCardModel());
    recentSearchCardModel3 =
        createModel(context, () => RecentSearchCardModel());
    recentSearchCardModel4 =
        createModel(context, () => RecentSearchCardModel());
  }

  @override
  void dispose() {
    recentSearchCardModel1.dispose();
    recentSearchCardModel2.dispose();
    recentSearchCardModel3.dispose();
    recentSearchCardModel4.dispose();
  }
}
