import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class ProgramacaoRecord extends FirestoreRecord {
  ProgramacaoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "horario_inicio" field.
  DateTime? _horarioInicio;
  DateTime? get horarioInicio => _horarioInicio;
  bool hasHorarioInicio() => _horarioInicio != null;

  // "horario_fim" field.
  DateTime? _horarioFim;
  DateTime? get horarioFim => _horarioFim;
  bool hasHorarioFim() => _horarioFim != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "modalidade" field.
  bool? _modalidade;
  bool get modalidade => _modalidade ?? false;
  bool hasModalidade() => _modalidade != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  // "link_calendario" field.
  String? _linkCalendario;
  String get linkCalendario => _linkCalendario ?? '';
  bool hasLinkCalendario() => _linkCalendario != null;

  // "detalhes" field.
  String? _detalhes;
  String get detalhes => _detalhes ?? '';
  bool hasDetalhes() => _detalhes != null;

  // "visivel" field.
  bool? _visivel;
  bool get visivel => _visivel ?? false;
  bool hasVisivel() => _visivel != null;

  // "nome_sala" field.
  String? _nomeSala;
  String get nomeSala => _nomeSala ?? '';
  bool hasNomeSala() => _nomeSala != null;

  // "day01" field.
  bool? _day01;
  bool get day01 => _day01 ?? false;
  bool hasDay01() => _day01 != null;

  // "day02" field.
  bool? _day02;
  bool get day02 => _day02 ?? false;
  bool hasDay02() => _day02 != null;

  // "day03" field.
  bool? _day03;
  bool get day03 => _day03 ?? false;
  bool hasDay03() => _day03 != null;

  // "nome_categoria" field.
  List<String>? _nomeCategoria;
  List<String> get nomeCategoria => _nomeCategoria ?? const [];
  bool hasNomeCategoria() => _nomeCategoria != null;

  void _initializeFields() {
    _horarioInicio = snapshotData['horario_inicio'] as DateTime?;
    _horarioFim = snapshotData['horario_fim'] as DateTime?;
    _nome = snapshotData['nome'] as String?;
    _modalidade = snapshotData['modalidade'] as bool?;
    _link = snapshotData['link'] as String?;
    _linkCalendario = snapshotData['link_calendario'] as String?;
    _detalhes = snapshotData['detalhes'] as String?;
    _visivel = snapshotData['visivel'] as bool?;
    _nomeSala = snapshotData['nome_sala'] as String?;
    _day01 = snapshotData['day01'] as bool?;
    _day02 = snapshotData['day02'] as bool?;
    _day03 = snapshotData['day03'] as bool?;
    _nomeCategoria = getDataList(snapshotData['nome_categoria']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('programacao');

  static Stream<ProgramacaoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProgramacaoRecord.fromSnapshot(s));

  static Future<ProgramacaoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProgramacaoRecord.fromSnapshot(s));

  static ProgramacaoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProgramacaoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProgramacaoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProgramacaoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProgramacaoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProgramacaoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProgramacaoRecordData({
  DateTime? horarioInicio,
  DateTime? horarioFim,
  String? nome,
  bool? modalidade,
  String? link,
  String? linkCalendario,
  String? detalhes,
  bool? visivel,
  String? nomeSala,
  bool? day01,
  bool? day02,
  bool? day03,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'horario_inicio': horarioInicio,
      'horario_fim': horarioFim,
      'nome': nome,
      'modalidade': modalidade,
      'link': link,
      'link_calendario': linkCalendario,
      'detalhes': detalhes,
      'visivel': visivel,
      'nome_sala': nomeSala,
      'day01': day01,
      'day02': day02,
      'day03': day03,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProgramacaoRecordDocumentEquality implements Equality<ProgramacaoRecord> {
  const ProgramacaoRecordDocumentEquality();

  @override
  bool equals(ProgramacaoRecord? e1, ProgramacaoRecord? e2) {
    const listEquality = ListEquality();
    return e1?.horarioInicio == e2?.horarioInicio &&
        e1?.horarioFim == e2?.horarioFim &&
        e1?.nome == e2?.nome &&
        e1?.modalidade == e2?.modalidade &&
        e1?.link == e2?.link &&
        e1?.linkCalendario == e2?.linkCalendario &&
        e1?.detalhes == e2?.detalhes &&
        e1?.visivel == e2?.visivel &&
        e1?.nomeSala == e2?.nomeSala &&
        e1?.day01 == e2?.day01 &&
        e1?.day02 == e2?.day02 &&
        e1?.day03 == e2?.day03 &&
        listEquality.equals(e1?.nomeCategoria, e2?.nomeCategoria);
  }

  @override
  int hash(ProgramacaoRecord? e) => const ListEquality().hash([
        e?.horarioInicio,
        e?.horarioFim,
        e?.nome,
        e?.modalidade,
        e?.link,
        e?.linkCalendario,
        e?.detalhes,
        e?.visivel,
        e?.nomeSala,
        e?.day01,
        e?.day02,
        e?.day03,
        e?.nomeCategoria
      ]);

  @override
  bool isValidKey(Object? o) => o is ProgramacaoRecord;
}
