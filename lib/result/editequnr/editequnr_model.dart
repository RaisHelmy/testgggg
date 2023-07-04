import '/backend/api_requests/api_calls.dart';
import '/components/textfield_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditequnrModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool addclassheader = false;

  List<dynamic> classinfo = [];
  void addToClassinfo(dynamic item) => classinfo.add(item);
  void removeFromClassinfo(dynamic item) => classinfo.remove(item);
  void removeAtIndexFromClassinfo(int index) => classinfo.removeAt(index);
  void updateClassinfoAtIndex(int index, Function(dynamic) updateFn) =>
      classinfo[index] = updateFn(classinfo[index]);

  List<FFUploadedFile> uploadedfile = [];
  void addToUploadedfile(FFUploadedFile item) => uploadedfile.add(item);
  void removeFromUploadedfile(FFUploadedFile item) => uploadedfile.remove(item);
  void removeAtIndexFromUploadedfile(int index) => uploadedfile.removeAt(index);
  void updateUploadedfileAtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      uploadedfile[index] = updateFn(uploadedfile[index]);

  String? functionallocation;

  List<String> charcodes = [];
  void addToCharcodes(String item) => charcodes.add(item);
  void removeFromCharcodes(String item) => charcodes.remove(item);
  void removeAtIndexFromCharcodes(int index) => charcodes.removeAt(index);
  void updateCharcodesAtIndex(int index, Function(String) updateFn) =>
      charcodes[index] = updateFn(charcodes[index]);

  List<String> charvalues = [];
  void addToCharvalues(String item) => charvalues.add(item);
  void removeFromCharvalues(String item) => charvalues.remove(item);
  void removeAtIndexFromCharvalues(int index) => charvalues.removeAt(index);
  void updateCharvaluesAtIndex(int index, Function(String) updateFn) =>
      charvalues[index] = updateFn(charvalues[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for eqktuorequipmentdescription widget.
  TextEditingController? eqktuorequipmentdescriptionController;
  String? Function(BuildContext, String?)?
      eqktuorequipmentdescriptionControllerValidator;
  // State field(s) for object widget.
  String? objectValue;
  FormFieldController<String>? objectValueController;
  // State field(s) for inbdtyear widget.
  String? inbdtyearValue;
  FormFieldController<String>? inbdtyearValueController;
  // State field(s) for inbdtmonth widget.
  String? inbdtmonthValue;
  FormFieldController<String>? inbdtmonthValueController;
  // State field(s) for inbdtday widget.
  String? inbdtdayValue;
  FormFieldController<String>? inbdtdayValueController;
  // State field(s) for herstormanufacturer widget.
  TextEditingController? herstormanufacturerController;
  String? Function(BuildContext, String?)?
      herstormanufacturerControllerValidator;
  // State field(s) for typbzormodelnumber widget.
  TextEditingController? typbzormodelnumberController;
  String? Function(BuildContext, String?)?
      typbzormodelnumberControllerValidator;
  // State field(s) for sergeormanufacturerserialnumber widget.
  TextEditingController? sergeormanufacturerserialnumberController;
  String? Function(BuildContext, String?)?
      sergeormanufacturerserialnumberControllerValidator;
  // State field(s) for dropdowncountrycodeofmanufacturer widget.
  String? dropdowncountrycodeofmanufacturerValue;
  FormFieldController<String>? dropdowncountrycodeofmanufacturerValueController;
  // State field(s) for baujj widget.
  String? baujjValue;
  FormFieldController<String>? baujjValueController;
  // State field(s) for baumm widget.
  String? baummValue;
  FormFieldController<String>? baummValueController;
  // State field(s) for anlnrorassetno widget.
  TextEditingController? anlnrorassetnoController;
  String? Function(BuildContext, String?)? anlnrorassetnoControllerValidator;
  // State field(s) for plannergroup widget.
  String? plannergroupValue;
  FormFieldController<String>? plannergroupValueController;
  // State field(s) for mainworkcenter widget.
  String? mainworkcenterValue;
  FormFieldController<String>? mainworkcenterValueController;
  // State field(s) for zone widget.
  String? zoneValue;
  FormFieldController<String>? zoneValueController;
  // Stores action output result for [Backend Call - API (GetSubZonefromJson)] action in zone widget.
  ApiCallResponse? getSubzoned;
  // State field(s) for subzone widget.
  String? subzoneValue;
  FormFieldController<String>? subzoneValueController;
  // Stores action output result for [Backend Call - API (GetSubstationfromJson)] action in subzone widget.
  ApiCallResponse? apiResulth25;
  // State field(s) for substation widget.
  String? substationValue;
  FormFieldController<String>? substationValueController;
  // Stores action output result for [Backend Call - API (GetBay)] action in substation widget.
  ApiCallResponse? apiResultvfb;
  // State field(s) for bay widget.
  String? bayValue;
  FormFieldController<String>? bayValueController;
  // State field(s) for primarysecondary widget.
  String? primarysecondaryValue;
  FormFieldController<String>? primarysecondaryValueController;
  // State field(s) for objecttype widget.
  String? objecttypeValue;
  FormFieldController<String>? objecttypeValueController;
  // State field(s) for functionallocation widget.
  TextEditingController? functionallocationController;
  String? Function(BuildContext, String?)?
      functionallocationControllerValidator;
  // State field(s) for functionallocationdescription widget.
  TextEditingController? functionallocationdescriptionController;
  String? Function(BuildContext, String?)?
      functionallocationdescriptionControllerValidator;
  // State field(s) for classheader widget.
  String? classheaderValue;
  FormFieldController<String>? classheaderValueController;
  // Stores action output result for [Backend Call - API (GetClassInfo)] action in classheader widget.
  ApiCallResponse? apiResult28e;
  // Models for textfield dynamic component.
  late FlutterFlowDynamicModels<TextfieldModel> textfieldModels;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading2 = false;
  List<FFUploadedFile> uploadedLocalFiles2 = [];

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    textfieldModels = FlutterFlowDynamicModels(() => TextfieldModel());
  }

  void dispose() {
    unfocusNode.dispose();
    eqktuorequipmentdescriptionController?.dispose();
    herstormanufacturerController?.dispose();
    typbzormodelnumberController?.dispose();
    sergeormanufacturerserialnumberController?.dispose();
    anlnrorassetnoController?.dispose();
    functionallocationController?.dispose();
    functionallocationdescriptionController?.dispose();
    textfieldModels.dispose();
  }

  /// Action blocks are added here.

  Future test(BuildContext context) async {
    addToCharcodes(classinfo.first.toString());
    addToCharvalues(textfieldModels
        .getValues(
          (m) => m.textController.text,
        )
        .first);
  }

  /// Additional helper methods are added here.
}
