import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CrearRecetaModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TF_Titulo widget.
  TextEditingController? tFTituloController;
  String? Function(BuildContext, String?)? tFTituloControllerValidator;
  // State field(s) for TF_Subtitulo widget.
  TextEditingController? tFSubtituloController;
  String? Function(BuildContext, String?)? tFSubtituloControllerValidator;
  // State field(s) for TF_Content widget.
  TextEditingController? tFContentController1;
  String? Function(BuildContext, String?)? tFContentController1Validator;
  // State field(s) for TF_Content widget.
  TextEditingController? tFContentController2;
  String? Function(BuildContext, String?)? tFContentController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    tFTituloController?.dispose();
    tFSubtituloController?.dispose();
    tFContentController1?.dispose();
    tFContentController2?.dispose();
  }

  /// Additional helper methods are added here.

}
