import '/components/filter_chip_widget.dart';
import '/components/result_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'results_widget.dart' show ResultsWidget;
import 'package:flutter/material.dart';

class ResultsModel extends FlutterFlowModel<ResultsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for FilterChip component.
  late FilterChipModel filterChipModel1;
  // Model for FilterChip component.
  late FilterChipModel filterChipModel2;
  // Model for ResultCard component.
  late ResultCardModel resultCardModel1;
  // Model for ResultCard component.
  late ResultCardModel resultCardModel2;
  // Model for ResultCard component.
  late ResultCardModel resultCardModel3;
  // Model for ResultCard component.
  late ResultCardModel resultCardModel4;

  @override
  void initState(BuildContext context) {
    filterChipModel1 = createModel(context, () => FilterChipModel());
    filterChipModel2 = createModel(context, () => FilterChipModel());
    resultCardModel1 = createModel(context, () => ResultCardModel());
    resultCardModel2 = createModel(context, () => ResultCardModel());
    resultCardModel3 = createModel(context, () => ResultCardModel());
    resultCardModel4 = createModel(context, () => ResultCardModel());
  }

  @override
  void dispose() {
    filterChipModel1.dispose();
    filterChipModel2.dispose();
    resultCardModel1.dispose();
    resultCardModel2.dispose();
    resultCardModel3.dispose();
    resultCardModel4.dispose();
  }
}
