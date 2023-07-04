import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  final textFieldKey1 = GlobalKey();
  TextEditingController? textController1;
  String? textFieldSelectedOption1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  final textFieldKey2 = GlobalKey();
  TextEditingController? textController2;
  String? textFieldSelectedOption2;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues;
  FormFieldController<List<String>>? checkboxGroupValueController;
  // Stores action output result for [Backend Call - API (Login)] action in Button widget.
  ApiCallResponse? apiResult2ur;
  // Stores action output result for [Backend Call - API (getuserinfo)] action in Button widget.
  ApiCallResponse? getuserinfo2;
  // Stores action output result for [Backend Call - API (GetObjectType)] action in Button widget.
  ApiCallResponse? getobjecttype;
  // Stores action output result for [Backend Call - API (GetCountry)] action in Button widget.
  ApiCallResponse? getcountry;
  // Stores action output result for [Backend Call - API (GetMainWorkCenter)] action in Button widget.
  ApiCallResponse? getmainworkcenter;
  // Stores action output result for [Backend Call - API (GetPlannerGroup)] action in Button widget.
  ApiCallResponse? getplannergroup;
  // Stores action output result for [Backend Call - API (GetListClass)] action in Button widget.
  ApiCallResponse? getlistclass;
  // State field(s) for url widget.
  String? urlValue;
  FormFieldController<String>? urlValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
