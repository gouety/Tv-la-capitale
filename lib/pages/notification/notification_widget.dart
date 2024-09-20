import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'notification_model.dart';
export 'notification_model.dart';

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({super.key});

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  late NotificationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFF1F4F8),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Container(
                height: double.infinity,
                decoration: const BoxDecoration(),
                child: const FlutterFlowWebView(
                  content:
                      '<script src=\"https://cdn.jsdelivr.net/npm/@mux/mux-player\"></script>\n<mux-player\n  playback-id=\"xjhFWsxQfspl01Xj01d81O3YmGzRy8ygaOwJf3PSHcixA\"\n  metadata-video-title=\"Placeholder (optional)\"\n  metadata-viewer-user-id=\"Placeholder (optional)\"\n  accent-color=\"#FF0000\"\n></mux-player>',
                  height: 500.0,
                  verticalScroll: false,
                  horizontalScroll: false,
                  html: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
