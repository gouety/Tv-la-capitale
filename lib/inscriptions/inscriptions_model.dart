import '/flutter_flow/flutter_flow_util.dart';
import 'inscriptions_widget.dart' show InscriptionsWidget;
import 'package:flutter/material.dart';

class InscriptionsModel extends FlutterFlowModel<InscriptionsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nom_utilisateur widget.
  FocusNode? nomUtilisateurFocusNode;
  TextEditingController? nomUtilisateurTextController;
  String? Function(BuildContext, String?)?
      nomUtilisateurTextControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode;
  TextEditingController? passwordConfirmTextController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordConfirmVisibility = false;
  }

  @override
  void dispose() {
    nomUtilisateurFocusNode?.dispose();
    nomUtilisateurTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    passwordConfirmFocusNode?.dispose();
    passwordConfirmTextController?.dispose();
  }
}
