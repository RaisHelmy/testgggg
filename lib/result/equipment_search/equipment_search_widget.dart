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
import 'equipment_search_model.dart';
export 'equipment_search_model.dart';

class EquipmentSearchWidget extends StatefulWidget {
  const EquipmentSearchWidget({
    Key? key,
    required this.tokenuser,
  }) : super(key: key);

  final String? tokenuser;

  @override
  _EquipmentSearchWidgetState createState() => _EquipmentSearchWidgetState();
}

class _EquipmentSearchWidgetState extends State<EquipmentSearchWidget> {
  late EquipmentSearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EquipmentSearchModel());

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            'Equipment Search',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(1.0, -1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(1.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                setState(() {
                                  _model.textController1?.clear();
                                  _model.textController2?.clear();
                                });
                                setState(() {
                                  _model.dropDownValueController1?.reset();
                                  _model.dropDownValueController2?.reset();
                                  _model.dropDownValueController3?.reset();
                                  _model.dropDownValueController4?.reset();
                                  _model.dropDownValueController5?.reset();
                                  _model.dropDownValueController6?.reset();
                                });
                              },
                              text: 'Reset',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF7B7B7B),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(1.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                context.pushNamed('createequip');
                              },
                              text: 'Create',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(width: 5.0)),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                    child: Form(
                      key: _model.formKey,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowDropDown<String>(
                            controller: _model.dropDownValueController1 ??=
                                FormFieldController<String>(
                              _model.dropDownValue1 ??= '',
                            ),
                            options: FFAppState()
                                .zone
                                .map((e) => getJsonField(
                                      e,
                                      r'''$.ID''',
                                    ))
                                .toList()
                                .map((e) => e.toString())
                                .toList(),
                            optionLabels: FFAppState()
                                .zone
                                .map((e) => getJsonField(
                                      e,
                                      r'''$.Value''',
                                    ))
                                .toList()
                                .map((e) => e.toString())
                                .toList(),
                            onChanged: (val) async {
                              setState(() => _model.dropDownValue1 = val);
                              _model.getSubzoned =
                                  await GetSubZonefromJsonCall.call(
                                zone: getJsonField(
                                  FFAppState()
                                      .zone
                                      .where((e) =>
                                          getJsonField(
                                            e,
                                            r'''$.Value''',
                                          ) ==
                                          _model.dropDownValue1)
                                      .toList()
                                      .first,
                                  r'''$.ID''',
                                ).toString(),
                                urlendpoint: FFAppState().urlendpoint,
                              );
                              if ((_model.getSubzoned?.succeeded ?? true)) {
                                setState(() {
                                  FFAppState().subzone = getJsonField(
                                    (_model.getSubzoned?.jsonBody ?? ''),
                                    r'''$[:]''',
                                  )!
                                      .toList()
                                      .cast<dynamic>();
                                });
                              }

                              setState(() {});
                            },
                            width: 300.0,
                            height: 50.0,
                            searchHintTextStyle:
                                FlutterFlowTheme.of(context).labelMedium,
                            textStyle: FlutterFlowTheme.of(context).bodyMedium,
                            hintText: 'Zone',
                            searchHintText: 'Search for Zone...',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            elevation: 1.0,
                            borderColor: Color(0xFFC5C5C5),
                            borderWidth: 1.0,
                            borderRadius: 5.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                16.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: true,
                          ),
                          FlutterFlowDropDown<String>(
                            controller: _model.dropDownValueController2 ??=
                                FormFieldController<String>(
                              _model.dropDownValue2 ??= '',
                            ),
                            options: FFAppState()
                                .subzone
                                .map((e) => getJsonField(
                                      e,
                                      r'''$.INGRP''',
                                    ))
                                .toList()
                                .map((e) => e.toString())
                                .toList(),
                            optionLabels: functions.combinelist(
                                FFAppState()
                                    .subzone
                                    .map((e) => getJsonField(
                                          e,
                                          r'''$.INGRP''',
                                        ))
                                    .toList()
                                    .map((e) => e.toString())
                                    .toList(),
                                FFAppState()
                                    .subzone
                                    .map((e) => getJsonField(
                                          e,
                                          r'''$.INNAM''',
                                        ))
                                    .toList()
                                    .map((e) => e.toString())
                                    .toList(),
                                '  -  ')!,
                            onChanged: (val) async {
                              setState(() => _model.dropDownValue2 = val);
                              _model.apiResulth25 =
                                  await GetSubstationfromJsonCall.call(
                                subzoneINGRP: _model.dropDownValue2,
                                urlendpoint: FFAppState().urlendpoint,
                              );
                              if ((_model.apiResulth25?.succeeded ?? true)) {
                                setState(() {
                                  FFAppState().substation = getJsonField(
                                    (_model.apiResulth25?.jsonBody ?? ''),
                                    r'''$[:]''',
                                  )!
                                      .toList()
                                      .cast<dynamic>();
                                });
                              }

                              setState(() {});
                            },
                            width: 300.0,
                            height: 50.0,
                            searchHintTextStyle:
                                FlutterFlowTheme.of(context).labelMedium,
                            textStyle: FlutterFlowTheme.of(context).bodyMedium,
                            hintText: 'Subzone',
                            searchHintText: 'Search for an item...',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            elevation: 1.0,
                            borderColor: Color(0xFFC5C5C5),
                            borderWidth: 1.0,
                            borderRadius: 5.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                16.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: true,
                          ),
                          FlutterFlowDropDown<String>(
                            controller: _model.dropDownValueController3 ??=
                                FormFieldController<String>(
                              _model.dropDownValue3 ??= '',
                            ),
                            options: FFAppState()
                                .substation
                                .map((e) => getJsonField(
                                      e,
                                      r'''$.FL''',
                                    ))
                                .toList()
                                .map((e) => e.toString())
                                .toList(),
                            optionLabels: functions.combinelist(
                                FFAppState()
                                    .substation
                                    .map((e) => getJsonField(
                                          e,
                                          r'''$.FL''',
                                        ))
                                    .toList()
                                    .map((e) => e.toString())
                                    .toList(),
                                FFAppState()
                                    .substation
                                    .map((e) => getJsonField(
                                          e,
                                          r'''$.SubstationDesc''',
                                        ))
                                    .toList()
                                    .map((e) => e.toString())
                                    .toList(),
                                '  -  ')!,
                            onChanged: (val) async {
                              setState(() => _model.dropDownValue3 = val);
                              _model.apiResultvfb = await GetBayCall.call(
                                substationFL: _model.dropDownValue3,
                                urlendpoint: FFAppState().urlendpoint,
                              );
                              if ((_model.apiResultvfb?.succeeded ?? true)) {
                                setState(() {
                                  FFAppState().bay = getJsonField(
                                    (_model.apiResultvfb?.jsonBody ?? ''),
                                    r'''$[:]''',
                                  )!
                                      .toList()
                                      .cast<dynamic>();
                                });
                              }

                              setState(() {});
                            },
                            width: 300.0,
                            height: 50.0,
                            searchHintTextStyle:
                                FlutterFlowTheme.of(context).labelMedium,
                            textStyle: FlutterFlowTheme.of(context).bodyMedium,
                            hintText: 'Substation',
                            searchHintText: 'Search for an item...',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            elevation: 1.0,
                            borderColor: Color(0xFFC5C5C5),
                            borderWidth: 1.0,
                            borderRadius: 5.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                16.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: true,
                          ),
                          FlutterFlowDropDown<String>(
                            controller: _model.dropDownValueController4 ??=
                                FormFieldController<String>(
                              _model.dropDownValue4 ??= '',
                            ),
                            options: FFAppState().bay.length >= 1
                                ? FFAppState()
                                    .bay
                                    .map((e) => getJsonField(
                                          e,
                                          r'''$.TPLNR''',
                                        ))
                                    .toList()
                                    .map((e) => e.toString())
                                    .toList()
                                : [],
                            optionLabels: FFAppState().bay.length >= 1
                                ? functions.combinelist(
                                    FFAppState()
                                        .bay
                                        .map((e) => getJsonField(
                                              e,
                                              r'''$.TPLNR''',
                                            ))
                                        .toList()
                                        .map((e) => e.toString())
                                        .toList(),
                                    FFAppState()
                                        .bay
                                        .map((e) => getJsonField(
                                              e,
                                              r'''$.BayDesc''',
                                            ))
                                        .toList()
                                        .map((e) => e.toString())
                                        .toList(),
                                    '  -  ')!
                                : [],
                            onChanged: (val) =>
                                setState(() => _model.dropDownValue4 = val),
                            width: 300.0,
                            height: 50.0,
                            searchHintTextStyle:
                                FlutterFlowTheme.of(context).labelMedium,
                            textStyle: FlutterFlowTheme.of(context).bodyMedium,
                            hintText: 'Bay',
                            searchHintText: 'Search for an item...',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            elevation: 1.0,
                            borderColor: Color(0xFFC5C5C5),
                            borderWidth: 1.0,
                            borderRadius: 5.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                16.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: true,
                          ),
                          FlutterFlowDropDown<String>(
                            controller: _model.dropDownValueController5 ??=
                                FormFieldController<String>(
                              _model.dropDownValue5 ??= '',
                            ),
                            options: ['AA', 'AB'],
                            optionLabels: [
                              'AA  -  Primary',
                              'AB  -  Secondary'
                            ],
                            onChanged: (val) =>
                                setState(() => _model.dropDownValue5 = val),
                            width: 300.0,
                            height: 50.0,
                            searchHintTextStyle:
                                FlutterFlowTheme.of(context).labelMedium,
                            textStyle: FlutterFlowTheme.of(context).bodyMedium,
                            hintText: 'Primary / Secondary',
                            searchHintText: 'Search for an item...',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            elevation: 1.0,
                            borderColor: Color(0xFFC5C5C5),
                            borderWidth: 1.0,
                            borderRadius: 5.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                16.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: true,
                          ),
                          FlutterFlowDropDown<String>(
                            controller: _model.dropDownValueController6 ??=
                                FormFieldController<String>(
                              _model.dropDownValue6 ??= '',
                            ),
                            options: FFAppState()
                                .objecttype
                                .map((e) => getJsonField(
                                      e,
                                      r'''$.ObjectTypePrefix''',
                                    ))
                                .toList()
                                .map((e) => e.toString())
                                .toList(),
                            optionLabels: functions.combinelist(
                                FFAppState()
                                    .objecttype
                                    .map((e) => getJsonField(
                                          e,
                                          r'''$.ObjectTypePrefix''',
                                        ))
                                    .toList()
                                    .map((e) => e.toString())
                                    .toList(),
                                FFAppState()
                                    .objecttype
                                    .map((e) => getJsonField(
                                          e,
                                          r'''$.ObjectTypeText''',
                                        ))
                                    .toList()
                                    .map((e) => e.toString())
                                    .toList(),
                                '  -  ')!,
                            onChanged: (val) =>
                                setState(() => _model.dropDownValue6 = val),
                            width: 300.0,
                            height: 50.0,
                            searchHintTextStyle:
                                FlutterFlowTheme.of(context).labelMedium,
                            textStyle: FlutterFlowTheme.of(context).bodyMedium,
                            hintText: 'Object Type',
                            searchHintText: 'Search for an item...',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            elevation: 1.0,
                            borderColor: Color(0xFFC5C5C5),
                            borderWidth: 1.0,
                            borderRadius: 5.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                16.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: true,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 20.0, 30.0, 0.0),
                            child: Autocomplete<String>(
                              initialValue: TextEditingValue(),
                              optionsBuilder: (textEditingValue) {
                                if (textEditingValue.text == '') {
                                  return const Iterable<String>.empty();
                                }
                                return ['E0023729'].where((option) {
                                  final lowercaseOption = option.toLowerCase();
                                  return lowercaseOption.contains(
                                      textEditingValue.text.toLowerCase());
                                });
                              },
                              optionsViewBuilder:
                                  (context, onSelected, options) {
                                return AutocompleteOptionsList(
                                  textFieldKey: _model.textFieldKey1,
                                  textController: _model.textController1!,
                                  options: options.toList(),
                                  onSelected: onSelected,
                                  textStyle:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  textHighlightStyle: TextStyle(),
                                  elevation: 4.0,
                                  optionBackgroundColor:
                                      FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                  optionHighlightColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  maxHeight: 200.0,
                                );
                              },
                              onSelected: (String selection) {
                                setState(() => _model.textFieldSelectedOption1 =
                                    selection);
                                FocusScope.of(context).unfocus();
                              },
                              fieldViewBuilder: (
                                context,
                                textEditingController,
                                focusNode,
                                onEditingComplete,
                              ) {
                                _model.textController1 = textEditingController;
                                return TextFormField(
                                  key: _model.textFieldKey1,
                                  controller: textEditingController,
                                  focusNode: focusNode,
                                  onEditingComplete: onEditingComplete,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Serial No',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            30.0, 0.0, 0.0, 0.0),
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  validator: _model.textController1Validator
                                      .asValidator(context),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 20.0, 30.0, 0.0),
                            child: Autocomplete<String>(
                              initialValue: TextEditingValue(),
                              optionsBuilder: (textEditingValue) {
                                if (textEditingValue.text == '') {
                                  return const Iterable<String>.empty();
                                }
                                return [
                                  '200220361',
                                  '10106209',
                                  '200222379',
                                  '200040726',
                                  '200040727',
                                  '200109160',
                                  '200058573'
                                ].where((option) {
                                  final lowercaseOption = option.toLowerCase();
                                  return lowercaseOption.contains(
                                      textEditingValue.text.toLowerCase());
                                });
                              },
                              optionsViewBuilder:
                                  (context, onSelected, options) {
                                return AutocompleteOptionsList(
                                  textFieldKey: _model.textFieldKey2,
                                  textController: _model.textController2!,
                                  options: options.toList(),
                                  onSelected: onSelected,
                                  textStyle:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  textHighlightStyle: TextStyle(),
                                  elevation: 4.0,
                                  optionBackgroundColor:
                                      FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                  optionHighlightColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                  maxHeight: 200.0,
                                );
                              },
                              onSelected: (String selection) {
                                setState(() => _model.textFieldSelectedOption2 =
                                    selection);
                                FocusScope.of(context).unfocus();
                              },
                              fieldViewBuilder: (
                                context,
                                textEditingController,
                                focusNode,
                                onEditingComplete,
                              ) {
                                _model.textController2 = textEditingController;
                                return TextFormField(
                                  key: _model.textFieldKey2,
                                  controller: textEditingController,
                                  focusNode: focusNode,
                                  onEditingComplete: onEditingComplete,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Equipment Number',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            30.0, 0.0, 0.0, 0.0),
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  validator: _model.textController2Validator
                                      .asValidator(context),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 40.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                if (_model.textController2.text != null &&
                                    _model.textController2.text != '') {
                                  context.pushNamed(
                                    'equipment',
                                    queryParameters: {
                                      'equnr': serializeParam(
                                        _model.textController2.text,
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                } else {
                                  if (_model.textController1.text != null &&
                                      _model.textController1.text != '') {
                                    _model.getequipmentbyserialno1 =
                                        await GetEquipmentBySerialNoCall.call(
                                      serialNo: _model.textController1.text,
                                      urlendpoint: FFAppState().urlendpoint,
                                    );
                                    setState(() {
                                      FFAppState().listequipmentbyserialno =
                                          getJsonField(
                                        (_model.getequipmentbyserialno1
                                                ?.jsonBody ??
                                            ''),
                                        r'''$[:]''',
                                      )!
                                              .toList()
                                              .cast<dynamic>();
                                    });

                                    context.pushNamed(
                                      'searchbyserialno',
                                      queryParameters: {
                                        'uid': serializeParam(
                                          getJsonField(
                                            FFAppState().alluserinfo,
                                            r'''$.EmployeeID''',
                                          ).toString(),
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  } else {
                                    if (!false) {
                                      if (_model.dropDownValue6 != null &&
                                          _model.dropDownValue6 != '') {
                                        if (_model.dropDownValue5 != null &&
                                            _model.dropDownValue5 != '') {
                                          if (_model.dropDownValue4 != null &&
                                              _model.dropDownValue4 != '') {
                                            _model.apiResultzw9 =
                                                await GetEquipmentBySubstationCall
                                                    .call(
                                              substationFL:
                                                  '${_model.dropDownValue4}/${_model.dropDownValue5}/${_model.dropDownValue6}',
                                              urlendpoint:
                                                  FFAppState().urlendpoint,
                                            );
                                            if ((_model
                                                    .apiResultzw9?.succeeded ??
                                                true)) {
                                              FFAppState()
                                                      .listequipmentbyserialno =
                                                  getJsonField(
                                                (_model.apiResultzw9
                                                        ?.jsonBody ??
                                                    ''),
                                                r'''$[:]''',
                                              )!
                                                      .toList()
                                                      .cast<dynamic>();

                                              context.pushNamed(
                                                'searchbyserialno',
                                                queryParameters: {
                                                  'uid': serializeParam(
                                                    getJsonField(
                                                      FFAppState().alluserinfo,
                                                      r'''$.EmployeeID''',
                                                    ).toString(),
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            }
                                          }
                                        }
                                      } else {
                                        if (_model.dropDownValue5 != null &&
                                            _model.dropDownValue5 != '') {
                                          if (_model.dropDownValue4 != null &&
                                              _model.dropDownValue4 != '') {
                                            _model.apiResultzw91 =
                                                await GetEquipmentBySubstationCall
                                                    .call(
                                              substationFL:
                                                  '${_model.dropDownValue4}/${_model.dropDownValue5}',
                                              urlendpoint:
                                                  FFAppState().urlendpoint,
                                            );
                                            if ((_model
                                                    .apiResultzw91?.succeeded ??
                                                true)) {
                                              FFAppState()
                                                      .listequipmentbyserialno =
                                                  getJsonField(
                                                (_model.apiResultzw91
                                                        ?.jsonBody ??
                                                    ''),
                                                r'''$[:]''',
                                              )!
                                                      .toList()
                                                      .cast<dynamic>();

                                              context.pushNamed(
                                                'searchbyserialno',
                                                queryParameters: {
                                                  'uid': serializeParam(
                                                    getJsonField(
                                                      FFAppState().alluserinfo,
                                                      r'''$.EmployeeID''',
                                                    ).toString(),
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            }
                                          }
                                        } else {
                                          if (_model.dropDownValue4 != null &&
                                              _model.dropDownValue4 != '') {
                                            _model.apiResultzw92 =
                                                await GetEquipmentBySubstationCall
                                                    .call(
                                              substationFL:
                                                  _model.dropDownValue4,
                                              urlendpoint:
                                                  FFAppState().urlendpoint,
                                            );
                                            if ((_model
                                                    .apiResultzw92?.succeeded ??
                                                true)) {
                                              FFAppState()
                                                      .listequipmentbyserialno =
                                                  getJsonField(
                                                (_model.apiResultzw92
                                                        ?.jsonBody ??
                                                    ''),
                                                r'''$[:]''',
                                              )!
                                                      .toList()
                                                      .cast<dynamic>();

                                              context.pushNamed(
                                                'searchbyserialno',
                                                queryParameters: {
                                                  'uid': serializeParam(
                                                    getJsonField(
                                                      FFAppState().alluserinfo,
                                                      r'''$.EmployeeID''',
                                                    ).toString(),
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            }
                                          } else {
                                            if (_model.dropDownValue3 != null &&
                                                _model.dropDownValue3 != '') {
                                              _model.apiResultzw93 =
                                                  await GetEquipmentBySubstationCall
                                                      .call(
                                                substationFL:
                                                    _model.dropDownValue3,
                                                urlendpoint:
                                                    FFAppState().urlendpoint,
                                              );
                                              if ((_model.apiResultzw93
                                                      ?.succeeded ??
                                                  true)) {
                                                FFAppState()
                                                        .listequipmentbyserialno =
                                                    getJsonField(
                                                  (_model.apiResultzw93
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$[:]''',
                                                )!
                                                        .toList()
                                                        .cast<dynamic>();

                                                context.pushNamed(
                                                  'searchbyserialno',
                                                  queryParameters: {
                                                    'uid': serializeParam(
                                                      getJsonField(
                                                        FFAppState()
                                                            .alluserinfo,
                                                        r'''$.EmployeeID''',
                                                      ).toString(),
                                                      ParamType.String,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }

                                setState(() {});
                              },
                              text: 'Search',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
