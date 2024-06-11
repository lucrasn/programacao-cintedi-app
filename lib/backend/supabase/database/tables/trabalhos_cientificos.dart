import '../database.dart';

class TrabalhosCientificosTable extends SupabaseTable<TrabalhosCientificosRow> {
  @override
  String get tableName => 'trabalhosCientificos';

  @override
  TrabalhosCientificosRow createRow(Map<String, dynamic> data) =>
      TrabalhosCientificosRow(data);
}

class TrabalhosCientificosRow extends SupabaseDataRow {
  TrabalhosCientificosRow(super.data);

  @override
  SupabaseTable get table => TrabalhosCientificosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get titulo => getField<String>('titulo')!;
  set titulo(String value) => setField<String>('titulo', value);

  String? get modalidade => getField<String>('modalidade');
  set modalidade(String? value) => setField<String>('modalidade', value);

  String? get subarea => getField<String>('subarea');
  set subarea(String? value) => setField<String>('subarea', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get principal => getField<String>('principal');
  set principal(String? value) => setField<String>('principal', value);

  String? get identificador => getField<String>('identificador');
  set identificador(String? value) => setField<String>('identificador', value);

  String? get numero => getField<String>('numero');
  set numero(String? value) => setField<String>('numero', value);

  String? get local => getField<String>('local');
  set local(String? value) => setField<String>('local', value);

  String? get dataField => getField<String>('data');
  set dataField(String? value) => setField<String>('data', value);

  String? get hora => getField<String>('hora');
  set hora(String? value) => setField<String>('hora', value);
}
