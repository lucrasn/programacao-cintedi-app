// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProgramacaoStruct extends FFFirebaseStruct {
  ProgramacaoStruct({
    DocumentReference? id,
    String? nome,
    String? nomeSala,
    List<String>? nomeCategoria,
    String? detalhes,
    DateTime? horarioInicio,
    DateTime? horarioFim,
    bool? day01,
    bool? day02,
    bool? day03,
    String? link,
    String? linkCalendario,
    bool? modalidade,
    bool? visivel,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _nome = nome,
        _nomeSala = nomeSala,
        _nomeCategoria = nomeCategoria,
        _detalhes = detalhes,
        _horarioInicio = horarioInicio,
        _horarioFim = horarioFim,
        _day01 = day01,
        _day02 = day02,
        _day03 = day03,
        _link = link,
        _linkCalendario = linkCalendario,
        _modalidade = modalidade,
        _visivel = visivel,
        super(firestoreUtilData);

  // "id" field.
  DocumentReference? _id;
  DocumentReference? get id => _id;
  set id(DocumentReference? val) => _id = val;
  bool hasId() => _id != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;
  bool hasNome() => _nome != null;

  // "nome_sala" field.
  String? _nomeSala;
  String get nomeSala => _nomeSala ?? '';
  set nomeSala(String? val) => _nomeSala = val;
  bool hasNomeSala() => _nomeSala != null;

  // "nome_categoria" field.
  List<String>? _nomeCategoria;
  List<String> get nomeCategoria => _nomeCategoria ?? const [];
  set nomeCategoria(List<String>? val) => _nomeCategoria = val;
  void updateNomeCategoria(Function(List<String>) updateFn) =>
      updateFn(_nomeCategoria ??= []);
  bool hasNomeCategoria() => _nomeCategoria != null;

  // "detalhes" field.
  String? _detalhes;
  String get detalhes => _detalhes ?? '';
  set detalhes(String? val) => _detalhes = val;
  bool hasDetalhes() => _detalhes != null;

  // "horario_inicio" field.
  DateTime? _horarioInicio;
  DateTime? get horarioInicio => _horarioInicio;
  set horarioInicio(DateTime? val) => _horarioInicio = val;
  bool hasHorarioInicio() => _horarioInicio != null;

  // "horario_fim" field.
  DateTime? _horarioFim;
  DateTime? get horarioFim => _horarioFim;
  set horarioFim(DateTime? val) => _horarioFim = val;
  bool hasHorarioFim() => _horarioFim != null;

  // "day01" field.
  bool? _day01;
  bool get day01 => _day01 ?? false;
  set day01(bool? val) => _day01 = val;
  bool hasDay01() => _day01 != null;

  // "day02" field.
  bool? _day02;
  bool get day02 => _day02 ?? false;
  set day02(bool? val) => _day02 = val;
  bool hasDay02() => _day02 != null;

  // "day03" field.
  bool? _day03;
  bool get day03 => _day03 ?? false;
  set day03(bool? val) => _day03 = val;
  bool hasDay03() => _day03 != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  set link(String? val) => _link = val;
  bool hasLink() => _link != null;

  // "link_calendario" field.
  String? _linkCalendario;
  String get linkCalendario => _linkCalendario ?? '';
  set linkCalendario(String? val) => _linkCalendario = val;
  bool hasLinkCalendario() => _linkCalendario != null;

  // "modalidade" field.
  bool? _modalidade;
  bool get modalidade => _modalidade ?? false;
  set modalidade(bool? val) => _modalidade = val;
  bool hasModalidade() => _modalidade != null;

  // "visivel" field.
  bool? _visivel;
  bool get visivel => _visivel ?? false;
  set visivel(bool? val) => _visivel = val;
  bool hasVisivel() => _visivel != null;

  static ProgramacaoStruct fromMap(Map<String, dynamic> data) =>
      ProgramacaoStruct(
        id: data['id'] as DocumentReference?,
        nome: data['nome'] as String?,
        nomeSala: data['nome_sala'] as String?,
        nomeCategoria: getDataList(data['nome_categoria']),
        detalhes: data['detalhes'] as String?,
        horarioInicio: data['horario_inicio'] as DateTime?,
        horarioFim: data['horario_fim'] as DateTime?,
        day01: data['day01'] as bool?,
        day02: data['day02'] as bool?,
        day03: data['day03'] as bool?,
        link: data['link'] as String?,
        linkCalendario: data['link_calendario'] as String?,
        modalidade: data['modalidade'] as bool?,
        visivel: data['visivel'] as bool?,
      );

  static ProgramacaoStruct? maybeFromMap(dynamic data) => data is Map
      ? ProgramacaoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nome': _nome,
        'nome_sala': _nomeSala,
        'nome_categoria': _nomeCategoria,
        'detalhes': _detalhes,
        'horario_inicio': _horarioInicio,
        'horario_fim': _horarioFim,
        'day01': _day01,
        'day02': _day02,
        'day03': _day03,
        'link': _link,
        'link_calendario': _linkCalendario,
        'modalidade': _modalidade,
        'visivel': _visivel,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.DocumentReference,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'nome_sala': serializeParam(
          _nomeSala,
          ParamType.String,
        ),
        'nome_categoria': serializeParam(
          _nomeCategoria,
          ParamType.String,
          true,
        ),
        'detalhes': serializeParam(
          _detalhes,
          ParamType.String,
        ),
        'horario_inicio': serializeParam(
          _horarioInicio,
          ParamType.DateTime,
        ),
        'horario_fim': serializeParam(
          _horarioFim,
          ParamType.DateTime,
        ),
        'day01': serializeParam(
          _day01,
          ParamType.bool,
        ),
        'day02': serializeParam(
          _day02,
          ParamType.bool,
        ),
        'day03': serializeParam(
          _day03,
          ParamType.bool,
        ),
        'link': serializeParam(
          _link,
          ParamType.String,
        ),
        'link_calendario': serializeParam(
          _linkCalendario,
          ParamType.String,
        ),
        'modalidade': serializeParam(
          _modalidade,
          ParamType.bool,
        ),
        'visivel': serializeParam(
          _visivel,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ProgramacaoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProgramacaoStruct(
        id: deserializeParam(
          data['id'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['programacao'],
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        nomeSala: deserializeParam(
          data['nome_sala'],
          ParamType.String,
          false,
        ),
        nomeCategoria: deserializeParam<String>(
          data['nome_categoria'],
          ParamType.String,
          true,
        ),
        detalhes: deserializeParam(
          data['detalhes'],
          ParamType.String,
          false,
        ),
        horarioInicio: deserializeParam(
          data['horario_inicio'],
          ParamType.DateTime,
          false,
        ),
        horarioFim: deserializeParam(
          data['horario_fim'],
          ParamType.DateTime,
          false,
        ),
        day01: deserializeParam(
          data['day01'],
          ParamType.bool,
          false,
        ),
        day02: deserializeParam(
          data['day02'],
          ParamType.bool,
          false,
        ),
        day03: deserializeParam(
          data['day03'],
          ParamType.bool,
          false,
        ),
        link: deserializeParam(
          data['link'],
          ParamType.String,
          false,
        ),
        linkCalendario: deserializeParam(
          data['link_calendario'],
          ParamType.String,
          false,
        ),
        modalidade: deserializeParam(
          data['modalidade'],
          ParamType.bool,
          false,
        ),
        visivel: deserializeParam(
          data['visivel'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ProgramacaoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProgramacaoStruct &&
        id == other.id &&
        nome == other.nome &&
        nomeSala == other.nomeSala &&
        listEquality.equals(nomeCategoria, other.nomeCategoria) &&
        detalhes == other.detalhes &&
        horarioInicio == other.horarioInicio &&
        horarioFim == other.horarioFim &&
        day01 == other.day01 &&
        day02 == other.day02 &&
        day03 == other.day03 &&
        link == other.link &&
        linkCalendario == other.linkCalendario &&
        modalidade == other.modalidade &&
        visivel == other.visivel;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        nome,
        nomeSala,
        nomeCategoria,
        detalhes,
        horarioInicio,
        horarioFim,
        day01,
        day02,
        day03,
        link,
        linkCalendario,
        modalidade,
        visivel
      ]);
}

ProgramacaoStruct createProgramacaoStruct({
  DocumentReference? id,
  String? nome,
  String? nomeSala,
  String? detalhes,
  DateTime? horarioInicio,
  DateTime? horarioFim,
  bool? day01,
  bool? day02,
  bool? day03,
  String? link,
  String? linkCalendario,
  bool? modalidade,
  bool? visivel,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProgramacaoStruct(
      id: id,
      nome: nome,
      nomeSala: nomeSala,
      detalhes: detalhes,
      horarioInicio: horarioInicio,
      horarioFim: horarioFim,
      day01: day01,
      day02: day02,
      day03: day03,
      link: link,
      linkCalendario: linkCalendario,
      modalidade: modalidade,
      visivel: visivel,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProgramacaoStruct? updateProgramacaoStruct(
  ProgramacaoStruct? programacao, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    programacao
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProgramacaoStructData(
  Map<String, dynamic> firestoreData,
  ProgramacaoStruct? programacao,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (programacao == null) {
    return;
  }
  if (programacao.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && programacao.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final programacaoData =
      getProgramacaoFirestoreData(programacao, forFieldValue);
  final nestedData =
      programacaoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = programacao.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProgramacaoFirestoreData(
  ProgramacaoStruct? programacao, [
  bool forFieldValue = false,
]) {
  if (programacao == null) {
    return {};
  }
  final firestoreData = mapToFirestore(programacao.toMap());

  // Add any Firestore field values
  programacao.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProgramacaoListFirestoreData(
  List<ProgramacaoStruct>? programacaos,
) =>
    programacaos?.map((e) => getProgramacaoFirestoreData(e, true)).toList() ??
    [];
