import '/backend/api_requests/api_calls.dart';
import '/components/sheetloading_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Backend Call - API (GetZonefromJson)] action in Container widget.
  ApiCallResponse? zone;
  // Stores action output result for [Backend Call - API (GetSubZonefromJson)] action in Container widget.
  ApiCallResponse? subzone;
  // Stores action output result for [Backend Call - API (GetObjectType)] action in Container widget.
  ApiCallResponse? objecttype;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
