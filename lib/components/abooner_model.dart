import '/flutter_flow/flutter_flow_util.dart';
import 'abooner_widget.dart' show AboonerWidget;
import 'package:flutter/material.dart';

class AboonerModel extends FlutterFlowModel<AboonerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for nom widget.
  FocusNode? nomFocusNode1;
  TextEditingController? nomTextController1;
  String? Function(BuildContext, String?)? nomTextController1Validator;
  // State field(s) for nom widget.
  FocusNode? nomFocusNode2;
  TextEditingController? nomTextController2;
  String? Function(BuildContext, String?)? nomTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomFocusNode1?.dispose();
    nomTextController1?.dispose();

    nomFocusNode2?.dispose();
    nomTextController2?.dispose();
  }
}
