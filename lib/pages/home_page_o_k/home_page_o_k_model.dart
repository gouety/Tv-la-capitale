import '/components/attendre_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_o_k_widget.dart' show HomePageOKWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePageOKModel extends FlutterFlowModel<HomePageOKWidget> {
  ///  Local state fields for this page.

  bool? isloag;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Publicite widget.
  CarouselController? publiciteController1;
  int publiciteCurrentIndex1 = 1;

  // Model for attendre component.
  late AttendreModel attendreModel1;
  // Model for attendre component.
  late AttendreModel attendreModel2;
  // State field(s) for Publicite widget.
  CarouselController? publiciteController2;
  int publiciteCurrentIndex2 = 1;

  // Model for attendre component.
  late AttendreModel attendreModel3;

  @override
  void initState(BuildContext context) {
    attendreModel1 = createModel(context, () => AttendreModel());
    attendreModel2 = createModel(context, () => AttendreModel());
    attendreModel3 = createModel(context, () => AttendreModel());
  }

  @override
  void dispose() {
    attendreModel1.dispose();
    attendreModel2.dispose();
    attendreModel3.dispose();
  }
}
