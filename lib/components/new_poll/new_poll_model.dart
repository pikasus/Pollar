import '/flutter_flow/flutter_flow_util.dart';
import 'new_poll_widget.dart' show NewPollWidget;
import 'package:flutter/material.dart';

class NewPollModel extends FlutterFlowModel<NewPollWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for pollName widget.
  FocusNode? pollNameFocusNode;
  TextEditingController? pollNameTextController;
  String? Function(BuildContext, String?)? pollNameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    pollNameFocusNode?.dispose();
    pollNameTextController?.dispose();
  }
}
