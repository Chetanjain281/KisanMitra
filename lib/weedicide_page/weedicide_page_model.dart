import '/flutter_flow/flutter_flow_util.dart';
import 'weedicide_page_widget.dart' show WeedicidePageWidget;
import 'package:flutter/material.dart';

class WeedicidePageModel extends FlutterFlowModel<WeedicidePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - getWeedRec1] action in Button widget.
  List<double>? weedReq;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
