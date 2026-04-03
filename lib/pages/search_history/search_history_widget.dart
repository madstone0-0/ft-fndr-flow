import '/components/history_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'search_history_model.dart';
export 'search_history_model.dart';

class SearchHistoryWidget extends StatefulWidget {
  const SearchHistoryWidget({super.key});

  static String routeName = 'SearchHistory';
  static String routePath = '/searchHistory';

  @override
  State<SearchHistoryWidget> createState() => _SearchHistoryWidgetState();
}

class _SearchHistoryWidgetState extends State<SearchHistoryWidget> {
  late SearchHistoryModel _model;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchHistoryModel());

    _model.textController ??= TextEditingController(text: '');
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                  FlutterFlowTheme.of(context).designToken.spacing.lg,
                  FlutterFlowTheme.of(context).designToken.spacing.md,
                  FlutterFlowTheme.of(context).designToken.spacing.lg,
                  FlutterFlowTheme.of(context).designToken.spacing.md),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                        'Search History',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              font: GoogleFonts.playfairDisplay(
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 28.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .fontStyle,
                              lineHeight: 1.25,
                            ),
                      ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(
                          FlutterFlowTheme.of(context).designToken.radius.sm),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          Container(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  FlutterFlowTheme.of(context)
                                      .designToken
                                      .spacing
                                      .md,
                                  FlutterFlowTheme.of(context)
                                      .designToken
                                      .spacing
                                      .xs,
                                  FlutterFlowTheme.of(context)
                                      .designToken
                                      .spacing
                                      .md,
                                  FlutterFlowTheme.of(context)
                                      .designToken
                                      .spacing
                                      .xs),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 0.0,
                                    height: 0.0,
                                  ),
                                  Text(
                                    'Clear All',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.outfit(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                          lineHeight: 1.38,
                                        ),
                                  ),
                                  Container(
                                    width: 0.0,
                                    height: 0.0,
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                            ),
                          ),
                          Container(
                            width: 0.0,
                            height: 0.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                  FlutterFlowTheme.of(context).designToken.spacing.lg,
                  FlutterFlowTheme.of(context).designToken.spacing.md,
                  FlutterFlowTheme.of(context).designToken.spacing.lg,
                  FlutterFlowTheme.of(context).designToken.spacing.md),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      width: 0.0,
                      height: 0.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(
                            FlutterFlowTheme.of(context).designToken.radius.sm),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).outline,
                          width: 1.0,
                        ),
                      ),
                      child: Container(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              FlutterFlowTheme.of(context)
                                  .designToken
                                  .spacing
                                  .sm,
                              FlutterFlowTheme.of(context)
                                  .designToken
                                  .spacing
                                  .sm,
                              FlutterFlowTheme.of(context)
                                  .designToken
                                  .spacing
                                  .sm,
                              FlutterFlowTheme.of(context)
                                  .designToken
                                  .spacing
                                  .sm),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.search_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 16.0,
                              ),
                              Expanded(
                                flex: 1,
                                child: TextFormField(
                                  controller: _model.textController,
                                  focusNode: _model.textFieldFocusNode,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Search your history...',
                                    hintStyle: TextStyle(
                                      color: FlutterFlowTheme.of(context).hint,
                                    ),
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                  ),
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                  validator: _model.textControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                              Container(
                                width: 0.0,
                                height: 0.0,
                              ),
                            ].divide(SizedBox(
                                width: FlutterFlowTheme.of(context)
                                    .designToken
                                    .spacing
                                    .sm)),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 0.0,
                      height: 0.0,
                    ),
                  ].divide(SizedBox(height: 6.0)),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(
                    FlutterFlowTheme.of(context).designToken.spacing.lg),
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0,
                            0.0,
                            0.0,
                            FlutterFlowTheme.of(context)
                                .designToken
                                .spacing
                                .md),
                        child: Text(
                          'Today',
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                font: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 15.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .fontStyle,
                                lineHeight: 1.33,
                              ),
                        ),
                      ),
                      wrapWithModel(
                        model: _model.historyItemModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: HistoryItemWidget(
                          img_desc:
                              'https://dimg.dreamflow.cloud/v1/image/traditional%20ghanaian%20kente%20fabric%20stole',
                          title: 'Kente Graduation Stole',
                          timestamp: '10:45 AM',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.historyItemModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: HistoryItemWidget(
                          img_desc:
                              'https://dimg.dreamflow.cloud/v1/image/brown%20leather%20chelsea%20boots%20fashion',
                          title: 'Leather Chelsea Boots',
                          timestamp: '09:12 AM',
                        ),
                      ),
                      Container(
                        height:
                            FlutterFlowTheme.of(context).designToken.spacing.md,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0,
                            0.0,
                            0.0,
                            FlutterFlowTheme.of(context)
                                .designToken
                                .spacing
                                .md),
                        child: Text(
                          'Yesterday',
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                font: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 15.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .fontStyle,
                                lineHeight: 1.33,
                              ),
                        ),
                      ),
                      wrapWithModel(
                        model: _model.historyItemModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: HistoryItemWidget(
                          img_desc:
                              'https://dimg.dreamflow.cloud/v1/image/colorful%20african%20dashiki%20shirt',
                          title: 'Dashiki Print Shirt',
                          timestamp: 'Oct 23, 4:20 PM',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.historyItemModel4,
                        updateCallback: () => safeSetState(() {}),
                        child: HistoryItemWidget(
                          img_desc:
                              'https://dimg.dreamflow.cloud/v1/image/simple%20gold%20band%20ring%20jewelry',
                          title: 'Minimalist Gold Ring',
                          timestamp: 'Oct 23, 11:05 AM',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.historyItemModel5,
                        updateCallback: () => safeSetState(() {}),
                        child: HistoryItemWidget(
                          img_desc:
                              'https://dimg.dreamflow.cloud/v1/image/blue%20denim%20jacket%20with%20embroidery',
                          title: 'Denim Jacket with Patches',
                          timestamp: 'Oct 23, 08:30 AM',
                        ),
                      ),
                      Container(
                        height:
                            FlutterFlowTheme.of(context).designToken.spacing.md,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0,
                            0.0,
                            0.0,
                            FlutterFlowTheme.of(context)
                                .designToken
                                .spacing
                                .md),
                        child: Text(
                          'Earlier this week',
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                font: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 15.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .fontStyle,
                                lineHeight: 1.33,
                              ),
                        ),
                      ),
                      wrapWithModel(
                        model: _model.historyItemModel6,
                        updateCallback: () => safeSetState(() {}),
                        child: HistoryItemWidget(
                          img_desc:
                              'https://dimg.dreamflow.cloud/v1/image/handmade%20african%20straw%20basket%20bag',
                          title: 'Woven Straw Bag',
                          timestamp: 'Oct 21, 2:15 PM',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.historyItemModel7,
                        updateCallback: () => safeSetState(() {}),
                        child: HistoryItemWidget(
                          img_desc:
                              'https://dimg.dreamflow.cloud/v1/image/white%20linen%20dress%20fashion',
                          title: 'Linen Summer Dress',
                          timestamp: 'Oct 20, 5:40 PM',
                        ),
                      ),
                    ].divide(SizedBox(height: 0.0)),
                  ),
                ),
              ),
            ),
      ],
    );
  }
}
