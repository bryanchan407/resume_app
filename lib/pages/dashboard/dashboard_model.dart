import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/carousel_of_images_widget.dart';
import '/components/self_profile_element_widget.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for searchTextField widget.
  final searchTextFieldKey = GlobalKey();
  FocusNode? searchTextFieldFocusNode;
  TextEditingController? searchTextFieldController;
  String? searchTextFieldSelectedOption;
  String? Function(BuildContext, String?)? searchTextFieldControllerValidator;
  List<UsersRecord> simpleSearchResults = [];
  // Stores action output result for [Firestore Query - Query a collection] action in Row widget.
  ChatsRecord? chatFiltered;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for SelfProfileElement component.
  late SelfProfileElementModel selfProfileElementModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    selfProfileElementModel =
        createModel(context, () => SelfProfileElementModel());
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    searchTextFieldFocusNode?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();

    selfProfileElementModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
