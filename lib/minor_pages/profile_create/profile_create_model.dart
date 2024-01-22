import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/schema/structs/index.dart';
import '/components/big_daddy_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'profile_create_widget.dart' show ProfileCreateWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileCreateModel extends FlutterFlowModel<ProfileCreateWidget> {
  ///  Local state fields for this page.

  List<EcStruct> awards = [];
  void addToAwards(EcStruct item) => awards.add(item);
  void removeFromAwards(EcStruct item) => awards.remove(item);
  void removeAtIndexFromAwards(int index) => awards.removeAt(index);
  void insertAtIndexInAwards(int index, EcStruct item) =>
      awards.insert(index, item);
  void updateAwardsAtIndex(int index, Function(EcStruct) updateFn) =>
      awards[index] = updateFn(awards[index]);

  List<EcStruct> athletics = [];
  void addToAthletics(EcStruct item) => athletics.add(item);
  void removeFromAthletics(EcStruct item) => athletics.remove(item);
  void removeAtIndexFromAthletics(int index) => athletics.removeAt(index);
  void insertAtIndexInAthletics(int index, EcStruct item) =>
      athletics.insert(index, item);
  void updateAthleticsAtIndex(int index, Function(EcStruct) updateFn) =>
      athletics[index] = updateFn(athletics[index]);

  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for phone_number widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberController;
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;
  // State field(s) for school widget.
  FocusNode? schoolFocusNode;
  TextEditingController? schoolController;
  String? Function(BuildContext, String?)? schoolControllerValidator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityController;
  String? Function(BuildContext, String?)? cityControllerValidator;
  // State field(s) for state widget.
  String? stateValue;
  FormFieldController<String>? stateValueController;
  // State field(s) for major widget.
  FocusNode? majorFocusNode;
  TextEditingController? majorController;
  String? Function(BuildContext, String?)? majorControllerValidator;
  // Model for BigDaddy component.
  late BigDaddyModel bigDaddyModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bigDaddyModel = createModel(context, () => BigDaddyModel());
  }

  void dispose() {
    nameFocusNode?.dispose();
    nameController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberController?.dispose();

    schoolFocusNode?.dispose();
    schoolController?.dispose();

    cityFocusNode?.dispose();
    cityController?.dispose();

    majorFocusNode?.dispose();
    majorController?.dispose();

    bigDaddyModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
