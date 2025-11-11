import '/flutter_flow/flutter_flow_util.dart';
import 'new_poll_widget.dart' show NewPollWidget;
import 'package:flutter/material.dart';

class NewPollModel extends FlutterFlowModel<NewPollWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for pollName widget.
  FocusNode? pollNameFocusNode;
  TextEditingController? pollNameTextController;
  String? Function(BuildContext, String?)? pollNameTextControllerValidator;
  // State field(s) for pollDescription widget.
  FocusNode? pollDescriptionFocusNode;
  TextEditingController? pollDescriptionTextController;
  String? Function(BuildContext, String?)?
      pollDescriptionTextControllerValidator;
  // State field(s) for candidate1 widget.
  FocusNode? candidate1FocusNode;
  TextEditingController? candidate1TextController;
  String? Function(BuildContext, String?)? candidate1TextControllerValidator;
  // State field(s) for candidate2 widget.
  FocusNode? candidate2FocusNode;
  TextEditingController? candidate2TextController;
  String? Function(BuildContext, String?)? candidate2TextControllerValidator;
  // State field(s) for candidate3 widget.
  FocusNode? candidate3FocusNode;
  TextEditingController? candidate3TextController;
  String? Function(BuildContext, String?)? candidate3TextControllerValidator;
  // State field(s) for candidate4 widget.
  FocusNode? candidate4FocusNode;
  TextEditingController? candidate4TextController;
  String? Function(BuildContext, String?)? candidate4TextControllerValidator;
  // State field(s) for candidate5 widget.
  FocusNode? candidate5FocusNode;
  TextEditingController? candidate5TextController;
  String? Function(BuildContext, String?)? candidate5TextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    pollNameFocusNode?.dispose();
    pollNameTextController?.dispose();

    pollDescriptionFocusNode?.dispose();
    pollDescriptionTextController?.dispose();

    candidate1FocusNode?.dispose();
    candidate1TextController?.dispose();

    candidate2FocusNode?.dispose();
    candidate2TextController?.dispose();

    candidate3FocusNode?.dispose();
    candidate3TextController?.dispose();

    candidate4FocusNode?.dispose();
    candidate4TextController?.dispose();

    candidate5FocusNode?.dispose();
    candidate5TextController?.dispose();
  }
}
