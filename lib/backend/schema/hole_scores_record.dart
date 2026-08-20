import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HoleScoresRecord extends FirestoreRecord {
  HoleScoresRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "holeNumber" field.
  int? _holeNumber;
  int get holeNumber => _holeNumber ?? 0;
  bool hasHoleNumber() => _holeNumber != null;

  // "strokes" field.
  int? _strokes;
  int get strokes => _strokes ?? 0;
  bool hasStrokes() => _strokes != null;

  // "createdTimestamp" field.
  DateTime? _createdTimestamp;
  DateTime? get createdTimestamp => _createdTimestamp;
  bool hasCreatedTimestamp() => _createdTimestamp != null;

  // "tournamentId" field.
  DocumentReference? _tournamentId;
  DocumentReference? get tournamentId => _tournamentId;
  bool hasTournamentId() => _tournamentId != null;

  // "teamName" field.
  DocumentReference? _teamName;
  DocumentReference? get teamName => _teamName;
  bool hasTeamName() => _teamName != null;

  void _initializeFields() {
    _holeNumber = castToType<int>(snapshotData['holeNumber']);
    _strokes = castToType<int>(snapshotData['strokes']);
    _createdTimestamp = snapshotData['createdTimestamp'] as DateTime?;
    _tournamentId = snapshotData['tournamentId'] as DocumentReference?;
    _teamName = snapshotData['teamName'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('hole_scores');

  static Stream<HoleScoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HoleScoresRecord.fromSnapshot(s));

  static Future<HoleScoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HoleScoresRecord.fromSnapshot(s));

  static HoleScoresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HoleScoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HoleScoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HoleScoresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HoleScoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HoleScoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHoleScoresRecordData({
  int? holeNumber,
  int? strokes,
  DateTime? createdTimestamp,
  DocumentReference? tournamentId,
  DocumentReference? teamName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'holeNumber': holeNumber,
      'strokes': strokes,
      'createdTimestamp': createdTimestamp,
      'tournamentId': tournamentId,
      'teamName': teamName,
    }.withoutNulls,
  );

  return firestoreData;
}

class HoleScoresRecordDocumentEquality implements Equality<HoleScoresRecord> {
  const HoleScoresRecordDocumentEquality();

  @override
  bool equals(HoleScoresRecord? e1, HoleScoresRecord? e2) {
    return e1?.holeNumber == e2?.holeNumber &&
        e1?.strokes == e2?.strokes &&
        e1?.createdTimestamp == e2?.createdTimestamp &&
        e1?.tournamentId == e2?.tournamentId &&
        e1?.teamName == e2?.teamName;
  }

  @override
  int hash(HoleScoresRecord? e) => const ListEquality().hash([
        e?.holeNumber,
        e?.strokes,
        e?.createdTimestamp,
        e?.tournamentId,
        e?.teamName
      ]);

  @override
  bool isValidKey(Object? o) => o is HoleScoresRecord;
}
