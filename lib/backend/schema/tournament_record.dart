import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TournamentRecord extends FirestoreRecord {
  TournamentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "tournamentName" field.
  String? _tournamentName;
  String get tournamentName => _tournamentName ?? '';
  bool hasTournamentName() => _tournamentName != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "createdTimestamp" field.
  DateTime? _createdTimestamp;
  DateTime? get createdTimestamp => _createdTimestamp;
  bool hasCreatedTimestamp() => _createdTimestamp != null;

  void _initializeFields() {
    _tournamentName = snapshotData['tournamentName'] as String?;
    _status = snapshotData['status'] as String?;
    _createdTimestamp = snapshotData['createdTimestamp'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tournament');

  static Stream<TournamentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TournamentRecord.fromSnapshot(s));

  static Future<TournamentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TournamentRecord.fromSnapshot(s));

  static TournamentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TournamentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TournamentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TournamentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TournamentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TournamentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTournamentRecordData({
  String? tournamentName,
  String? status,
  DateTime? createdTimestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tournamentName': tournamentName,
      'status': status,
      'createdTimestamp': createdTimestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class TournamentRecordDocumentEquality implements Equality<TournamentRecord> {
  const TournamentRecordDocumentEquality();

  @override
  bool equals(TournamentRecord? e1, TournamentRecord? e2) {
    return e1?.tournamentName == e2?.tournamentName &&
        e1?.status == e2?.status &&
        e1?.createdTimestamp == e2?.createdTimestamp;
  }

  @override
  int hash(TournamentRecord? e) => const ListEquality()
      .hash([e?.tournamentName, e?.status, e?.createdTimestamp]);

  @override
  bool isValidKey(Object? o) => o is TournamentRecord;
}
