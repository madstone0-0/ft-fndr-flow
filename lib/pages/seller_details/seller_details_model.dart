import '/components/product_card_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'seller_details_widget.dart' show SellerDetailsWidget;
import 'package:flutter/material.dart';

class SellerDetailsModel extends FlutterFlowModel<SellerDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ProductCard component.
  late ProductCardModel productCardModel1;
  // Model for ProductCard component.
  late ProductCardModel productCardModel2;
  // Model for ProductCard component.
  late ProductCardModel productCardModel3;
  // Model for ProductCard component.
  late ProductCardModel productCardModel4;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {
    productCardModel1 = createModel(context, () => ProductCardModel());
    productCardModel2 = createModel(context, () => ProductCardModel());
    productCardModel3 = createModel(context, () => ProductCardModel());
    productCardModel4 = createModel(context, () => ProductCardModel());
  }

  @override
  void dispose() {
    productCardModel1.dispose();
    productCardModel2.dispose();
    productCardModel3.dispose();
    productCardModel4.dispose();
  }
}
