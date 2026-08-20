// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SharkInvestmentObjectStruct extends FFFirebaseStruct {
  SharkInvestmentObjectStruct({
    String? name,
    int? invested,
    int? sharkId,
    String? img,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _invested = invested,
        _sharkId = sharkId,
        _img = img,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "invested" field.
  int? _invested;
  int get invested => _invested ?? 0;
  set invested(int? val) => _invested = val;

  void incrementInvested(int amount) => invested = invested + amount;

  bool hasInvested() => _invested != null;

  // "shark_id" field.
  int? _sharkId;
  int get sharkId => _sharkId ?? 0;
  set sharkId(int? val) => _sharkId = val;

  void incrementSharkId(int amount) => sharkId = sharkId + amount;

  bool hasSharkId() => _sharkId != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;

  bool hasImg() => _img != null;

  static SharkInvestmentObjectStruct fromMap(Map<String, dynamic> data) =>
      SharkInvestmentObjectStruct(
        name: data['name'] as String?,
        invested: castToType<int>(data['invested']),
        sharkId: castToType<int>(data['shark_id']),
        img: data['img'] as String?,
      );

  static SharkInvestmentObjectStruct? maybeFromMap(dynamic data) => data is Map
      ? SharkInvestmentObjectStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'invested': _invested,
        'shark_id': _sharkId,
        'img': _img,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'invested': serializeParam(
          _invested,
          ParamType.int,
        ),
        'shark_id': serializeParam(
          _sharkId,
          ParamType.int,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
      }.withoutNulls;

  static SharkInvestmentObjectStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SharkInvestmentObjectStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        invested: deserializeParam(
          data['invested'],
          ParamType.int,
          false,
        ),
        sharkId: deserializeParam(
          data['shark_id'],
          ParamType.int,
          false,
        ),
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SharkInvestmentObjectStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SharkInvestmentObjectStruct &&
        name == other.name &&
        invested == other.invested &&
        sharkId == other.sharkId &&
        img == other.img;
  }

  @override
  int get hashCode => const ListEquality().hash([name, invested, sharkId, img]);
}

SharkInvestmentObjectStruct createSharkInvestmentObjectStruct({
  String? name,
  int? invested,
  int? sharkId,
  String? img,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SharkInvestmentObjectStruct(
      name: name,
      invested: invested,
      sharkId: sharkId,
      img: img,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SharkInvestmentObjectStruct? updateSharkInvestmentObjectStruct(
  SharkInvestmentObjectStruct? sharkInvestmentObject, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    sharkInvestmentObject
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSharkInvestmentObjectStructData(
  Map<String, dynamic> firestoreData,
  SharkInvestmentObjectStruct? sharkInvestmentObject,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (sharkInvestmentObject == null) {
    return;
  }
  if (sharkInvestmentObject.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      sharkInvestmentObject.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final sharkInvestmentObjectData = getSharkInvestmentObjectFirestoreData(
      sharkInvestmentObject, forFieldValue);
  final nestedData =
      sharkInvestmentObjectData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      sharkInvestmentObject.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSharkInvestmentObjectFirestoreData(
  SharkInvestmentObjectStruct? sharkInvestmentObject, [
  bool forFieldValue = false,
]) {
  if (sharkInvestmentObject == null) {
    return {};
  }
  final firestoreData = mapToFirestore(sharkInvestmentObject.toMap());

  // Add any Firestore field values
  mapToFirestore(sharkInvestmentObject.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSharkInvestmentObjectListFirestoreData(
  List<SharkInvestmentObjectStruct>? sharkInvestmentObjects,
) =>
    sharkInvestmentObjects
        ?.map((e) => getSharkInvestmentObjectFirestoreData(e, true))
        .toList() ??
    [];
