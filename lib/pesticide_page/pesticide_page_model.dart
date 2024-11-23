import '/flutter_flow/flutter_flow_util.dart';
import 'pesticide_page_widget.dart' show PesticidePageWidget;
import 'package:flutter/material.dart';

class PesticidePageModel extends FlutterFlowModel<PesticidePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - getPestRec1] action in Button widget.
  List<double>? answer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
