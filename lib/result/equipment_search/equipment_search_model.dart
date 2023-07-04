import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EquipmentSearchModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // Stores action output result for [Backend Call - API (GetSubZonefromJson)] action in DropDown widget.
  ApiCallResponse? getSubzoned;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Stores action output result for [Backend Call - API (GetSubstationfromJson)] action in DropDown widget.
  ApiCallResponse? apiResulth25;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // Stores action output result for [Backend Call - API (GetBay)] action in DropDown widget.
  ApiCallResponse? apiResultvfb;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // State field(s) for DropDown widget.
  String? dropDownValue5;
  FormFieldController<String>? dropDownValueController5;
  // State field(s) for DropDown widget.
  String? dropDownValue6;
  FormFieldController<String>? dropDownValueController6;
  // State field(s) for TextField widget.
  final textFieldKey1 = GlobalKey();
  TextEditingController? textController1;
  String? textFieldSelectedOption1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  final textFieldKey2 = GlobalKey();
  TextEditingController? textController2;
  String? textFieldSelectedOption2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - API (GetEquipmentBySerialNo)] action in Button widget.
  ApiCallResponse? getequipmentbyserialno1;
  // Stores action output result for [Backend Call - API (GetEquipmentBySubstation)] action in Button widget.
  ApiCallResponse? apiResultzw9;
  // Stores action output result for [Backend Call - API (GetEquipmentBySubstation)] action in Button widget.
  ApiCallResponse? apiResultzw91;
  // Stores action output result for [Backend Call - API (GetEquipmentBySubstation)] action in Button widget.
  ApiCallResponse? apiResultzw92;
  // Stores action output result for [Backend Call - API (GetEquipmentBySubstation)] action in Button widget.
  ApiCallResponse? apiResultzw93;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
