import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CrearComentarioModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  TextEditingController? textFieldController1;
  String? Function(BuildContext, String?)? textFieldController1Validator;
  // State field(s) for TextField widget.
  TextEditingController? textFieldController2;
  String? Function(BuildContext, String?)? textFieldController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textFieldController1?.dispose();
    textFieldController2?.dispose();
  }

  /// Additional helper methods are added here.

}
