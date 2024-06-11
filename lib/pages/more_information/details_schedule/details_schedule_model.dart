import '/flutter_flow/flutter_flow_util.dart';
import 'details_schedule_widget.dart' show DetailsScheduleWidget;
import 'package:flutter/material.dart';

class DetailsScheduleModel extends FlutterFlowModel<DetailsScheduleWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
