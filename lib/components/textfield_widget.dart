import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'textfield_model.dart';
export 'textfield_model.dart';

class TextfieldWidget extends StatefulWidget {
  const TextfieldWidget({
    Key? key,
    required this.charname,
  }) : super(key: key);

  final String? charname;

  @override
  _TextfieldWidgetState createState() => _TextfieldWidgetState();
}

class _TextfieldWidgetState extends State<TextfieldWidget> {
  late TextfieldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TextfieldModel());

    _model.textController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.5,
        child: TextFormField(
          controller: _model.textController,
          autofocus: true,
          obscureText: false,
          decoration: InputDecoration(
            labelText: widget.charname,
            labelStyle: FlutterFlowTheme.of(context).labelMedium,
            hintStyle: FlutterFlowTheme.of(context).labelMedium,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xCDC5C5C5),
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
          validator: _model.textControllerValidator.asValidator(context),
        ),
      ),
    );
  }
}
