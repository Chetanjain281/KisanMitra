import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'my_comps_model.dart';
export 'my_comps_model.dart';

class MyCompsWidget extends StatefulWidget {
  /// Material(
  ///   color: Colors.transparent,
  ///   elevation: 2.0,
  ///   shape: RoundedRectangleBorder(
  ///     borderRadius: BorderRadius.circular(16.0),
  ///   ),
  ///   child: Container(
  ///     width: MediaQuery.sizeOf(context).width * 1.0,
  ///     decoration: BoxDecoration(
  ///       color: FlutterFlowTheme.of(context).secondaryBackground,
  ///       borderRadius: BorderRadius.circular(16.0),
  ///     ),
  ///     child: Padding(
  ///       padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
  ///       child: Column(
  ///         mainAxisSize: MainAxisSize.min,
  ///         children: [
  ///           Text(
  ///             'Recommendation',
  ///             style: FlutterFlowTheme.of(context).titleMedium.override(
  ///                   fontFamily: 'Inter Tight',
  ///                   color: FlutterFlowTheme.of(context).primaryText,
  ///                   letterSpacing: 0.0,
  ///                 ),
  ///           ),
  ///           Row(
  ///             mainAxisSize: MainAxisSize.max,
  ///             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  ///             children: [
  ///               // Nitrogen
  ///               Column(
  ///                 mainAxisSize: MainAxisSize.min,
  ///                 crossAxisAlignment: CrossAxisAlignment.center,
  ///                 children: [
  ///                   Container(
  ///                     width: 60.0,
  ///                     height: 60.0,
  ///                     decoration: BoxDecoration(
  ///                       color: FlutterFlowTheme.of(context).accent1,
  ///                       borderRadius: BorderRadius.circular(30.0),
  ///                     ),
  ///                     child: Align(
  ///                       alignment: AlignmentDirectional(0.0, 0.0),
  ///                       child: Padding(
  ///                         padding: EdgeInsets.all(8.0),
  ///                         child: Text(
  ///                           'N',
  ///                           textAlign: TextAlign.center,
  ///                           style: FlutterFlowTheme.of(context)
  ///                               .headlineSmall
  ///                               .override(
  ///                                 fontFamily: 'Inter Tight',
  ///                                 color:
  /// FlutterFlowTheme.of(context).primary,
  ///                                 letterSpacing: 0.0,
  ///                               ),
  ///                         ),
  ///                       ),
  ///                     ),
  ///                   ),
  ///                   Text(
  ///                     nitrogen, // Dynamic value for Nitrogen
  ///                     style:
  ///
  /// FlutterFlowTheme.of(context).headlineSmall.override(
  ///                               fontFamily: 'Inter Tight',
  ///                               color:
  /// FlutterFlowTheme.of(context).primaryText,
  ///                               letterSpacing: 0.0,
  ///                             ),
  ///                   ),
  ///                   Text(
  ///                     'Nitrogen',
  ///                     style:
  /// FlutterFlowTheme.of(context).bodySmall.override(
  ///                           fontFamily: 'Inter',
  ///                           color:
  /// FlutterFlowTheme.of(context).secondaryText,
  ///                           letterSpacing: 0.0,
  ///                         ),
  ///                   ),
  ///                 ].divide(SizedBox(height: 8.0)),
  ///               ),
  ///               // Phosphorus
  ///               Column(
  ///                 mainAxisSize: MainAxisSize.min,
  ///                 crossAxisAlignment: CrossAxisAlignment.center,
  ///                 children: [
  ///                   Container(
  ///                     width: 60.0,
  ///                     height: 60.0,
  ///                     decoration: BoxDecoration(
  ///                       color: FlutterFlowTheme.of(context).accent1,
  ///                       borderRadius: BorderRadius.circular(30.0),
  ///                     ),
  ///                     child: Align(
  ///                       alignment: AlignmentDirectional(0.0, 0.0),
  ///                       child: Padding(
  ///                         padding: EdgeInsets.all(8.0),
  ///                         child: Text(
  ///                           'P',
  ///                           textAlign: TextAlign.center,
  ///                           style: FlutterFlowTheme.of(context)
  ///                               .headlineSmall
  ///                               .override(
  ///                                 fontFamily: 'Inter Tight',
  ///                                 color:
  /// FlutterFlowTheme.of(context).primary,
  ///                                 letterSpacing: 0.0,
  ///                               ),
  ///                         ),
  ///                       ),
  ///                     ),
  ///                   ),
  ///                   Text(
  ///                     phosphorus, // Dynamic value for Phosphorus
  ///                     style:
  ///
  /// FlutterFlowTheme.of(context).headlineSmall.override(
  ///                               fontFamily: 'Inter Tight',
  ///                               color:
  /// FlutterFlowTheme.of(context).primaryText,
  ///                               letterSpacing: 0.0,
  ///                             ),
  ///                   ),
  ///                   Text(
  ///                     'Phosphorus',
  ///                     style:
  /// FlutterFlowTheme.of(context).bodySmall.override(
  ///                           fontFamily: 'Inter',
  ///                           color:
  /// FlutterFlowTheme.of(context).secondaryText,
  ///                           letterSpacing: 0.0,
  ///                         ),
  ///                   ),
  ///                 ].divide(SizedBox(height: 8.0)),
  ///               ),
  ///               // Potassium
  ///               Column(
  ///                 mainAxisSize: MainAxisSize.min,
  ///                 crossAxisAlignment: CrossAxisAlignment.center,
  ///                 children: [
  ///                   Container(
  ///                     width: 60.0,
  ///                     height: 60.0,
  ///                     decoration: BoxDecoration(
  ///                       color: FlutterFlowTheme.of(context).accent1,
  ///                       borderRadius: BorderRadius.circular(30.0),
  ///                     ),
  ///                     child: Align(
  ///                       alignment: AlignmentDirectional(0.0, 0.0),
  ///                       child: Padding(
  ///                         padding: EdgeInsets.all(8.0),
  ///                         child: Text(
  ///                           'K',
  ///                           textAlign: TextAlign.center,
  ///                           style: FlutterFlowTheme.of(context)
  ///                               .headlineSmall
  ///                               .override(
  ///                                 fontFamily: 'Inter Tight',
  ///                                 color:
  /// FlutterFlowTheme.of(context).primary,
  ///                                 letterSpacing: 0.0,
  ///                               ),
  ///                         ),
  ///                       ),
  ///                     ),
  ///                   ),
  ///                   Text(
  ///                     potassium, // Dynamic value for Potassium
  ///                     style:
  ///
  /// FlutterFlowTheme.of(context).headlineSmall.override(
  ///                               fontFamily: 'Inter Tight',
  ///                               color:
  /// FlutterFlowTheme.of(context).primaryText,
  ///                               letterSpacing: 0.0,
  ///                             ),
  ///                   ),
  ///                   Text(
  ///                     'Potassium',
  ///                     style:
  /// FlutterFlowTheme.of(context).bodySmall.override(
  ///                           fontFamily: 'Inter',
  ///                           color:
  /// FlutterFlowTheme.of(context).secondaryText,
  ///                           letterSpacing: 0.0,
  ///                         ),
  ///                   ),
  ///                 ].divide(SizedBox(height: 8.0)),
  ///               ),
  ///               // Micronutrients
  ///               Column(
  ///                 mainAxisSize: MainAxisSize.min,
  ///                 crossAxisAlignment: CrossAxisAlignment.center,
  ///                 children: [
  ///                   Container(
  ///                     width: 60.0,
  ///                     height: 60.0,
  ///                     decoration: BoxDecoration(
  ///                       color: FlutterFlowTheme.of(context).accent1,
  ///                       borderRadius: BorderRadius.circular(30.0),
  ///                     ),
  ///                     child: Icon(
  ///                       Icons.add_box,
  ///                       color: FlutterFlowTheme.of(context).primary,
  ///                       size: 30.0,
  ///                     ),
  ///                   ),
  ///                   Text(
  ///                     micronutrients, // Dynamic value for Micronutrients
  ///                     style:
  ///
  /// FlutterFlowTheme.of(context).headlineSmall.override(
  ///                               fontFamily: 'Inter Tight',
  ///                               color:
  /// FlutterFlowTheme.of(context).primaryText,
  ///                               letterSpacing: 0.0,
  ///                             ),
  ///                   ),
  ///                   Text(
  ///                     'Micronutrients',
  ///                     style:
  /// FlutterFlowTheme.of(context).bodySmall.override(
  ///                           fontFamily: 'Inter',
  ///                           color:
  /// FlutterFlowTheme.of(context).secondaryText,
  ///                           letterSpacing: 0.0,
  ///                         ),
  ///                   ),
  ///                 ].divide(SizedBox(height: 8.0)),
  ///               ),
  ///             ],
  ///           ),
  ///           // Total Volume Required
  ///           Container(
  ///             width: MediaQuery.sizeOf(context).width * 1.0,
  ///             decoration: BoxDecoration(
  ///               color: FlutterFlowTheme.of(context).primaryBackground,
  ///               borderRadius: BorderRadius.circular(8.0),
  ///             ),
  ///             child: Padding(
  ///               padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0,
  /// 16.0),
  ///               child: Column(
  ///                 mainAxisSize: MainAxisSize.min,
  ///                 children: [
  ///                   Text(
  ///                     'Total Volume Required',
  ///                     style:
  /// FlutterFlowTheme.of(context).bodyLarge.override(
  ///                           fontFamily: 'Inter',
  ///                           color: FlutterFlowTheme.of(context).primaryText,
  ///                           letterSpacing: 0.0,
  ///                         ),
  ///                   ),
  ///                   SingleChildScrollView(
  ///                     scrollDirection: Axis.horizontal,
  ///                     child: Row(
  ///                       mainAxisSize: MainAxisSize.max,
  ///                       mainAxisAlignment: MainAxisAlignment.center,
  ///                       children: [
  ///                         Text(
  ///                           totalVolumeRequired, // Dynamic total volume
  /// required
  ///                           style: FlutterFlowTheme.of(context)
  ///                               .headlineSmall
  ///                               .override(
  ///                                 fontFamily: 'Inter Tight',
  ///                                 color:
  /// FlutterFlowTheme.of(context).primary,
  ///                                 fontSize: 20.0,
  ///                                 letterSpacing: 0.0,
  ///                                 fontWeight: FontWeight.bold,
  ///                               ),
  ///                         ),
  ///                         Text(
  ///                           ' Litres for ',
  ///                           style: FlutterFlowTheme.of(context)
  ///                               .headlineSmall
  ///                               .override(
  ///                                 fontFamily: 'Inter Tight',
  ///                                 color:
  /// FlutterFlowTheme.of(context).primary,
  ///                                 fontSize: 20.0,
  ///                                 letterSpacing: 0.0,
  ///                               ),
  ///                         ),
  ///                         Text(
  ///                           area + " acres", // Dynamic area
  ///                           style: FlutterFlowTheme.of(context)
  ///                               .headlineSmall
  ///                               .override(
  ///                                 fontFamily: 'Inter Tight',
  ///                                 color:
  /// FlutterFlowTheme.of(context).primary,
  ///                                 fontSize: 20.0,
  ///                                 letterSpacing: 0.0,
  ///                               ),
  ///                         ),
  ///                       ],
  ///                     ),
  ///                   ),
  ///                 ],
  ///               ),
  ///             ),
  ///           ),
  ///         ],
  ///       ),
  ///     ),
  ///   ),
  /// )
  ///
  const MyCompsWidget({super.key});

  @override
  State<MyCompsWidget> createState() => _MyCompsWidgetState();
}

class _MyCompsWidgetState extends State<MyCompsWidget> {
  late MyCompsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyCompsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: const [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x33000000),
            offset: Offset(
              0.0,
              2.0,
            ),
            spreadRadius: 0.0,
          )
        ],
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              FFLocalizations.of(context).getText(
                'ojpiw1z4' /* Reccomendation */,
              ),
              style: FlutterFlowTheme.of(context).titleMedium.override(
                    fontFamily: 'Inter Tight',
                    letterSpacing: 0.0,
                  ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).accent1,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'pncrebmv' /* N */,
                          ),
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Inter Tight',
                                color: FlutterFlowTheme.of(context).primary,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'zzmkf0tw' /* 12 */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Inter Tight',
                                letterSpacing: 0.0,
                              ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'hu9sgzsi' /* Nitrogen */,
                      ),
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Inter',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ].divide(const SizedBox(height: 8.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).accent1,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'j0nbpqo3' /* P */,
                          ),
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Inter Tight',
                                color: FlutterFlowTheme.of(context).primary,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'lrzsermb' /* 24 */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Inter Tight',
                                letterSpacing: 0.0,
                              ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'j419xpuc' /* Phosphorus */,
                      ),
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Inter',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ].divide(const SizedBox(height: 8.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).accent1,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'ldx5bo69' /* K */,
                          ),
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Inter Tight',
                                color: FlutterFlowTheme.of(context).primary,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'h99gf3s1' /* 36 */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Inter Tight',
                                letterSpacing: 0.0,
                              ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'y8jdx283' /* Potassium */,
                      ),
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Inter',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ].divide(const SizedBox(height: 8.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).accent1,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Icon(
                        Icons.add_box,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 30.0,
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        '3vjv14y2' /* 48 */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Inter Tight',
                                letterSpacing: 0.0,
                              ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        '9sksf4r0' /* Micronutrients */,
                      ),
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Inter',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ].divide(const SizedBox(height: 8.0)),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        '97m1ujtg' /* Total Volume Required */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'zhcbu5xw' /* 250 */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Inter Tight',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              '02nla4y2' /*  Litres for  */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Inter Tight',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'nvfwy5n7' /* 5 acres */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Inter Tight',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ].divide(const SizedBox(height: 8.0)),
                ),
              ),
            ),
          ].divide(const SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
