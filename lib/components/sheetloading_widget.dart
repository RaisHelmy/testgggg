import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'sheetloading_model.dart';
export 'sheetloading_model.dart';

class SheetloadingWidget extends StatefulWidget {
  const SheetloadingWidget({Key? key}) : super(key: key);

  @override
  _SheetloadingWidgetState createState() => _SheetloadingWidgetState();
}

class _SheetloadingWidgetState extends State<SheetloadingWidget> {
  late SheetloadingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SheetloadingModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Lottie.asset(
        'assets/lottie_animations/112484-renewable-energy.json',
        width: 200.0,
        height: 200.0,
        fit: BoxFit.contain,
        animate: true,
      ),
    );
  }
}
