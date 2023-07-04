import '/backend/api_requests/api_calls.dart';
import '/components/photoinfo_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'equipmentphoto_model.dart';
export 'equipmentphoto_model.dart';

class EquipmentphotoWidget extends StatefulWidget {
  const EquipmentphotoWidget({
    Key? key,
    required this.eqno,
  }) : super(key: key);

  final String? eqno;

  @override
  _EquipmentphotoWidgetState createState() => _EquipmentphotoWidgetState();
}

class _EquipmentphotoWidgetState extends State<EquipmentphotoWidget> {
  late EquipmentphotoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EquipmentphotoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    final selectedMedia = await selectMedia(
                      multiImage: false,
                    );
                    if (selectedMedia != null &&
                        selectedMedia.every((m) =>
                            validateFileFormat(m.storagePath, context))) {
                      setState(() => _model.isDataUploading1 = true);
                      var selectedUploadedFiles = <FFUploadedFile>[];

                      try {
                        showUploadMessage(
                          context,
                          'Uploading file...',
                          showLoading: true,
                        );
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
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        _model.isDataUploading1 = false;
                      }
                      if (selectedUploadedFiles.length ==
                          selectedMedia.length) {
                        setState(() {
                          _model.uploadedLocalFile1 =
                              selectedUploadedFiles.first;
                        });
                        showUploadMessage(context, 'Success!');
                      } else {
                        setState(() {});
                        showUploadMessage(context, 'Failed to upload data');
                        return;
                      }
                    }

                    _model.apiResult0au = await UploadPhotoCall.call(
                      uid: getJsonField(
                        FFAppState().alluserinfo,
                        r'''$.EmployeeID''',
                      ).toString(),
                      eqno: widget.eqno,
                      photo: _model.uploadedLocalFile1,
                      description: 'UAT',
                    );
                    if ((_model.apiResult0au?.succeeded ?? true)) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Success Upload',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                          ),
                          duration: Duration(milliseconds: 4000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondary,
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Fail upload',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0xFFFF0004),
                                ),
                          ),
                          duration: Duration(milliseconds: 4000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondary,
                        ),
                      );
                    }

                    setState(() {});
                  },
                  text: 'Camera',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
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
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    final selectedMedia = await selectMedia(
                      imageQuality: 100,
                      mediaSource: MediaSource.photoGallery,
                      multiImage: true,
                    );
                    if (selectedMedia != null &&
                        selectedMedia.every((m) =>
                            validateFileFormat(m.storagePath, context))) {
                      setState(() => _model.isDataUploading2 = true);
                      var selectedUploadedFiles = <FFUploadedFile>[];

                      try {
                        showUploadMessage(
                          context,
                          'Uploading file...',
                          showLoading: true,
                        );
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
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        _model.isDataUploading2 = false;
                      }
                      if (selectedUploadedFiles.length ==
                          selectedMedia.length) {
                        setState(() {
                          _model.uploadedLocalFiles2 = selectedUploadedFiles;
                        });
                        showUploadMessage(context, 'Success!');
                      } else {
                        setState(() {});
                        showUploadMessage(context, 'Failed to upload data');
                        return;
                      }
                    }

                    if (_model.uploadedLocalFiles2.length <= 9) {
                      _model.apiResultmmo = await UploadPhotoMCall.call(
                        uid: getJsonField(
                          FFAppState().alluserinfo,
                          r'''$.EmployeeID''',
                        ).toString(),
                        eqno: widget.eqno,
                        photosList: _model.uploadedLocalFiles2,
                        description: 'UAT',
                      );
                      if ((_model.apiResultmmo?.succeeded ?? true)) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Success Upload',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Fail Upload',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                          ),
                        );
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Max 9 item per equipment',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          duration: Duration(milliseconds: 4000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondary,
                        ),
                      );
                    }

                    setState(() {});
                  },
                  text: 'Gallery',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
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
          ],
        ),
        Expanded(
          child: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: FutureBuilder<ApiCallResponse>(
              future:
                  (_model.apiRequestCompleter ??= Completer<ApiCallResponse>()
                        ..complete(GetPhotoCall.call(
                          eqno: widget.eqno,
                        )))
                      .future,
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: SpinKitSquareCircle(
                        color: FlutterFlowTheme.of(context).primary,
                        size: 50.0,
                      ),
                    ),
                  );
                }
                final gridViewGetPhotoResponse = snapshot.data!;
                return Builder(
                  builder: (context) {
                    final equnr = getJsonField(
                      gridViewGetPhotoResponse.jsonBody,
                      r'''$[:]''',
                    ).toList();
                    if (equnr.isEmpty) {
                      return Image.asset(
                        'assets/images/2g450_R.jpg',
                      );
                    }
                    return RefreshIndicator(
                      onRefresh: () async {
                        setState(() => _model.apiRequestCompleter = null);
                        await _model.waitForApiRequestCompleted();
                      },
                      child: GridView.builder(
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 1.0,
                          mainAxisSpacing: 1.0,
                          childAspectRatio: 1.0,
                        ),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: equnr.length,
                        itemBuilder: (context, equnrIndex) {
                          final equnrItem = equnr[equnrIndex];
                          return InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  child: FlutterFlowExpandedImageView(
                                    image: CachedNetworkImage(
                                      imageUrl:
                                          'https://mammtnbapi2.ap.ngrok.io/EquipmentPhoto/testPhoto/${getJsonField(
                                        equnrItem,
                                        r'''$.FileID''',
                                      ).toString()}',
                                      fit: BoxFit.contain,
                                    ),
                                    allowRotation: false,
                                    tag:
                                        'https://mammtnbapi2.ap.ngrok.io/EquipmentPhoto/testPhoto/${getJsonField(
                                      equnrItem,
                                      r'''$.FileID''',
                                    ).toString()}',
                                    useHeroAnimation: true,
                                  ),
                                ),
                              );
                            },
                            onDoubleTap: () async {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (context) {
                                  return Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: PhotoinfoWidget(
                                      filename: getJsonField(
                                        equnrItem,
                                        r'''$.FileName''',
                                      ).toString(),
                                      filestatus: getJsonField(
                                        equnrItem,
                                        r'''$.FileStatus''',
                                      ).toString(),
                                      filesize: getJsonField(
                                        equnrItem,
                                        r'''$.FileSize''',
                                      ).toString(),
                                      createdby: getJsonField(
                                        equnrItem,
                                        r'''$.UploadedBy''',
                                      ).toString(),
                                      createddate: getJsonField(
                                        equnrItem,
                                        r'''$.CreatedDate''',
                                      ).toString(),
                                      eqno: widget.eqno,
                                    ),
                                  );
                                },
                              ).then((value) => setState(() {}));
                            },
                            child: Hero(
                              tag:
                                  'https://mammtnbapi2.ap.ngrok.io/EquipmentPhoto/testPhoto/${getJsonField(
                                equnrItem,
                                r'''$.FileID''',
                              ).toString()}',
                              transitionOnUserGestures: true,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: CachedNetworkImage(
                                  imageUrl:
                                      'https://mammtnbapi2.ap.ngrok.io/EquipmentPhoto/testPhoto/${getJsonField(
                                    equnrItem,
                                    r'''$.FileID''',
                                  ).toString()}',
                                  width: 300.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
