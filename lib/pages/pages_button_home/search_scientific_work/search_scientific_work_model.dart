import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'search_scientific_work_widget.dart' show SearchScientificWorkWidget;
import 'package:flutter/material.dart';

class SearchScientificWorkModel
    extends FlutterFlowModel<SearchScientificWorkWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  InstantTimer? instantTimer;
  // Stores action output result for [Custom Action - checkInternet] action in SearchScientificWork widget.
  bool? temNetResultado;
  // State field(s) for BuscarTrabalhoTitulo widget.
  FocusNode? buscarTrabalhoTituloFocusNode;
  TextEditingController? buscarTrabalhoTituloTextController;
  String? Function(BuildContext, String?)?
      buscarTrabalhoTituloTextControllerValidator;
  // State field(s) for BuscarTrabalhoNome widget.
  FocusNode? buscarTrabalhoNomeFocusNode;
  TextEditingController? buscarTrabalhoNomeTextController;
  String? Function(BuildContext, String?)?
      buscarTrabalhoNomeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    instantTimer?.cancel();
    buscarTrabalhoTituloFocusNode?.dispose();
    buscarTrabalhoTituloTextController?.dispose();

    buscarTrabalhoNomeFocusNode?.dispose();
    buscarTrabalhoNomeTextController?.dispose();
  }
}
