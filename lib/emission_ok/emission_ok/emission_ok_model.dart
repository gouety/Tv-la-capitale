import '/components/attendre_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'emission_ok_widget.dart' show EmissionOkWidget;
import 'package:flutter/material.dart';

class EmissionOkModel extends FlutterFlowModel<EmissionOkWidget> {
  ///  Local state fields for this page.

  bool? isload = true;

  ///  State fields for stateful widgets in this page.

  // Model for attendre component.
  late AttendreModel attendreModel1;
  // Model for attendre component.
  late AttendreModel attendreModel3;

  @override
  void initState(BuildContext context) {
    attendreModel1 = createModel(context, () => AttendreModel());
    attendreModel3 = createModel(context, () => AttendreModel());
  }

  @override
  void dispose() {
    attendreModel1.dispose();
    attendreModel3.dispose();
  }
}
