import '/flutter_flow/flutter_flow_util.dart';
import 'new_candidate_widget.dart' show NewCandidateWidget;
import 'package:flutter/material.dart';

class NewCandidateModel extends FlutterFlowModel<NewCandidateWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for candidateName widget.
  FocusNode? candidateNameFocusNode;
  TextEditingController? candidateNameTextController;
  String? Function(BuildContext, String?)? candidateNameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    candidateNameFocusNode?.dispose();
    candidateNameTextController?.dispose();
  }
}
