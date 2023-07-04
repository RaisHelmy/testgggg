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
import 'login_model.dart';
export 'login_model.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginModel());

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
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: ClipRRect(
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/MicrosoftTeams-image.png',
                        ).image,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 400.0,
                            child: Form(
                              key: _model.formKey,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 150.0, 0.0, 150.0),
                                    child: Image.asset(
                                      'assets/images/02_TOMAS_Logo.png',
                                      width: 100.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40.0, 40.0, 40.0, 40.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xCBF5F5F5),
                                              ),
                                              child: Autocomplete<String>(
                                                initialValue:
                                                    TextEditingValue(),
                                                optionsBuilder:
                                                    (textEditingValue) {
                                                  if (textEditingValue.text ==
                                                      '') {
                                                    return const Iterable<
                                                        String>.empty();
                                                  }
                                                  return [
                                                    'tnb\\TOMAS005',
                                                    'tnb\\TOMAS004',
                                                    'tnb\\TOMAS003',
                                                    'tnb\\TOMAS002',
                                                    'tnb\\TOMAS001',
                                                    'VDR02441',
                                                    'tnb\\admin.tomas'
                                                  ].where((option) {
                                                    final lowercaseOption =
                                                        option.toLowerCase();
                                                    return lowercaseOption
                                                        .contains(
                                                            textEditingValue
                                                                .text
                                                                .toLowerCase());
                                                  });
                                                },
                                                optionsViewBuilder: (context,
                                                    onSelected, options) {
                                                  return AutocompleteOptionsList(
                                                    textFieldKey:
                                                        _model.textFieldKey1,
                                                    textController:
                                                        _model.textController1!,
                                                    options: options.toList(),
                                                    onSelected: onSelected,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    textHighlightStyle:
                                                        TextStyle(),
                                                    elevation: 4.0,
                                                    optionBackgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    optionHighlightColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground,
                                                    maxHeight: 200.0,
                                                  );
                                                },
                                                onSelected: (String selection) {
                                                  setState(() => _model
                                                          .textFieldSelectedOption1 =
                                                      selection);
                                                  FocusScope.of(context)
                                                      .unfocus();
                                                },
                                                fieldViewBuilder: (
                                                  context,
                                                  textEditingController,
                                                  focusNode,
                                                  onEditingComplete,
                                                ) {
                                                  _model.textController1 =
                                                      textEditingController;
                                                  return TextFormField(
                                                    key: _model.textFieldKey1,
                                                    controller:
                                                        textEditingController,
                                                    focusNode: focusNode,
                                                    onEditingComplete:
                                                        onEditingComplete,
                                                    onChanged: (_) =>
                                                        EasyDebounce.debounce(
                                                      '_model.textController1',
                                                      Duration(
                                                          milliseconds: 1000),
                                                      () => setState(() {}),
                                                    ),
                                                    autofocus: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'Username',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                      enabledBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFFC5C5C5),
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                      focusedBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                      errorBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                      focusedErrorBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                      contentPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  30.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                    textAlign: TextAlign.center,
                                                    validator: _model
                                                        .textController1Validator
                                                        .asValidator(context),
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40.0, 40.0, 40.0, 40.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xCDF5F5F5),
                                              ),
                                              child: Autocomplete<String>(
                                                initialValue:
                                                    TextEditingValue(),
                                                optionsBuilder:
                                                    (textEditingValue) {
                                                  if (textEditingValue.text ==
                                                      '') {
                                                    return const Iterable<
                                                        String>.empty();
                                                  }
                                                  return [
                                                    'TOM4\$!@#',
                                                    'fDQS#k6AzRz5hN',
                                                    '@dm1n_t0mas'
                                                  ].where((option) {
                                                    final lowercaseOption =
                                                        option.toLowerCase();
                                                    return lowercaseOption
                                                        .contains(
                                                            textEditingValue
                                                                .text
                                                                .toLowerCase());
                                                  });
                                                },
                                                optionsViewBuilder: (context,
                                                    onSelected, options) {
                                                  return AutocompleteOptionsList(
                                                    textFieldKey:
                                                        _model.textFieldKey2,
                                                    textController:
                                                        _model.textController2!,
                                                    options: options.toList(),
                                                    onSelected: onSelected,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    textHighlightStyle:
                                                        TextStyle(),
                                                    elevation: 4.0,
                                                    optionBackgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    optionHighlightColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground,
                                                    maxHeight: 200.0,
                                                  );
                                                },
                                                onSelected: (String selection) {
                                                  setState(() => _model
                                                          .textFieldSelectedOption2 =
                                                      selection);
                                                  FocusScope.of(context)
                                                      .unfocus();
                                                },
                                                fieldViewBuilder: (
                                                  context,
                                                  textEditingController,
                                                  focusNode,
                                                  onEditingComplete,
                                                ) {
                                                  _model.textController2 =
                                                      textEditingController;
                                                  return TextFormField(
                                                    key: _model.textFieldKey2,
                                                    controller:
                                                        textEditingController,
                                                    focusNode: focusNode,
                                                    onEditingComplete:
                                                        onEditingComplete,
                                                    onChanged: (_) =>
                                                        EasyDebounce.debounce(
                                                      '_model.textController2',
                                                      Duration(
                                                          milliseconds: 1000),
                                                      () => setState(() {}),
                                                    ),
                                                    autofocus: true,
                                                    obscureText: !_model
                                                        .passwordVisibility,
                                                    decoration: InputDecoration(
                                                      labelText: 'Password',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                      enabledBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xCDC5C5C5),
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      errorBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      contentPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  30.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      suffixIcon: InkWell(
                                                        onTap: () => setState(
                                                          () => _model
                                                                  .passwordVisibility =
                                                              !_model
                                                                  .passwordVisibility,
                                                        ),
                                                        focusNode: FocusNode(
                                                            skipTraversal:
                                                                true),
                                                        child: Icon(
                                                          _model.passwordVisibility
                                                              ? Icons
                                                                  .visibility_outlined
                                                              : Icons
                                                                  .visibility_off_outlined,
                                                          size: 22,
                                                        ),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                    textAlign: TextAlign.center,
                                                    keyboardType: TextInputType
                                                        .visiblePassword,
                                                    validator: _model
                                                        .textController2Validator
                                                        .asValidator(context),
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                          FlutterFlowCheckboxGroup(
                                            options: ['remember login'],
                                            onChanged: (val) => setState(() =>
                                                _model.checkboxGroupValues =
                                                    val),
                                            controller: _model
                                                    .checkboxGroupValueController ??=
                                                FormFieldController<
                                                    List<String>>(
                                              [],
                                            ),
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            checkboxBorderColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: Colors.white,
                                                    ),
                                            itemPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    35.0, 0.0, 0.0, 0.0),
                                            checkboxBorderRadius:
                                                BorderRadius.circular(4.0),
                                            initialized:
                                                _model.checkboxGroupValues !=
                                                    null,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 40.0, 0.0, 40.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                _model.apiResult2ur =
                                                    await LoginCall.call(
                                                  userName: functions.uriencode(
                                                      functions.addprefixtnb(
                                                          _model.textController1
                                                              .text,
                                                          'tnb\\')),
                                                  password: functions.uriencode(
                                                      _model.textController2
                                                          .text),
                                                  urlendpoint:
                                                      FFAppState().urlendpoint,
                                                );
                                                if ((_model.apiResult2ur
                                                        ?.succeeded ??
                                                    true)) {
                                                  _model.getuserinfo2 =
                                                      await GetuserinfoCall
                                                          .call(
                                                    loginame: functions
                                                        .tokentousername(
                                                            getJsonField(
                                                      (_model.apiResult2ur
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.token''',
                                                    ).toString()),
                                                    urlendpoint: FFAppState()
                                                        .urlendpoint,
                                                  );
                                                  _model.getobjecttype =
                                                      await GetObjectTypeCall
                                                          .call(
                                                    urlendpoint: FFAppState()
                                                        .urlendpoint,
                                                  );
                                                  _model.getcountry =
                                                      await GetCountryCall.call(
                                                    urlendpoint: FFAppState()
                                                        .urlendpoint,
                                                  );
                                                  _model.getmainworkcenter =
                                                      await GetMainWorkCenterCall
                                                          .call(
                                                    urlendpoint: FFAppState()
                                                        .urlendpoint,
                                                  );
                                                  _model.getplannergroup =
                                                      await GetPlannerGroupCall
                                                          .call(
                                                    urlendpoint: FFAppState()
                                                        .urlendpoint,
                                                  );
                                                  _model.getlistclass =
                                                      await GetListClassCall
                                                          .call(
                                                    urlendpoint: FFAppState()
                                                        .urlendpoint,
                                                  );
                                                  FFAppState().token =
                                                      getJsonField(
                                                    (_model.apiResult2ur
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.token''',
                                                  ).toString();
                                                  FFAppState().alluserinfo =
                                                      getJsonField(
                                                    (_model.getuserinfo2
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$[0]''',
                                                  );
                                                  FFAppState().objecttype =
                                                      getJsonField(
                                                    (_model.getobjecttype
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$[:]''',
                                                  )!
                                                          .toList()
                                                          .cast<dynamic>();
                                                  FFAppState().country = (_model
                                                              .getcountry
                                                              ?.jsonBody ??
                                                          '')
                                                      .toList()
                                                      .cast<dynamic>();
                                                  FFAppState().mainworkcenter =
                                                      getJsonField(
                                                    (_model.getmainworkcenter
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$[:]''',
                                                  )!
                                                          .toList()
                                                          .cast<dynamic>();
                                                  FFAppState().getplannergroup =
                                                      getJsonField(
                                                    (_model.getplannergroup
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$[:]''',
                                                  )!
                                                          .toList()
                                                          .cast<dynamic>();
                                                  FFAppState().listofclass =
                                                      getJsonField(
                                                    (_model.getlistclass
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$[:]''',
                                                  )!
                                                          .toList()
                                                          .cast<dynamic>();

                                                  context.pushNamed('Home');
                                                }

                                                setState(() {});
                                              },
                                              text: 'Sign In',
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40.0, 0.0, 40.0, 0.0),
                                            child: Text(
                                              'Copyright © 2023 Tenaga Nasional Berhad. All rights reserved. This software, including its source code, documentation, and accompanying files, is the exclusive property of Tenaga Nasional Berhad. Unauthorized reproduction, distribution, or modification of this software in any form is strictly prohibited. Any use of this software without prior written permission from Tenaga Nasional Berhad is subject to legal action and may result in severe civil and criminal penalties.',
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.white,
                                                        fontSize: 10.0,
                                                      ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 10.0, 10.0, 10.0),
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .urlValueController ??=
                                                    FormFieldController<String>(
                                                  _model.urlValue ??=
                                                      FFAppState().urlendpoint,
                                                ),
                                                options: [
                                                  'https://mammtnbapi.ap.ngrok.io',
                                                  'https://mammtnbapi2.ap.ngrok.io',
                                                  'http://10.215.70.54:5101',
                                                  'http://10.215.70.54:5102'
                                                ],
                                                optionLabels: [
                                                  'public endpoint 1',
                                                  'public endpoint 2',
                                                  'internal endpoint 1',
                                                  'internal endpoint 2'
                                                ],
                                                onChanged: (val) async {
                                                  setState(() =>
                                                      _model.urlValue = val);
                                                  FFAppState().urlendpoint =
                                                      _model.urlValue!;
                                                },
                                                height: 30.0,
                                                searchHintTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                hintText: 'url connection',
                                                searchHintText:
                                                    'Search for an item...',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor: Colors.white,
                                                elevation: 2.0,
                                                borderColor: Color(0x2757636C),
                                                borderWidth: 1.0,
                                                borderRadius: 5.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isSearchable: true,
                                              ),
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 2.0)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
