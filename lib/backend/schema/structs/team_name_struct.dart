// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamNameStruct extends FFFirebaseStruct {
  TeamNameStruct({
    int? teamName,
    String? team,
    String? summary,
    String? description,
    String? dob,
    bool? isGuest,
    String? img,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _teamName = teamName,
        _team = team,
        _summary = summary,
        _description = description,
        _dob = dob,
        _isGuest = isGuest,
        _img = img,
        super(firestoreUtilData);

  // "TeamName" field.
  int? _teamName;
  int get teamName => _teamName ?? 0;
  set teamName(int? val) => _teamName = val;

  void incrementTeamName(int amount) => teamName = teamName + amount;

  bool hasTeamName() => _teamName != null;

  // "Team" field.
  String? _team;
  String get team => _team ?? '';
  set team(String? val) => _team = val;

  bool hasTeam() => _team != null;

  // "summary" field.
  String? _summary;
  String get summary => _summary ?? '';
  set summary(String? val) => _summary = val;

  bool hasSummary() => _summary != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "dob" field.
  String? _dob;
  String get dob => _dob ?? '';
  set dob(String? val) => _dob = val;

  bool hasDob() => _dob != null;

  // "is_guest" field.
  bool? _isGuest;
  bool get isGuest => _isGuest ?? false;
  set isGuest(bool? val) => _isGuest = val;

  bool hasIsGuest() => _isGuest != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;

  bool hasImg() => _img != null;

  static TeamNameStruct fromMap(Map<String, dynamic> data) => TeamNameStruct(
        teamName: castToType<int>(data['TeamName']),
        team: data['Team'] as String?,
        summary: data['summary'] as String?,
        description: data['description'] as String?,
        dob: data['dob'] as String?,
        isGuest: data['is_guest'] as bool?,
        img: data['img'] as String?,
      );

  static TeamNameStruct? maybeFromMap(dynamic data) =>
      data is Map ? TeamNameStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'TeamName': _teamName,
        'Team': _team,
        'summary': _summary,
        'description': _description,
        'dob': _dob,
        'is_guest': _isGuest,
        'img': _img,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'TeamName': serializeParam(
          _teamName,
          ParamType.int,
        ),
        'Team': serializeParam(
          _team,
          ParamType.String,
        ),
        'summary': serializeParam(
          _summary,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'dob': serializeParam(
          _dob,
          ParamType.String,
        ),
        'is_guest': serializeParam(
          _isGuest,
          ParamType.bool,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
      }.withoutNulls;

  static TeamNameStruct fromSerializableMap(Map<String, dynamic> data) =>
      TeamNameStruct(
        teamName: deserializeParam(
          data['TeamName'],
          ParamType.int,
          false,
        ),
        team: deserializeParam(
          data['Team'],
          ParamType.String,
          false,
        ),
        summary: deserializeParam(
          data['summary'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        dob: deserializeParam(
          data['dob'],
          ParamType.String,
          false,
        ),
        isGuest: deserializeParam(
          data['is_guest'],
          ParamType.bool,
          false,
        ),
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TeamNameStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TeamNameStruct &&
        teamName == other.teamName &&
        team == other.team &&
        summary == other.summary &&
        description == other.description &&
        dob == other.dob &&
        isGuest == other.isGuest &&
        img == other.img;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([teamName, team, summary, description, dob, isGuest, img]);
}

TeamNameStruct createTeamNameStruct({
  int? teamName,
  String? team,
  String? summary,
  String? description,
  String? dob,
  bool? isGuest,
  String? img,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TeamNameStruct(
      teamName: teamName,
      team: team,
      summary: summary,
      description: description,
      dob: dob,
      isGuest: isGuest,
      img: img,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TeamNameStruct? updateTeamNameStruct(
  TeamNameStruct? teamNameStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    teamNameStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTeamNameStructData(
  Map<String, dynamic> firestoreData,
  TeamNameStruct? teamNameStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (teamNameStruct == null) {
    return;
  }
  if (teamNameStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && teamNameStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final teamNameStructData =
      getTeamNameFirestoreData(teamNameStruct, forFieldValue);
  final nestedData =
      teamNameStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = teamNameStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTeamNameFirestoreData(
  TeamNameStruct? teamNameStruct, [
  bool forFieldValue = false,
]) {
  if (teamNameStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(teamNameStruct.toMap());

  // Add any Firestore field values
  mapToFirestore(teamNameStruct.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTeamNameListFirestoreData(
  List<TeamNameStruct>? teamNameStructs,
) =>
    teamNameStructs?.map((e) => getTeamNameFirestoreData(e, true)).toList() ??
    [];
