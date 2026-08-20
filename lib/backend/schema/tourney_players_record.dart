import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TourneyPlayersRecord extends FirestoreRecord {
  TourneyPlayersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "teamName" field.
  String? _teamName;
  String get teamName => _teamName ?? '';
  bool hasTeamName() => _teamName != null;

  // "tournamentId" field.
  DocumentReference? _tournamentId;
  DocumentReference? get tournamentId => _tournamentId;
  bool hasTournamentId() => _tournamentId != null;

  void _initializeFields() {
    _teamName = snapshotData['teamName'] as String?;
    _tournamentId = snapshotData['tournamentId'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tourney_players');

  static Stream<TourneyPlayersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TourneyPlayersRecord.fromSnapshot(s));

  static Future<TourneyPlayersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TourneyPlayersRecord.fromSnapshot(s));

  static TourneyPlayersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TourneyPlayersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TourneyPlayersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TourneyPlayersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TourneyPlayersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TourneyPlayersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTourneyPlayersRecordData({
  String? teamName,
  DocumentReference? tournamentId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'teamName': teamName,
      'tournamentId': tournamentId,
    }.withoutNulls,
  );

  return firestoreData;
}

class TourneyPlayersRecordDocumentEquality
    implements Equality<TourneyPlayersRecord> {
  const TourneyPlayersRecordDocumentEquality();

  @override
  bool equals(TourneyPlayersRecord? e1, TourneyPlayersRecord? e2) {
    return e1?.teamName == e2?.teamName && e1?.tournamentId == e2?.tournamentId;
  }

  @override
  int hash(TourneyPlayersRecord? e) =>
      const ListEquality().hash([e?.teamName, e?.tournamentId]);

  @override
  bool isValidKey(Object? o) => o is TourneyPlayersRecord;
}
