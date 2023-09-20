import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/account_user_dropdown_widget.dart';
import '/components/side_nav_main_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainMembersModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNav_Main component.
  late SideNavMainModel sideNavMainModel;
  // State field(s) for gstTextField widget.
  TextEditingController? gstTextFieldController;
  String? Function(BuildContext, String?)? gstTextFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sideNavMainModel = createModel(context, () => SideNavMainModel());
  }

  void dispose() {
    unfocusNode.dispose();
    sideNavMainModel.dispose();
    gstTextFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
