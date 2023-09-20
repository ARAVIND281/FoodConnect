import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/donation_form_dropdown_widget.dart';
import '/components/side_nav_main_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class MainDashboardModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Read Document] action in main_Dashboard widget.
  UsersRecord? userdata;
  // Model for sideNav_Main component.
  late SideNavMainModel sideNavMainModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sideNavMainModel = createModel(context, () => SideNavMainModel());
  }

  void dispose() {
    sideNavMainModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
