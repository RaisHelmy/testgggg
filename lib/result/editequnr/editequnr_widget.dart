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
import 'editequnr_model.dart';
export 'editequnr_model.dart';

class EditequnrWidget extends StatefulWidget {
  const EditequnrWidget({
    Key? key,
    String? equnr,
    String? eqktu,
    String? eqart,
    this.classheadercode,
    String? inbdt,
    String? herst,
    String? typbz,
    this.herld,
    this.pltxt,
    this.mainworkcentercode,
    this.tplnr,
    this.ingrp,
    this.serge,
    String? baujj,
    String? baumm,
    this.anlnr,
    this.kostl,
    this.imagefilename,
  })  : this.equnr = equnr ?? 'null',
        this.eqktu = eqktu ?? 'null',
        this.eqart = eqart ?? 'null',
        this.inbdt = inbdt ?? 'null',
        this.herst = herst ?? 'null',
        this.typbz = typbz ?? 'null',
        this.baujj = baujj ?? '2023',
        this.baumm = baumm ?? '12',
        super(key: key);

  final String equnr;
  final String eqktu;
  final String eqart;
  final List<String>? classheadercode;
  final String inbdt;
  final String herst;
  final String typbz;
  final String? herld;
  final String? pltxt;
  final String? mainworkcentercode;
  final String? tplnr;
  final String? ingrp;
  final String? serge;
  final String baujj;
  final String baumm;
  final String? anlnr;
  final String? kostl;
  final String? imagefilename;

  @override
  _EditequnrWidgetState createState() => _EditequnrWidgetState();
}

class _EditequnrWidgetState extends State<EditequnrWidget> {
  late EditequnrModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditequnrModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.functionallocation = widget.tplnr;
      });
    });

    _model.eqktuorequipmentdescriptionController ??=
        TextEditingController(text: widget.eqktu);
    _model.herstormanufacturerController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.herst,
      'null',
    ));
    _model.typbzormodelnumberController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.typbz,
      'null',
    ));
    _model.sergeormanufacturerserialnumberController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.serge,
      'null',
    ));
    _model.anlnrorassetnoController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.anlnr,
      'null',
    ));
    _model.functionallocationController ??=
        TextEditingController(text: widget.tplnr);
    _model.functionallocationdescriptionController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.pltxt,
      'null',
    ));
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
              context.pop();
            },
          ),
          title: Text(
            'Edit Equipment',
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await CreateEquipmentCall.call(
                          eqno: widget.equnr,
                          fl: functions.uriencode(_model.functionallocation!),
                          fldesc: functions.uriencode(_model
                              .functionallocationdescriptionController.text),
                          eqdesc: functions.uriencode(_model
                              .eqktuorequipmentdescriptionController.text),
                          manufacturer: functions.uriencode(
                              _model.herstormanufacturerController.text),
                          modelno: functions.uriencode(
                              _model.typbzormodelnumberController.text),
                          serialno: functions.uriencode(_model
                              .sergeormanufacturerserialnumberController.text),
                          countrycode: functions.uriencode(
                              _model.dropdowncountrycodeofmanufacturerValue!),
                          baujj: _model.baujjValue,
                          baumm: _model.baummValue,
                          uid: getJsonField(
                            FFAppState().alluserinfo,
                            r'''$.EmployeeID''',
                          ).toString(),
                          startupdate:
                              '${_model.inbdtyearValue}${_model.inbdtmonthValue}${_model.inbdtdayValue}',
                          countryname: functions.uriencode(getJsonField(
                            functions
                                .jsonfromcode(
                                    FFAppState().country.toList(),
                                    _model
                                        .dropdowncountrycodeofmanufacturerValue!)
                                .first,
                            r'''$.Name''',
                          ).toString()),
                          objcode: functions.uriencode(_model.objectValue!),
                          objdesc: functions.uriencode(getJsonField(
                            FFAppState()
                                .objecttype
                                .where((e) =>
                                    getJsonField(
                                      e,
                                      r'''$.EQART''',
                                    ) ==
                                    _model.objectValue)
                                .toList()
                                .first,
                            r'''$.ObjectTypeText''',
                          ).toString()),
                          plannergroupcode:
                              functions.uriencode(_model.plannergroupValue!),
                          plannergroupdesc: functions.uriencode(getJsonField(
                            functions
                                .jsonfromcode(
                                    FFAppState().getplannergroup.toList(),
                                    _model.plannergroupValue!)
                                .first,
                            r'''$.Name''',
                          ).toString()),
                          mainworkcentercode:
                              functions.uriencode(_model.mainworkcenterValue!),
                          mainworkcenterdesc: functions.uriencode(getJsonField(
                            functions
                                .jsonfromcode(
                                    FFAppState().mainworkcenter.toList(),
                                    _model.mainworkcenterValue!)
                                .first,
                            r'''$.Name''',
                          ).toString()),
                          businessarea: functions.uriencode(getJsonField(
                            functions
                                .jsonfromcode(
                                    FFAppState().mainworkcenter.toList(),
                                    _model.mainworkcenterValue!)
                                .first,
                            r'''$.BusinessArea''',
                          ).toString()),
                          costcenter: functions.uriencode(getJsonField(
                            functions
                                .jsonfromcode(
                                    FFAppState().mainworkcenter.toList(),
                                    _model.mainworkcenterValue!)
                                .first,
                            r'''$.CostCenter''',
                          ).toString()),
                          classheadercode:
                              functions.uriencode(_model.classheaderValue!),
                          photosList: _model.uploadedLocalFiles2,
                          urlendpoint: FFAppState().urlendpoint,
                          charlist: functions.headercombinefromlist(
                              _model.charcodes.toList(),
                              _model.charvalues.toList()),
                        );
                        context.safePop();
                        setState(() {
                          _model.isDataUploading1 = false;
                          _model.uploadedLocalFile1 =
                              FFUploadedFile(bytes: Uint8List.fromList([]));
                        });

                        setState(() {
                          _model.isDataUploading2 = false;
                          _model.uploadedLocalFiles2 = [];
                        });

                        _model.uploadedfile = [];
                        _model.classinfo = [];
                        _model.addclassheader = false;
                      },
                      text: 'Save',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
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
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Container(
                            width: 1080.0,
                            height: 1900.0,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 400.0,
                                  height: 300.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Stack(
                                    children: [
                                      Image.network(
                                        '${FFAppState().urlendpoint}/EquipmentPhoto/testPhoto/${valueOrDefault<String>(
                                          widget.imagefilename,
                                          'energy-electricity_transmission_lines-min.jpg',
                                        )}',
                                        width: 500.0,
                                        height: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                                shape: BoxShape.rectangle,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 5.0,
                                                                5.0, 0.0),
                                                    child: Text(
                                                      'Equipment Detail',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .titleMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            color: Colors.white,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                5.0, 5.0),
                                                    child: Text(
                                                      widget.equnr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .headlineMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Colors.white,
                                                            fontSize: 24.0,
                                                            fontWeight:
                                                                FontWeight.w900,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Flexible(
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      child: DefaultTabController(
                                        length: 5,
                                        initialIndex: 0,
                                        child: Column(
                                          children: [
                                            Align(
                                              alignment: Alignment(0.0, 0),
                                              child: TabBar(
                                                isScrollable: true,
                                                labelColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                unselectedLabelColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                indicatorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                tabs: [
                                                  Tab(
                                                    text: 'GENERAL',
                                                  ),
                                                  Tab(
                                                    text: 'ORGANIZATION',
                                                  ),
                                                  Tab(
                                                    text: 'CLASS INFO',
                                                  ),
                                                  Tab(
                                                    text: 'CHANGE HISTORY',
                                                  ),
                                                  Tab(
                                                    text: 'PHOTOS',
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: TabBarView(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, -1.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, -1.0),
                                                          child:
                                                              SingleChildScrollView(
                                                            primary: false,
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -1.0,
                                                                          -1.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            20.0,
                                                                            20.0,
                                                                            20.0,
                                                                            20.0),
                                                                    child: Text(
                                                                      'Details',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            fontSize:
                                                                                32.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, -1.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: Color(
                                                                        0x2557636C),
                                                                    width: 1.0,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          10.0,
                                                                          10.0,
                                                                          10.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'EQUIPMENT',
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                        ),
                                                                      ),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            widget.equnr,
                                                                            'Auto generated',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                fontWeight: FontWeight.w300,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: Color(
                                                                        0x2757636C),
                                                                    width: 1.0,
                                                                  ),
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          10.0,
                                                                          10.0,
                                                                          10.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Text(
                                                                              'Description',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, -1.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                              child: TextFormField(
                                                                                controller: _model.eqktuorequipmentdescriptionController,
                                                                                autofocus: true,
                                                                                obscureText: false,
                                                                                decoration: InputDecoration(
                                                                                  labelText: 'Description',
                                                                                  labelStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                  hintStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                  enabledBorder: UnderlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0x2757636C),
                                                                                      width: 2.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  focusedBorder: UnderlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      width: 2.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  errorBorder: UnderlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                      width: 2.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  focusedErrorBorder: UnderlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                      width: 2.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                validator: _model.eqktuorequipmentdescriptionControllerValidator.asValidator(context),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: Color(
                                                                        0x2757636C),
                                                                    width: 1.0,
                                                                  ),
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          10.0,
                                                                          10.0,
                                                                          10.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Text(
                                                                              'Object Type',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                                                                              child: FlutterFlowDropDown<String>(
                                                                                controller: _model.objectValueController ??= FormFieldController<String>(
                                                                                  _model.objectValue ??= widget.eqart,
                                                                                ),
                                                                                options: FFAppState()
                                                                                    .objecttype
                                                                                    .map((e) => getJsonField(
                                                                                          e,
                                                                                          r'''$.EQART''',
                                                                                        ))
                                                                                    .toList()
                                                                                    .map((e) => e.toString())
                                                                                    .toList(),
                                                                                optionLabels: FFAppState()
                                                                                    .objecttype
                                                                                    .map((e) => getJsonField(
                                                                                          e,
                                                                                          r'''$.ObjectTypeText''',
                                                                                        ))
                                                                                    .toList()
                                                                                    .map((e) => e.toString())
                                                                                    .toList(),
                                                                                onChanged: (val) => setState(() => _model.objectValue = val),
                                                                                height: 30.0,
                                                                                searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                textStyle: FlutterFlowTheme.of(context).bodyMedium,
                                                                                hintText: 'Object Type',
                                                                                searchHintText: 'Search for an item...',
                                                                                icon: Icon(
                                                                                  Icons.keyboard_arrow_down_rounded,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 24.0,
                                                                                ),
                                                                                elevation: 2.0,
                                                                                borderColor: Color(0x2757636C),
                                                                                borderWidth: 1.0,
                                                                                borderRadius: 5.0,
                                                                                margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                hidesUnderline: true,
                                                                                isSearchable: true,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: Color(
                                                                        0x2757636C),
                                                                    width: 1.0,
                                                                  ),
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          10.0,
                                                                          10.0,
                                                                          10.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Text(
                                                                              'Startup Date',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Text(
                                                                              valueOrDefault<String>(
                                                                                widget.inbdt,
                                                                                'null',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    fontWeight: FontWeight.w300,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                                                                              child: FlutterFlowDropDown<String>(
                                                                                controller: _model.inbdtyearValueController ??= FormFieldController<String>(
                                                                                  _model.inbdtyearValue ??= valueOrDefault<String>(
                                                                                    functions.inbdttoyear(widget.inbdt).toString(),
                                                                                    '2023',
                                                                                  ),
                                                                                ),
                                                                                options: functions.generatefromyear(1950),
                                                                                onChanged: (val) => setState(() => _model.inbdtyearValue = val),
                                                                                height: 30.0,
                                                                                searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                textStyle: FlutterFlowTheme.of(context).bodyMedium,
                                                                                hintText: 'Year',
                                                                                searchHintText: 'Search for an item...',
                                                                                icon: Icon(
                                                                                  Icons.keyboard_arrow_down_rounded,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 24.0,
                                                                                ),
                                                                                elevation: 2.0,
                                                                                borderColor: Color(0x2757636C),
                                                                                borderWidth: 1.0,
                                                                                borderRadius: 5.0,
                                                                                margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                hidesUnderline: true,
                                                                                isSearchable: true,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                                                                              child: FlutterFlowDropDown<String>(
                                                                                controller: _model.inbdtmonthValueController ??= FormFieldController<String>(
                                                                                  _model.inbdtmonthValue ??= valueOrDefault<String>(
                                                                                    functions.inbdttomonth(widget.inbdt).toString(),
                                                                                    '12',
                                                                                  ),
                                                                                ),
                                                                                options: functions
                                                                                    .generatemonth()
                                                                                    .map((e) => getJsonField(
                                                                                          e,
                                                                                          r'''$.value''',
                                                                                        ))
                                                                                    .toList()
                                                                                    .map((e) => e.toString())
                                                                                    .toList(),
                                                                                optionLabels: functions
                                                                                    .generatemonth()
                                                                                    .map((e) => getJsonField(
                                                                                          e,
                                                                                          r'''$.name''',
                                                                                        ))
                                                                                    .toList()
                                                                                    .map((e) => e.toString())
                                                                                    .toList(),
                                                                                onChanged: (val) => setState(() => _model.inbdtmonthValue = val),
                                                                                height: 30.0,
                                                                                searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                textStyle: FlutterFlowTheme.of(context).bodyMedium,
                                                                                hintText: 'Month',
                                                                                searchHintText: 'Search for an item...',
                                                                                icon: Icon(
                                                                                  Icons.keyboard_arrow_down_rounded,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 24.0,
                                                                                ),
                                                                                elevation: 2.0,
                                                                                borderColor: Color(0x2757636C),
                                                                                borderWidth: 1.0,
                                                                                borderRadius: 5.0,
                                                                                margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                hidesUnderline: true,
                                                                                isSearchable: true,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                                                                              child: FlutterFlowDropDown<String>(
                                                                                controller: _model.inbdtdayValueController ??= FormFieldController<String>(
                                                                                  _model.inbdtdayValue ??= valueOrDefault<String>(
                                                                                    functions.inbdttoday(widget.inbdt).toString(),
                                                                                    '30',
                                                                                  ),
                                                                                ),
                                                                                options: functions.generateday(
                                                                                    valueOrDefault<String>(
                                                                                      _model.baujjValue,
                                                                                      '2023',
                                                                                    ),
                                                                                    valueOrDefault<String>(
                                                                                      _model.inbdtmonthValue,
                                                                                      '12',
                                                                                    )),
                                                                                onChanged: (val) => setState(() => _model.inbdtdayValue = val),
                                                                                height: 30.0,
                                                                                searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                textStyle: FlutterFlowTheme.of(context).bodyMedium,
                                                                                hintText: 'Day',
                                                                                searchHintText: 'Search for an item...',
                                                                                icon: Icon(
                                                                                  Icons.keyboard_arrow_down_rounded,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 24.0,
                                                                                ),
                                                                                elevation: 2.0,
                                                                                borderColor: Color(0x2757636C),
                                                                                borderWidth: 1.0,
                                                                                borderRadius: 5.0,
                                                                                margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                hidesUnderline: true,
                                                                                isSearchable: true,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: Color(
                                                                        0x2757636C),
                                                                    width: 1.0,
                                                                  ),
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          10.0,
                                                                          10.0,
                                                                          10.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Text(
                                                                              'Manufacturer',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, -1.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                              child: TextFormField(
                                                                                controller: _model.herstormanufacturerController,
                                                                                autofocus: true,
                                                                                obscureText: false,
                                                                                decoration: InputDecoration(
                                                                                  labelText: 'Manufacturer/ Maker',
                                                                                  labelStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                  hintStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                  enabledBorder: UnderlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0x2757636C),
                                                                                      width: 2.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  focusedBorder: UnderlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      width: 2.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  errorBorder: UnderlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                      width: 2.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  focusedErrorBorder: UnderlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                      width: 2.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                validator: _model.herstormanufacturerControllerValidator.asValidator(context),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: Color(
                                                                        0x2757636C),
                                                                    width: 1.0,
                                                                  ),
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          10.0,
                                                                          10.0,
                                                                          10.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Text(
                                                                              'Model Number',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, -1.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                              child: TextFormField(
                                                                                controller: _model.typbzormodelnumberController,
                                                                                autofocus: true,
                                                                                obscureText: false,
                                                                                decoration: InputDecoration(
                                                                                  labelText: 'Model Number',
                                                                                  labelStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                  hintStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                  enabledBorder: UnderlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0x2757636C),
                                                                                      width: 2.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  focusedBorder: UnderlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      width: 2.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  errorBorder: UnderlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                      width: 2.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  focusedErrorBorder: UnderlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                      width: 2.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                validator: _model.typbzormodelnumberControllerValidator.asValidator(context),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: Color(
                                                                        0x2757636C),
                                                                    width: 1.0,
                                                                  ),
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          10.0,
                                                                          10.0,
                                                                          10.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Text(
                                                                              'Manufacturer Serial Number',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, -1.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                              child: TextFormField(
                                                                                controller: _model.sergeormanufacturerserialnumberController,
                                                                                autofocus: true,
                                                                                obscureText: false,
                                                                                decoration: InputDecoration(
                                                                                  labelText: 'Description',
                                                                                  labelStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                  hintStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                  enabledBorder: UnderlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0x2757636C),
                                                                                      width: 2.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  focusedBorder: UnderlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      width: 2.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  errorBorder: UnderlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                      width: 2.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  focusedErrorBorder: UnderlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                      width: 2.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                validator: _model.sergeormanufacturerserialnumberControllerValidator.asValidator(context),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: Color(
                                                                        0x2757636C),
                                                                    width: 1.0,
                                                                  ),
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          10.0,
                                                                          10.0,
                                                                          10.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Text(
                                                                              'Country of Manufacturer',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                                                                              child: FlutterFlowDropDown<String>(
                                                                                controller: _model.dropdowncountrycodeofmanufacturerValueController ??= FormFieldController<String>(
                                                                                  _model.dropdowncountrycodeofmanufacturerValue ??= widget.herld,
                                                                                ),
                                                                                options: FFAppState()
                                                                                    .country
                                                                                    .map((e) => getJsonField(
                                                                                          e,
                                                                                          r'''$.Code''',
                                                                                        ))
                                                                                    .toList()
                                                                                    .map((e) => e.toString())
                                                                                    .toList(),
                                                                                optionLabels: functions.combinelist(
                                                                                    FFAppState()
                                                                                        .country
                                                                                        .map((e) => getJsonField(
                                                                                              e,
                                                                                              r'''$.Code''',
                                                                                            ))
                                                                                        .toList()
                                                                                        .map((e) => e.toString())
                                                                                        .toList(),
                                                                                    FFAppState()
                                                                                        .country
                                                                                        .map((e) => getJsonField(
                                                                                              e,
                                                                                              r'''$.Name''',
                                                                                            ))
                                                                                        .toList()
                                                                                        .map((e) => e.toString())
                                                                                        .toList(),
                                                                                    '  -  ')!,
                                                                                onChanged: (val) => setState(() => _model.dropdowncountrycodeofmanufacturerValue = val),
                                                                                height: 30.0,
                                                                                searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                textStyle: FlutterFlowTheme.of(context).bodyMedium,
                                                                                hintText: 'Country',
                                                                                searchHintText: 'Search for an item...',
                                                                                icon: Icon(
                                                                                  Icons.keyboard_arrow_down_rounded,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  size: 24.0,
                                                                                ),
                                                                                elevation: 2.0,
                                                                                borderColor: Color(0x2757636C),
                                                                                borderWidth: 1.0,
                                                                                borderRadius: 5.0,
                                                                                margin: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 16.0, 4.0),
                                                                                hidesUnderline: true,
                                                                                isSearchable: true,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: Color(
                                                                        0x2757636C),
                                                                    width: 1.0,
                                                                  ),
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          10.0,
                                                                          10.0,
                                                                          10.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Text(
                                                                              'Construction Year/Month',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            10.0,
                                                                            10.0,
                                                                            10.0),
                                                                        child: FlutterFlowDropDown<
                                                                            String>(
                                                                          controller: _model.baujjValueController ??=
                                                                              FormFieldController<String>(
                                                                            _model.baujjValue ??=
                                                                                widget.baujj,
                                                                          ),
                                                                          options:
                                                                              functions.generatefromyear(1950),
                                                                          onChanged: (val) =>
                                                                              setState(() => _model.baujjValue = val),
                                                                          height:
                                                                              30.0,
                                                                          searchHintTextStyle:
                                                                              FlutterFlowTheme.of(context).labelMedium,
                                                                          textStyle:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                          hintText:
                                                                              'Year',
                                                                          searchHintText:
                                                                              'Search for an item...',
                                                                          icon:
                                                                              Icon(
                                                                            Icons.keyboard_arrow_down_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          elevation:
                                                                              2.0,
                                                                          borderColor:
                                                                              Color(0x2757636C),
                                                                          borderWidth:
                                                                              1.0,
                                                                          borderRadius:
                                                                              5.0,
                                                                          margin: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              4.0,
                                                                              16.0,
                                                                              4.0),
                                                                          hidesUnderline:
                                                                              true,
                                                                          isSearchable:
                                                                              true,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            10.0,
                                                                            10.0,
                                                                            10.0),
                                                                        child: FlutterFlowDropDown<
                                                                            String>(
                                                                          controller: _model.baummValueController ??=
                                                                              FormFieldController<String>(
                                                                            _model.baummValue ??=
                                                                                widget.baumm,
                                                                          ),
                                                                          options: functions
                                                                              .generatemonth()
                                                                              .map((e) => getJsonField(
                                                                                    e,
                                                                                    r'''$.value''',
                                                                                  ))
                                                                              .toList()
                                                                              .map((e) => e.toString())
                                                                              .toList(),
                                                                          optionLabels: functions
                                                                              .generatemonth()
                                                                              .map((e) => getJsonField(
                                                                                    e,
                                                                                    r'''$.name''',
                                                                                  ))
                                                                              .toList()
                                                                              .map((e) => e.toString())
                                                                              .toList(),
                                                                          onChanged: (val) =>
                                                                              setState(() => _model.baummValue = val),
                                                                          height:
                                                                              30.0,
                                                                          searchHintTextStyle:
                                                                              FlutterFlowTheme.of(context).labelMedium,
                                                                          textStyle:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                          hintText:
                                                                              'Month',
                                                                          searchHintText:
                                                                              'Search for an item...',
                                                                          icon:
                                                                              Icon(
                                                                            Icons.keyboard_arrow_down_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          elevation:
                                                                              2.0,
                                                                          borderColor:
                                                                              Color(0x2757636C),
                                                                          borderWidth:
                                                                              1.0,
                                                                          borderRadius:
                                                                              5.0,
                                                                          margin: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              4.0,
                                                                              16.0,
                                                                              4.0),
                                                                          hidesUnderline:
                                                                              true,
                                                                          isSearchable:
                                                                              true,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, -1.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, -1.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        20.0,
                                                                        20.0,
                                                                        20.0),
                                                            child: Text(
                                                              'Details',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontSize:
                                                                        32.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.0),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0x2557636C),
                                                                  width: 1.0,
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        10.0,
                                                                        10.0,
                                                                        10.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          Text(
                                                                        'Business Area',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          Text(
                                                                        'Auto Populated based on Main Work Center',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              fontWeight: FontWeight.w300,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          _model.mainworkcenterValue != null && _model.mainworkcenterValue != ''
                                                                              ? getJsonField(
                                                                                  FFAppState()
                                                                                      .mainworkcenter
                                                                                      .where((e) =>
                                                                                          getJsonField(
                                                                                            e,
                                                                                            r'''$.Code''',
                                                                                          ) ==
                                                                                          _model.mainworkcenterValue)
                                                                                      .toList()
                                                                                      .first,
                                                                                  r'''$.BusinessArea''',
                                                                                ).toString()
                                                                              : 'null',
                                                                          'null',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              fontSize: 16.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.0),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0x2757636C),
                                                                  width: 1.0,
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        10.0,
                                                                        10.0,
                                                                        10.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          Text(
                                                                        'Asset',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment: AlignmentDirectional(
                                                                          -1.0,
                                                                          -1.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                        child:
                                                                            TextFormField(
                                                                          controller:
                                                                              _model.anlnrorassetnoController,
                                                                          autofocus:
                                                                              true,
                                                                          obscureText:
                                                                              false,
                                                                          decoration:
                                                                              InputDecoration(
                                                                            labelText:
                                                                                'Asset No',
                                                                            labelStyle:
                                                                                FlutterFlowTheme.of(context).labelMedium,
                                                                            hintStyle:
                                                                                FlutterFlowTheme.of(context).labelMedium,
                                                                            enabledBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: Color(0x2757636C),
                                                                                width: 2.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            focusedBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                width: 2.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            errorBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                width: 2.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            focusedErrorBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                width: 2.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                20.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                          validator: _model
                                                                              .anlnrorassetnoControllerValidator
                                                                              .asValidator(context),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.0),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0x2757636C),
                                                                  width: 1.0,
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        10.0,
                                                                        10.0,
                                                                        10.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          Text(
                                                                        'Cost Center',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          Text(
                                                                        'Auto Populated based on Main Work Center',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              fontWeight: FontWeight.w300,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          _model.mainworkcenterValue != null && _model.mainworkcenterValue != ''
                                                                              ? getJsonField(
                                                                                  FFAppState()
                                                                                      .mainworkcenter
                                                                                      .where((e) =>
                                                                                          getJsonField(
                                                                                            e,
                                                                                            r'''$.Code''',
                                                                                          ) ==
                                                                                          _model.mainworkcenterValue)
                                                                                      .toList()
                                                                                      .first,
                                                                                  r'''$.CostCenter''',
                                                                                ).toString()
                                                                              : 'null',
                                                                          'null',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              fontSize: 16.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.0),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0x2757636C),
                                                                  width: 1.0,
                                                                ),
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            10.0,
                                                                            10.0,
                                                                            10.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Planner Group',
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          10.0,
                                                                          10.0,
                                                                          10.0),
                                                                      child: FlutterFlowDropDown<
                                                                          String>(
                                                                        controller:
                                                                            _model.plannergroupValueController ??=
                                                                                FormFieldController<String>(
                                                                          _model.plannergroupValue ??=
                                                                              widget.ingrp,
                                                                        ),
                                                                        options: FFAppState()
                                                                            .getplannergroup
                                                                            .map((e) => getJsonField(
                                                                                  e,
                                                                                  r'''$.Code''',
                                                                                ))
                                                                            .toList()
                                                                            .map((e) => e.toString())
                                                                            .toList(),
                                                                        optionLabels: functions.combinelist(
                                                                            FFAppState()
                                                                                .getplannergroup
                                                                                .map((e) => getJsonField(
                                                                                      e,
                                                                                      r'''$.Code''',
                                                                                    ))
                                                                                .toList()
                                                                                .map((e) => e.toString())
                                                                                .toList(),
                                                                            FFAppState()
                                                                                .getplannergroup
                                                                                .map((e) => getJsonField(
                                                                                      e,
                                                                                      r'''$.Name''',
                                                                                    ))
                                                                                .toList()
                                                                                .map((e) => e.toString())
                                                                                .toList(),
                                                                            '  -  ')!,
                                                                        onChanged:
                                                                            (val) =>
                                                                                setState(() => _model.plannergroupValue = val),
                                                                        height:
                                                                            30.0,
                                                                        searchHintTextStyle:
                                                                            FlutterFlowTheme.of(context).labelMedium,
                                                                        textStyle:
                                                                            FlutterFlowTheme.of(context).bodyMedium,
                                                                        hintText:
                                                                            'Planner Group',
                                                                        searchHintText:
                                                                            'Search for an item...',
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .keyboard_arrow_down_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        elevation:
                                                                            2.0,
                                                                        borderColor:
                                                                            Color(0x2757636C),
                                                                        borderWidth:
                                                                            1.0,
                                                                        borderRadius:
                                                                            5.0,
                                                                        margin: EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            4.0,
                                                                            16.0,
                                                                            4.0),
                                                                        hidesUnderline:
                                                                            true,
                                                                        isSearchable:
                                                                            true,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.0),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0x2757636C),
                                                                  width: 1.0,
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        10.0,
                                                                        10.0,
                                                                        10.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          Text(
                                                                        'Main Work Center',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            10.0,
                                                                            10.0,
                                                                            10.0),
                                                                        child: FlutterFlowDropDown<
                                                                            String>(
                                                                          controller: _model.mainworkcenterValueController ??=
                                                                              FormFieldController<String>(
                                                                            _model.mainworkcenterValue ??=
                                                                                widget.mainworkcentercode,
                                                                          ),
                                                                          options: FFAppState()
                                                                              .mainworkcenter
                                                                              .map((e) => getJsonField(
                                                                                    e,
                                                                                    r'''$.Code''',
                                                                                  ))
                                                                              .toList()
                                                                              .map((e) => e.toString())
                                                                              .toList(),
                                                                          optionLabels: functions.combinelist(
                                                                              FFAppState()
                                                                                  .mainworkcenter
                                                                                  .map((e) => getJsonField(
                                                                                        e,
                                                                                        r'''$.Code''',
                                                                                      ))
                                                                                  .toList()
                                                                                  .map((e) => e.toString())
                                                                                  .toList(),
                                                                              FFAppState()
                                                                                  .mainworkcenter
                                                                                  .map((e) => getJsonField(
                                                                                        e,
                                                                                        r'''$.Name''',
                                                                                      ))
                                                                                  .toList()
                                                                                  .map((e) => e.toString())
                                                                                  .toList(),
                                                                              '  -  ')!,
                                                                          onChanged: (val) =>
                                                                              setState(() => _model.mainworkcenterValue = val),
                                                                          height:
                                                                              30.0,
                                                                          searchHintTextStyle:
                                                                              FlutterFlowTheme.of(context).labelMedium,
                                                                          textStyle:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                          hintText:
                                                                              'Main Work Center',
                                                                          searchHintText:
                                                                              'Search for an item...',
                                                                          icon:
                                                                              Icon(
                                                                            Icons.keyboard_arrow_down_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          elevation:
                                                                              2.0,
                                                                          borderColor:
                                                                              Color(0x2757636C),
                                                                          borderWidth:
                                                                              1.0,
                                                                          borderRadius:
                                                                              5.0,
                                                                          margin: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              4.0,
                                                                              16.0,
                                                                              4.0),
                                                                          hidesUnderline:
                                                                              true,
                                                                          isSearchable:
                                                                              true,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.0),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0x2757636C),
                                                                  width: 1.0,
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        10.0,
                                                                        10.0,
                                                                        10.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          Text(
                                                                        'Functional Location',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                      ),
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              10.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              FlutterFlowDropDown<String>(
                                                                            controller: _model.zoneValueController ??=
                                                                                FormFieldController<String>(
                                                                              _model.zoneValue ??= '',
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
                                                                            onChanged:
                                                                                (val) async {
                                                                              setState(() => _model.zoneValue = val);
                                                                              _model.getSubzoned = await GetSubZonefromJsonCall.call(
                                                                                zone: getJsonField(
                                                                                  FFAppState()
                                                                                      .zone
                                                                                      .where((e) =>
                                                                                          getJsonField(
                                                                                            e,
                                                                                            r'''$.Value''',
                                                                                          ) ==
                                                                                          _model.zoneValue)
                                                                                      .toList()
                                                                                      .first,
                                                                                  r'''$.ID''',
                                                                                ).toString(),
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
                                                                            width:
                                                                                300.0,
                                                                            height:
                                                                                50.0,
                                                                            searchHintTextStyle:
                                                                                FlutterFlowTheme.of(context).labelMedium,
                                                                            textStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                            hintText:
                                                                                'Zone',
                                                                            searchHintText:
                                                                                'Search for Zone...',
                                                                            icon:
                                                                                Icon(
                                                                              Icons.keyboard_arrow_down_rounded,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                            fillColor:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            elevation:
                                                                                1.0,
                                                                            borderColor:
                                                                                Color(0xFFC5C5C5),
                                                                            borderWidth:
                                                                                1.0,
                                                                            borderRadius:
                                                                                5.0,
                                                                            margin: EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                4.0,
                                                                                16.0,
                                                                                4.0),
                                                                            hidesUnderline:
                                                                                true,
                                                                            isSearchable:
                                                                                true,
                                                                          ),
                                                                        ),
                                                                        FlutterFlowDropDown<
                                                                            String>(
                                                                          controller: _model.subzoneValueController ??=
                                                                              FormFieldController<String>(
                                                                            _model.subzoneValue ??=
                                                                                '',
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
                                                                          onChanged:
                                                                              (val) async {
                                                                            setState(() =>
                                                                                _model.subzoneValue = val);
                                                                            _model.apiResulth25 =
                                                                                await GetSubstationfromJsonCall.call(
                                                                              subzoneINGRP: _model.subzoneValue,
                                                                            );
                                                                            if ((_model.apiResulth25?.succeeded ??
                                                                                true)) {
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
                                                                          width:
                                                                              300.0,
                                                                          height:
                                                                              50.0,
                                                                          searchHintTextStyle:
                                                                              FlutterFlowTheme.of(context).labelMedium,
                                                                          textStyle:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                          hintText:
                                                                              'Subzone',
                                                                          searchHintText:
                                                                              'Search for an item...',
                                                                          icon:
                                                                              Icon(
                                                                            Icons.keyboard_arrow_down_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          fillColor:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          elevation:
                                                                              1.0,
                                                                          borderColor:
                                                                              Color(0xFFC5C5C5),
                                                                          borderWidth:
                                                                              1.0,
                                                                          borderRadius:
                                                                              5.0,
                                                                          margin: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              4.0,
                                                                              16.0,
                                                                              4.0),
                                                                          hidesUnderline:
                                                                              true,
                                                                          isSearchable:
                                                                              true,
                                                                        ),
                                                                        FlutterFlowDropDown<
                                                                            String>(
                                                                          controller: _model.substationValueController ??=
                                                                              FormFieldController<String>(
                                                                            _model.substationValue ??=
                                                                                '',
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
                                                                          onChanged:
                                                                              (val) async {
                                                                            setState(() =>
                                                                                _model.substationValue = val);
                                                                            _model.apiResultvfb =
                                                                                await GetBayCall.call(
                                                                              substationFL: _model.substationValue,
                                                                            );
                                                                            if ((_model.apiResultvfb?.succeeded ??
                                                                                true)) {
                                                                              setState(() {
                                                                                _model.functionallocation = _model.functionallocation;
                                                                              });
                                                                            }

                                                                            setState(() {});
                                                                          },
                                                                          width:
                                                                              300.0,
                                                                          height:
                                                                              50.0,
                                                                          searchHintTextStyle:
                                                                              FlutterFlowTheme.of(context).labelMedium,
                                                                          textStyle:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                          hintText:
                                                                              'Substation',
                                                                          searchHintText:
                                                                              'Search for an item...',
                                                                          icon:
                                                                              Icon(
                                                                            Icons.keyboard_arrow_down_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          fillColor:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          elevation:
                                                                              1.0,
                                                                          borderColor:
                                                                              Color(0xFFC5C5C5),
                                                                          borderWidth:
                                                                              1.0,
                                                                          borderRadius:
                                                                              5.0,
                                                                          margin: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              4.0,
                                                                              16.0,
                                                                              4.0),
                                                                          hidesUnderline:
                                                                              true,
                                                                          isSearchable:
                                                                              true,
                                                                        ),
                                                                        FlutterFlowDropDown<
                                                                            String>(
                                                                          controller: _model.bayValueController ??=
                                                                              FormFieldController<String>(
                                                                            _model.bayValue ??=
                                                                                '',
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
                                                                          onChanged:
                                                                              (val) async {
                                                                            setState(() =>
                                                                                _model.bayValue = val);
                                                                            setState(() {
                                                                              _model.functionallocation = '${_model.substationValue}/${_model.bayValue}';
                                                                            });
                                                                          },
                                                                          width:
                                                                              300.0,
                                                                          height:
                                                                              50.0,
                                                                          searchHintTextStyle:
                                                                              FlutterFlowTheme.of(context).labelMedium,
                                                                          textStyle:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                          hintText:
                                                                              'Bay',
                                                                          searchHintText:
                                                                              'Search for an item...',
                                                                          icon:
                                                                              Icon(
                                                                            Icons.keyboard_arrow_down_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          fillColor:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          elevation:
                                                                              1.0,
                                                                          borderColor:
                                                                              Color(0xFFC5C5C5),
                                                                          borderWidth:
                                                                              1.0,
                                                                          borderRadius:
                                                                              5.0,
                                                                          margin: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              4.0,
                                                                              16.0,
                                                                              4.0),
                                                                          hidesUnderline:
                                                                              true,
                                                                          isSearchable:
                                                                              true,
                                                                        ),
                                                                        FlutterFlowDropDown<
                                                                            String>(
                                                                          controller: _model.primarysecondaryValueController ??=
                                                                              FormFieldController<String>(
                                                                            _model.primarysecondaryValue ??=
                                                                                '',
                                                                          ),
                                                                          options: [
                                                                            'AA',
                                                                            'AB'
                                                                          ],
                                                                          optionLabels: [
                                                                            'AA  -  Primary',
                                                                            'AB  -  Secondary'
                                                                          ],
                                                                          onChanged:
                                                                              (val) async {
                                                                            setState(() =>
                                                                                _model.primarysecondaryValue = val);
                                                                            setState(() {
                                                                              _model.functionallocation = '${_model.substationValue}/${_model.bayValue}/${_model.primarysecondaryValue}';
                                                                            });
                                                                          },
                                                                          width:
                                                                              300.0,
                                                                          height:
                                                                              50.0,
                                                                          searchHintTextStyle:
                                                                              FlutterFlowTheme.of(context).labelMedium,
                                                                          textStyle:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                          hintText:
                                                                              'Primary / Secondary',
                                                                          searchHintText:
                                                                              'Search for an item...',
                                                                          icon:
                                                                              Icon(
                                                                            Icons.keyboard_arrow_down_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          fillColor:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          elevation:
                                                                              1.0,
                                                                          borderColor:
                                                                              Color(0xFFC5C5C5),
                                                                          borderWidth:
                                                                              1.0,
                                                                          borderRadius:
                                                                              5.0,
                                                                          margin: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              4.0,
                                                                              16.0,
                                                                              4.0),
                                                                          hidesUnderline:
                                                                              true,
                                                                          isSearchable:
                                                                              true,
                                                                        ),
                                                                        FlutterFlowDropDown<
                                                                            String>(
                                                                          controller: _model.objecttypeValueController ??=
                                                                              FormFieldController<String>(
                                                                            _model.objecttypeValue ??=
                                                                                '',
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
                                                                          onChanged:
                                                                              (val) async {
                                                                            setState(() =>
                                                                                _model.objecttypeValue = val);
                                                                            setState(() {
                                                                              _model.functionallocation = '${_model.substationValue}/${_model.bayValue}/${_model.primarysecondaryValue}/${_model.objecttypeValue}';
                                                                            });
                                                                          },
                                                                          width:
                                                                              300.0,
                                                                          height:
                                                                              50.0,
                                                                          searchHintTextStyle:
                                                                              FlutterFlowTheme.of(context).labelMedium,
                                                                          textStyle:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                          hintText:
                                                                              'Object Type',
                                                                          searchHintText:
                                                                              'Search for an item...',
                                                                          icon:
                                                                              Icon(
                                                                            Icons.keyboard_arrow_down_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          fillColor:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          elevation:
                                                                              1.0,
                                                                          borderColor:
                                                                              Color(0xFFC5C5C5),
                                                                          borderWidth:
                                                                              1.0,
                                                                          borderRadius:
                                                                              5.0,
                                                                          margin: EdgeInsetsDirectional.fromSTEB(
                                                                              16.0,
                                                                              4.0,
                                                                              16.0,
                                                                              4.0),
                                                                          hidesUnderline:
                                                                              true,
                                                                          isSearchable:
                                                                              true,
                                                                        ),
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              -1.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                10.0,
                                                                                8.0,
                                                                                0.0),
                                                                            child:
                                                                                TextFormField(
                                                                              controller: _model.functionallocationController,
                                                                              onChanged: (_) => EasyDebounce.debounce(
                                                                                '_model.functionallocationController',
                                                                                Duration(milliseconds: 2000),
                                                                                () async {
                                                                                  setState(() {
                                                                                    _model.functionallocation = _model.functionallocationController.text;
                                                                                  });
                                                                                },
                                                                              ),
                                                                              autofocus: true,
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: 'Functional Location',
                                                                                labelStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                hintStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                                enabledBorder: UnderlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: Color(0x2757636C),
                                                                                    width: 2.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedBorder: UnderlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    width: 2.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                errorBorder: UnderlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                    width: 2.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                focusedErrorBorder: UnderlineInputBorder(
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                    width: 2.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              validator: _model.functionallocationControllerValidator.asValidator(context),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            _model.functionallocation!,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  fontSize: 16.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5.0),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0x2757636C),
                                                                  width: 1.0,
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        10.0,
                                                                        10.0,
                                                                        10.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          Text(
                                                                        'Functional Location Description',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment: AlignmentDirectional(
                                                                          -1.0,
                                                                          -1.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                        child:
                                                                            TextFormField(
                                                                          controller:
                                                                              _model.functionallocationdescriptionController,
                                                                          autofocus:
                                                                              true,
                                                                          obscureText:
                                                                              false,
                                                                          decoration:
                                                                              InputDecoration(
                                                                            labelText:
                                                                                'Functional Location Description',
                                                                            labelStyle:
                                                                                FlutterFlowTheme.of(context).labelMedium,
                                                                            hintStyle:
                                                                                FlutterFlowTheme.of(context).labelMedium,
                                                                            enabledBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: Color(0x2757636C),
                                                                                width: 2.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            focusedBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                width: 2.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            errorBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                width: 2.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            focusedErrorBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                width: 2.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                                20.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                          validator: _model
                                                                              .functionallocationdescriptionControllerValidator
                                                                              .asValidator(context),
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
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, -1.0),
                                                    child:
                                                        SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, -1.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          20.0,
                                                                          20.0,
                                                                          20.0),
                                                              child: Text(
                                                                'Details',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      fontSize:
                                                                          32.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    1.0, -1.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                setState(() {
                                                                  _model.addclassheader =
                                                                      true;
                                                                });
                                                              },
                                                              text:
                                                                  'Add Class Header',
                                                              options:
                                                                  FFButtonOptions(
                                                                height: 40.0,
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                                iconPadding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                elevation: 3.0,
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                            ),
                                                          ),
                                                          if (_model
                                                              .addclassheader)
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      1.0,
                                                                      -1.0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    FlutterFlowDropDown<
                                                                        String>(
                                                                  controller: _model
                                                                          .classheaderValueController ??=
                                                                      FormFieldController<
                                                                              String>(
                                                                          null),
                                                                  options: FFAppState()
                                                                      .listofclass
                                                                      .map((e) => getJsonField(
                                                                            e,
                                                                            r'''$.ClassHeaderCode''',
                                                                          ))
                                                                      .toList()
                                                                      .map((e) => e.toString())
                                                                      .toList(),
                                                                  onChanged:
                                                                      (val) async {
                                                                    setState(() =>
                                                                        _model.classheaderValue =
                                                                            val);
                                                                    _model.apiResult28e =
                                                                        await GetClassInfoCall
                                                                            .call(
                                                                      classinfo:
                                                                          _model
                                                                              .classheaderValue,
                                                                      urlendpoint:
                                                                          FFAppState()
                                                                              .urlendpoint,
                                                                    );
                                                                    if ((_model
                                                                            .apiResult28e
                                                                            ?.succeeded ??
                                                                        true)) {
                                                                      setState(
                                                                          () {
                                                                        _model
                                                                            .classinfo = getJsonField(
                                                                          (_model.apiResult28e?.jsonBody ??
                                                                              ''),
                                                                          r'''$[:]''',
                                                                        )!
                                                                            .toList()
                                                                            .cast<dynamic>();
                                                                      });
                                                                    }

                                                                    setState(
                                                                        () {});
                                                                  },
                                                                  width: 300.0,
                                                                  height: 50.0,
                                                                  searchHintTextStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiary,
                                                                      ),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                                  hintText:
                                                                      'Click to select 1 class header only..',
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
                                                                  elevation:
                                                                      2.0,
                                                                  borderColor:
                                                                      Color(
                                                                          0x9CABABAB),
                                                                  borderWidth:
                                                                      2.0,
                                                                  borderRadius:
                                                                      8.0,
                                                                  margin: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                  hidesUnderline:
                                                                      true,
                                                                  isSearchable:
                                                                      true,
                                                                ),
                                                              ),
                                                            ),
                                                          Builder(
                                                            builder: (context) {
                                                              final classinf =
                                                                  _model
                                                                      .classinfo
                                                                      .toList();
                                                              return SingleChildScrollView(
                                                                primary: false,
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: List.generate(
                                                                      classinf
                                                                          .length,
                                                                      (classinfIndex) {
                                                                    final classinfItem =
                                                                        classinf[
                                                                            classinfIndex];
                                                                    return Container(
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Container(
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width * 0.4,
                                                                            decoration:
                                                                                BoxDecoration(),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                                                                                  child: AutoSizeText(
                                                                                    getJsonField(
                                                                                      classinfItem,
                                                                                      r'''$.CharName''',
                                                                                    ).toString(),
                                                                                    textAlign: TextAlign.center,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Readex Pro',
                                                                                          fontSize: 14.0,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width * 0.4,
                                                                            decoration:
                                                                                BoxDecoration(),
                                                                            child:
                                                                                Align(
                                                                              alignment: AlignmentDirectional(1.0, -1.0),
                                                                              child: wrapWithModel(
                                                                                model: _model.textfieldModels.getModel(
                                                                                  classinfItem.toString(),
                                                                                  classinfIndex,
                                                                                ),
                                                                                updateCallback: () => setState(() {}),
                                                                                updateOnChange: true,
                                                                                child: TextfieldWidget(
                                                                                  key: Key(
                                                                                    'Keyecn_${classinfItem.toString()}',
                                                                                  ),
                                                                                  charname: getJsonField(
                                                                                    classinfItem,
                                                                                    r'''$.CharName''',
                                                                                  ).toString(),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    );
                                                                  }),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Visibility(
                                                    visible:
                                                        widget.equnr != null &&
                                                            widget.equnr != '',
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, -1.0),
                                                      child:
                                                          SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      -1.0),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        20.0,
                                                                        20.0,
                                                                        20.0),
                                                                child: Text(
                                                                  'History Details',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            32.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            FutureBuilder<
                                                                ApiCallResponse>(
                                                              future:
                                                                  GetequipmenthistoryCall
                                                                      .call(
                                                                equnr: widget
                                                                    .equnr,
                                                                urlendpoint:
                                                                    FFAppState()
                                                                        .urlendpoint,
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          SpinKitSquareCircle(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        size:
                                                                            50.0,
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                final columnGetequipmenthistoryResponse =
                                                                    snapshot
                                                                        .data!;
                                                                return Builder(
                                                                  builder:
                                                                      (context) {
                                                                    final changehistoryall =
                                                                        getJsonField(
                                                                      columnGetequipmenthistoryResponse
                                                                          .jsonBody,
                                                                      r'''$''',
                                                                    ).toList();
                                                                    return SingleChildScrollView(
                                                                      primary:
                                                                          false,
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: List.generate(
                                                                            changehistoryall.length,
                                                                            (changehistoryallIndex) {
                                                                          final changehistoryallItem =
                                                                              changehistoryall[changehistoryallIndex];
                                                                          return Container(
                                                                            width:
                                                                                double.infinity,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              borderRadius: BorderRadius.circular(5.0),
                                                                              border: Border.all(
                                                                                color: Color(0x2557636C),
                                                                                width: 1.0,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Align(
                                                                              alignment: AlignmentDirectional(0.0, -1.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Container(
                                                                                            width: MediaQuery.sizeOf(context).width * 0.5,
                                                                                            decoration: BoxDecoration(),
                                                                                            child: Align(
                                                                                              alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Align(
                                                                                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                    child: Text(
                                                                                                      getJsonField(
                                                                                                        changehistoryallItem,
                                                                                                        r'''$.EmployeeName''',
                                                                                                      ).toString(),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Align(
                                                                                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                    child: Text(
                                                                                                      getJsonField(
                                                                                                        changehistoryallItem,
                                                                                                        r'''$.ReferenceNo''',
                                                                                                      ).toString(),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Readex Pro',
                                                                                                            fontWeight: FontWeight.w300,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Align(
                                                                                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                    child: Text(
                                                                                                      getJsonField(
                                                                                                        changehistoryallItem,
                                                                                                        r'''$.RequestID''',
                                                                                                      ).toString(),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Readex Pro',
                                                                                                            fontWeight: FontWeight.w300,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Align(
                                                                                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                    child: Text(
                                                                                                      getJsonField(
                                                                                                        changehistoryallItem,
                                                                                                        r'''$.SubmissionDate''',
                                                                                                      ).toString(),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Readex Pro',
                                                                                                            fontWeight: FontWeight.w300,
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
                                                                                  Expanded(
                                                                                    child: Align(
                                                                                      alignment: AlignmentDirectional(0.0, 0.0),
                                                                                      child: FFButtonWidget(
                                                                                        onPressed: () {
                                                                                          print('Button pressed ...');
                                                                                        },
                                                                                        text: getJsonField(
                                                                                          changehistoryallItem,
                                                                                          r'''$.StatusDesc''',
                                                                                        ).toString(),
                                                                                        options: FFButtonOptions(
                                                                                          height: 40.0,
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                          color: colorFromCssString(
                                                                                            functions.colortohex(getJsonField(
                                                                                              changehistoryallItem,
                                                                                              r'''$.ColorCode''',
                                                                                            ).toString())!,
                                                                                            defaultColor: FlutterFlowTheme.of(context).tertiary,
                                                                                          ),
                                                                                          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                fontFamily: 'Readex Pro',
                                                                                                color: getJsonField(
                                                                                                          changehistoryallItem,
                                                                                                          r'''$.StatusDesc''',
                                                                                                        ) ==
                                                                                                        'Reassinged'
                                                                                                    ? Color(0x00000000)
                                                                                                    : Colors.white,
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
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }),
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, -1.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          10.0,
                                                                          10.0,
                                                                          10.0),
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  final selectedMedia =
                                                                      await selectMedia(
                                                                    multiImage:
                                                                        false,
                                                                  );
                                                                  if (selectedMedia !=
                                                                          null &&
                                                                      selectedMedia.every((m) => validateFileFormat(
                                                                          m.storagePath,
                                                                          context))) {
                                                                    setState(() =>
                                                                        _model.isDataUploading1 =
                                                                            true);
                                                                    var selectedUploadedFiles =
                                                                        <FFUploadedFile>[];

                                                                    try {
                                                                      selectedUploadedFiles = selectedMedia
                                                                          .map((m) => FFUploadedFile(
                                                                                name: m.storagePath.split('/').last,
                                                                                bytes: m.bytes,
                                                                                height: m.dimensions?.height,
                                                                                width: m.dimensions?.width,
                                                                                blurHash: m.blurHash,
                                                                              ))
                                                                          .toList();
                                                                    } finally {
                                                                      _model.isDataUploading1 =
                                                                          false;
                                                                    }
                                                                    if (selectedUploadedFiles
                                                                            .length ==
                                                                        selectedMedia
                                                                            .length) {
                                                                      setState(
                                                                          () {
                                                                        _model.uploadedLocalFile1 =
                                                                            selectedUploadedFiles.first;
                                                                      });
                                                                    } else {
                                                                      setState(
                                                                          () {});
                                                                      return;
                                                                    }
                                                                  }

                                                                  setState(() {
                                                                    _model.addToUploadedfile(
                                                                        _model
                                                                            .uploadedLocalFile1);
                                                                  });
                                                                },
                                                                text: 'Camera',
                                                                options:
                                                                    FFButtonOptions(
                                                                  height: 40.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                  elevation:
                                                                      3.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, -1.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          10.0,
                                                                          10.0,
                                                                          10.0),
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  final selectedMedia =
                                                                      await selectMedia(
                                                                    mediaSource:
                                                                        MediaSource
                                                                            .photoGallery,
                                                                    multiImage:
                                                                        true,
                                                                  );
                                                                  if (selectedMedia !=
                                                                          null &&
                                                                      selectedMedia.every((m) => validateFileFormat(
                                                                          m.storagePath,
                                                                          context))) {
                                                                    setState(() =>
                                                                        _model.isDataUploading2 =
                                                                            true);
                                                                    var selectedUploadedFiles =
                                                                        <FFUploadedFile>[];

                                                                    try {
                                                                      selectedUploadedFiles = selectedMedia
                                                                          .map((m) => FFUploadedFile(
                                                                                name: m.storagePath.split('/').last,
                                                                                bytes: m.bytes,
                                                                                height: m.dimensions?.height,
                                                                                width: m.dimensions?.width,
                                                                                blurHash: m.blurHash,
                                                                              ))
                                                                          .toList();
                                                                    } finally {
                                                                      _model.isDataUploading2 =
                                                                          false;
                                                                    }
                                                                    if (selectedUploadedFiles
                                                                            .length ==
                                                                        selectedMedia
                                                                            .length) {
                                                                      setState(
                                                                          () {
                                                                        _model.uploadedLocalFiles2 =
                                                                            selectedUploadedFiles;
                                                                      });
                                                                    } else {
                                                                      setState(
                                                                          () {});
                                                                      return;
                                                                    }
                                                                  }

                                                                  await actions
                                                                      .uploadedlisttolist(
                                                                    _model
                                                                        .uploadedLocalFiles2
                                                                        .toList(),
                                                                    _model
                                                                        .uploadedfile
                                                                        .toList(),
                                                                  );
                                                                },
                                                                text: 'Gallery',
                                                                options:
                                                                    FFButtonOptions(
                                                                  height: 40.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                  elevation:
                                                                      3.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
