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
  String? _pollNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Poll Name is required';
    }

    return null;
  }

  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  String? _descriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Description is required';
    }

    return null;
  }

  // State field(s) for Candidate1 widget.
  FocusNode? candidate1FocusNode;
  TextEditingController? candidate1TextController;
  String? Function(BuildContext, String?)? candidate1TextControllerValidator;
  String? _candidate1TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Option 1 is required';
    }

    return null;
  }

  // State field(s) for Candidate2 widget.
  FocusNode? candidate2FocusNode;
  TextEditingController? candidate2TextController;
  String? Function(BuildContext, String?)? candidate2TextControllerValidator;
  String? _candidate2TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Option 2 is required';
    }

    return null;
  }

  // State field(s) for Candidate3 widget.
  FocusNode? candidate3FocusNode;
  TextEditingController? candidate3TextController;
  String? Function(BuildContext, String?)? candidate3TextControllerValidator;
  String? _candidate3TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Option 3 is required';
    }

    return null;
  }

  // State field(s) for Candidate4 widget.
  FocusNode? candidate4FocusNode;
  TextEditingController? candidate4TextController;
  String? Function(BuildContext, String?)? candidate4TextControllerValidator;
  String? _candidate4TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Option 4 is required';
    }

    return null;
  }

  // State field(s) for Candidate5 widget.
  FocusNode? candidate5FocusNode;
  TextEditingController? candidate5TextController;
  String? Function(BuildContext, String?)? candidate5TextControllerValidator;
  String? _candidate5TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Option 5 is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    pollNameTextControllerValidator = _pollNameTextControllerValidator;
    descriptionTextControllerValidator = _descriptionTextControllerValidator;
    candidate1TextControllerValidator = _candidate1TextControllerValidator;
    candidate2TextControllerValidator = _candidate2TextControllerValidator;
    candidate3TextControllerValidator = _candidate3TextControllerValidator;
    candidate4TextControllerValidator = _candidate4TextControllerValidator;
    candidate5TextControllerValidator = _candidate5TextControllerValidator;
  }

  @override
  void dispose() {
    pollNameFocusNode?.dispose();
    pollNameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

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
