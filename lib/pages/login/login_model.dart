import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for CompanyName-create widget.
  TextEditingController? companyNameCreateController;
  String? Function(BuildContext, String?)? companyNameCreateControllerValidator;
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue;
  FormFieldController<List<String>>? choiceChipsValueController;
  // State field(s) for emailAddress-Create widget.
  TextEditingController? emailAddressCreateController;
  String? Function(BuildContext, String?)?
      emailAddressCreateControllerValidator;
  // State field(s) for phoneNo-Create widget.
  TextEditingController? phoneNoCreateController;
  String? Function(BuildContext, String?)? phoneNoCreateControllerValidator;
  // State field(s) for password-Create widget.
  TextEditingController? passwordCreateController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)? passwordCreateControllerValidator;
  // State field(s) for con-password-Create widget.
  TextEditingController? conPasswordCreateController;
  late bool conPasswordCreateVisibility;
  String? Function(BuildContext, String?)? conPasswordCreateControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordCreateVisibility = false;
    conPasswordCreateVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailAddressController?.dispose();
    passwordController?.dispose();
    companyNameCreateController?.dispose();
    emailAddressCreateController?.dispose();
    phoneNoCreateController?.dispose();
    passwordCreateController?.dispose();
    conPasswordCreateController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
