// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MapaStruct extends FFFirebaseStruct {
  MapaStruct({
    MapaStruct? id,
    LatLng? local,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _local = local,
        super(firestoreUtilData);

  // "id" field.
  MapaStruct? _id;
  MapaStruct get id => _id ?? MapaStruct();
  set id(MapaStruct? val) => _id = val;
  void updateId(Function(MapaStruct) updateFn) =>
      updateFn(_id ??= MapaStruct());
  bool hasId() => _id != null;

  // "local" field.
  LatLng? _local;
  LatLng? get local => _local;
  set local(LatLng? val) => _local = val;
  bool hasLocal() => _local != null;

  static MapaStruct fromMap(Map<String, dynamic> data) => MapaStruct(
        id: MapaStruct.maybeFromMap(data['id']),
        local: data['local'] as LatLng?,
      );

  static MapaStruct? maybeFromMap(dynamic data) =>
      data is Map ? MapaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id?.toMap(),
        'local': _local,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.DataStruct,
        ),
        'local': serializeParam(
          _local,
          ParamType.LatLng,
        ),
      }.withoutNulls;

  static MapaStruct fromSerializableMap(Map<String, dynamic> data) =>
      MapaStruct(
        id: deserializeStructParam(
          data['id'],
          ParamType.DataStruct,
          false,
          structBuilder: MapaStruct.fromSerializableMap,
        ),
        local: deserializeParam(
          data['local'],
          ParamType.LatLng,
          false,
        ),
      );

  @override
  String toString() => 'MapaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MapaStruct && id == other.id && local == other.local;
  }

  @override
  int get hashCode => const ListEquality().hash([id, local]);
}

MapaStruct createMapaStruct({
  MapaStruct? id,
  LatLng? local,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MapaStruct(
      id: id ?? (clearUnsetFields ? MapaStruct() : null),
      local: local,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MapaStruct? updateMapaStruct(
  MapaStruct? mapa, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    mapa
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMapaStructData(
  Map<String, dynamic> firestoreData,
  MapaStruct? mapa,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (mapa == null) {
    return;
  }
  if (mapa.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && mapa.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final mapaData = getMapaFirestoreData(mapa, forFieldValue);
  final nestedData = mapaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = mapa.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMapaFirestoreData(
  MapaStruct? mapa, [
  bool forFieldValue = false,
]) {
  if (mapa == null) {
    return {};
  }
  final firestoreData = mapToFirestore(mapa.toMap());

  // Handle nested data for "id" field.
  addMapaStructData(
    firestoreData,
    mapa.hasId() ? mapa.id : null,
    'id',
    forFieldValue,
  );

  // Add any Firestore field values
  mapa.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMapaListFirestoreData(
  List<MapaStruct>? mapas,
) =>
    mapas?.map((e) => getMapaFirestoreData(e, true)).toList() ?? [];
