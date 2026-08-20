// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PitchStruct extends FFFirebaseStruct {
  PitchStruct({
    int? pitchId,
    String? name,
    int? seasonId,
    int? episode,
    String? airDate,
    String? summary,
    String? entrepreneurGender,
    List<String>? entrepreneur,
    bool? isDeal,
    int? askAmt,
    double? askPerc,
    int? askValuation,
    String? askSummary,
    int? dealAmtEquity,
    double? dealPercEquity,
    int? dealAmtDebt,
    int? dealValuation,
    String? dealSummary,
    int? bite,
    List<String>? investors,
    List<String>? dealStructure,
    String? category,
    String? status,
    String? website,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _pitchId = pitchId,
        _name = name,
        _seasonId = seasonId,
        _episode = episode,
        _airDate = airDate,
        _summary = summary,
        _entrepreneurGender = entrepreneurGender,
        _entrepreneur = entrepreneur,
        _isDeal = isDeal,
        _askAmt = askAmt,
        _askPerc = askPerc,
        _askValuation = askValuation,
        _askSummary = askSummary,
        _dealAmtEquity = dealAmtEquity,
        _dealPercEquity = dealPercEquity,
        _dealAmtDebt = dealAmtDebt,
        _dealValuation = dealValuation,
        _dealSummary = dealSummary,
        _bite = bite,
        _investors = investors,
        _dealStructure = dealStructure,
        _category = category,
        _status = status,
        _website = website,
        super(firestoreUtilData);

  // "pitch_id" field.
  int? _pitchId;
  int get pitchId => _pitchId ?? 0;
  set pitchId(int? val) => _pitchId = val;

  void incrementPitchId(int amount) => pitchId = pitchId + amount;

  bool hasPitchId() => _pitchId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "season_id" field.
  int? _seasonId;
  int get seasonId => _seasonId ?? 0;
  set seasonId(int? val) => _seasonId = val;

  void incrementSeasonId(int amount) => seasonId = seasonId + amount;

  bool hasSeasonId() => _seasonId != null;

  // "episode" field.
  int? _episode;
  int get episode => _episode ?? 0;
  set episode(int? val) => _episode = val;

  void incrementEpisode(int amount) => episode = episode + amount;

  bool hasEpisode() => _episode != null;

  // "air_date" field.
  String? _airDate;
  String get airDate => _airDate ?? '';
  set airDate(String? val) => _airDate = val;

  bool hasAirDate() => _airDate != null;

  // "summary" field.
  String? _summary;
  String get summary => _summary ?? '';
  set summary(String? val) => _summary = val;

  bool hasSummary() => _summary != null;

  // "entrepreneur_gender" field.
  String? _entrepreneurGender;
  String get entrepreneurGender => _entrepreneurGender ?? '';
  set entrepreneurGender(String? val) => _entrepreneurGender = val;

  bool hasEntrepreneurGender() => _entrepreneurGender != null;

  // "entrepreneur" field.
  List<String>? _entrepreneur;
  List<String> get entrepreneur => _entrepreneur ?? const [];
  set entrepreneur(List<String>? val) => _entrepreneur = val;

  void updateEntrepreneur(Function(List<String>) updateFn) {
    updateFn(_entrepreneur ??= []);
  }

  bool hasEntrepreneur() => _entrepreneur != null;

  // "is_deal" field.
  bool? _isDeal;
  bool get isDeal => _isDeal ?? false;
  set isDeal(bool? val) => _isDeal = val;

  bool hasIsDeal() => _isDeal != null;

  // "ask_amt" field.
  int? _askAmt;
  int get askAmt => _askAmt ?? 0;
  set askAmt(int? val) => _askAmt = val;

  void incrementAskAmt(int amount) => askAmt = askAmt + amount;

  bool hasAskAmt() => _askAmt != null;

  // "ask_perc" field.
  double? _askPerc;
  double get askPerc => _askPerc ?? 0.0;
  set askPerc(double? val) => _askPerc = val;

  void incrementAskPerc(double amount) => askPerc = askPerc + amount;

  bool hasAskPerc() => _askPerc != null;

  // "ask_valuation" field.
  int? _askValuation;
  int get askValuation => _askValuation ?? 0;
  set askValuation(int? val) => _askValuation = val;

  void incrementAskValuation(int amount) =>
      askValuation = askValuation + amount;

  bool hasAskValuation() => _askValuation != null;

  // "ask_summary" field.
  String? _askSummary;
  String get askSummary => _askSummary ?? '';
  set askSummary(String? val) => _askSummary = val;

  bool hasAskSummary() => _askSummary != null;

  // "deal_amt_equity" field.
  int? _dealAmtEquity;
  int get dealAmtEquity => _dealAmtEquity ?? 0;
  set dealAmtEquity(int? val) => _dealAmtEquity = val;

  void incrementDealAmtEquity(int amount) =>
      dealAmtEquity = dealAmtEquity + amount;

  bool hasDealAmtEquity() => _dealAmtEquity != null;

  // "deal_perc_equity" field.
  double? _dealPercEquity;
  double get dealPercEquity => _dealPercEquity ?? 0.0;
  set dealPercEquity(double? val) => _dealPercEquity = val;

  void incrementDealPercEquity(double amount) =>
      dealPercEquity = dealPercEquity + amount;

  bool hasDealPercEquity() => _dealPercEquity != null;

  // "deal_amt_debt" field.
  int? _dealAmtDebt;
  int get dealAmtDebt => _dealAmtDebt ?? 0;
  set dealAmtDebt(int? val) => _dealAmtDebt = val;

  void incrementDealAmtDebt(int amount) => dealAmtDebt = dealAmtDebt + amount;

  bool hasDealAmtDebt() => _dealAmtDebt != null;

  // "deal_valuation" field.
  int? _dealValuation;
  int get dealValuation => _dealValuation ?? 0;
  set dealValuation(int? val) => _dealValuation = val;

  void incrementDealValuation(int amount) =>
      dealValuation = dealValuation + amount;

  bool hasDealValuation() => _dealValuation != null;

  // "deal_summary" field.
  String? _dealSummary;
  String get dealSummary => _dealSummary ?? '';
  set dealSummary(String? val) => _dealSummary = val;

  bool hasDealSummary() => _dealSummary != null;

  // "bite" field.
  int? _bite;
  int get bite => _bite ?? 0;
  set bite(int? val) => _bite = val;

  void incrementBite(int amount) => bite = bite + amount;

  bool hasBite() => _bite != null;

  // "investors" field.
  List<String>? _investors;
  List<String> get investors => _investors ?? const [];
  set investors(List<String>? val) => _investors = val;

  void updateInvestors(Function(List<String>) updateFn) {
    updateFn(_investors ??= []);
  }

  bool hasInvestors() => _investors != null;

  // "deal_structure" field.
  List<String>? _dealStructure;
  List<String> get dealStructure => _dealStructure ?? const [];
  set dealStructure(List<String>? val) => _dealStructure = val;

  void updateDealStructure(Function(List<String>) updateFn) {
    updateFn(_dealStructure ??= []);
  }

  bool hasDealStructure() => _dealStructure != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  set website(String? val) => _website = val;

  bool hasWebsite() => _website != null;

  static PitchStruct fromMap(Map<String, dynamic> data) => PitchStruct(
        pitchId: castToType<int>(data['pitch_id']),
        name: data['name'] as String?,
        seasonId: castToType<int>(data['season_id']),
        episode: castToType<int>(data['episode']),
        airDate: data['air_date'] as String?,
        summary: data['summary'] as String?,
        entrepreneurGender: data['entrepreneur_gender'] as String?,
        entrepreneur: getDataList(data['entrepreneur']),
        isDeal: data['is_deal'] as bool?,
        askAmt: castToType<int>(data['ask_amt']),
        askPerc: castToType<double>(data['ask_perc']),
        askValuation: castToType<int>(data['ask_valuation']),
        askSummary: data['ask_summary'] as String?,
        dealAmtEquity: castToType<int>(data['deal_amt_equity']),
        dealPercEquity: castToType<double>(data['deal_perc_equity']),
        dealAmtDebt: castToType<int>(data['deal_amt_debt']),
        dealValuation: castToType<int>(data['deal_valuation']),
        dealSummary: data['deal_summary'] as String?,
        bite: castToType<int>(data['bite']),
        investors: getDataList(data['investors']),
        dealStructure: getDataList(data['deal_structure']),
        category: data['category'] as String?,
        status: data['status'] as String?,
        website: data['website'] as String?,
      );

  static PitchStruct? maybeFromMap(dynamic data) =>
      data is Map ? PitchStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'pitch_id': _pitchId,
        'name': _name,
        'season_id': _seasonId,
        'episode': _episode,
        'air_date': _airDate,
        'summary': _summary,
        'entrepreneur_gender': _entrepreneurGender,
        'entrepreneur': _entrepreneur,
        'is_deal': _isDeal,
        'ask_amt': _askAmt,
        'ask_perc': _askPerc,
        'ask_valuation': _askValuation,
        'ask_summary': _askSummary,
        'deal_amt_equity': _dealAmtEquity,
        'deal_perc_equity': _dealPercEquity,
        'deal_amt_debt': _dealAmtDebt,
        'deal_valuation': _dealValuation,
        'deal_summary': _dealSummary,
        'bite': _bite,
        'investors': _investors,
        'deal_structure': _dealStructure,
        'category': _category,
        'status': _status,
        'website': _website,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'pitch_id': serializeParam(
          _pitchId,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'season_id': serializeParam(
          _seasonId,
          ParamType.int,
        ),
        'episode': serializeParam(
          _episode,
          ParamType.int,
        ),
        'air_date': serializeParam(
          _airDate,
          ParamType.String,
        ),
        'summary': serializeParam(
          _summary,
          ParamType.String,
        ),
        'entrepreneur_gender': serializeParam(
          _entrepreneurGender,
          ParamType.String,
        ),
        'entrepreneur': serializeParam(
          _entrepreneur,
          ParamType.String,
          isList: true,
        ),
        'is_deal': serializeParam(
          _isDeal,
          ParamType.bool,
        ),
        'ask_amt': serializeParam(
          _askAmt,
          ParamType.int,
        ),
        'ask_perc': serializeParam(
          _askPerc,
          ParamType.double,
        ),
        'ask_valuation': serializeParam(
          _askValuation,
          ParamType.int,
        ),
        'ask_summary': serializeParam(
          _askSummary,
          ParamType.String,
        ),
        'deal_amt_equity': serializeParam(
          _dealAmtEquity,
          ParamType.int,
        ),
        'deal_perc_equity': serializeParam(
          _dealPercEquity,
          ParamType.double,
        ),
        'deal_amt_debt': serializeParam(
          _dealAmtDebt,
          ParamType.int,
        ),
        'deal_valuation': serializeParam(
          _dealValuation,
          ParamType.int,
        ),
        'deal_summary': serializeParam(
          _dealSummary,
          ParamType.String,
        ),
        'bite': serializeParam(
          _bite,
          ParamType.int,
        ),
        'investors': serializeParam(
          _investors,
          ParamType.String,
          isList: true,
        ),
        'deal_structure': serializeParam(
          _dealStructure,
          ParamType.String,
          isList: true,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'website': serializeParam(
          _website,
          ParamType.String,
        ),
      }.withoutNulls;

  static PitchStruct fromSerializableMap(Map<String, dynamic> data) =>
      PitchStruct(
        pitchId: deserializeParam(
          data['pitch_id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        seasonId: deserializeParam(
          data['season_id'],
          ParamType.int,
          false,
        ),
        episode: deserializeParam(
          data['episode'],
          ParamType.int,
          false,
        ),
        airDate: deserializeParam(
          data['air_date'],
          ParamType.String,
          false,
        ),
        summary: deserializeParam(
          data['summary'],
          ParamType.String,
          false,
        ),
        entrepreneurGender: deserializeParam(
          data['entrepreneur_gender'],
          ParamType.String,
          false,
        ),
        entrepreneur: deserializeParam<String>(
          data['entrepreneur'],
          ParamType.String,
          true,
        ),
        isDeal: deserializeParam(
          data['is_deal'],
          ParamType.bool,
          false,
        ),
        askAmt: deserializeParam(
          data['ask_amt'],
          ParamType.int,
          false,
        ),
        askPerc: deserializeParam(
          data['ask_perc'],
          ParamType.double,
          false,
        ),
        askValuation: deserializeParam(
          data['ask_valuation'],
          ParamType.int,
          false,
        ),
        askSummary: deserializeParam(
          data['ask_summary'],
          ParamType.String,
          false,
        ),
        dealAmtEquity: deserializeParam(
          data['deal_amt_equity'],
          ParamType.int,
          false,
        ),
        dealPercEquity: deserializeParam(
          data['deal_perc_equity'],
          ParamType.double,
          false,
        ),
        dealAmtDebt: deserializeParam(
          data['deal_amt_debt'],
          ParamType.int,
          false,
        ),
        dealValuation: deserializeParam(
          data['deal_valuation'],
          ParamType.int,
          false,
        ),
        dealSummary: deserializeParam(
          data['deal_summary'],
          ParamType.String,
          false,
        ),
        bite: deserializeParam(
          data['bite'],
          ParamType.int,
          false,
        ),
        investors: deserializeParam<String>(
          data['investors'],
          ParamType.String,
          true,
        ),
        dealStructure: deserializeParam<String>(
          data['deal_structure'],
          ParamType.String,
          true,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        website: deserializeParam(
          data['website'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PitchStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PitchStruct &&
        pitchId == other.pitchId &&
        name == other.name &&
        seasonId == other.seasonId &&
        episode == other.episode &&
        airDate == other.airDate &&
        summary == other.summary &&
        entrepreneurGender == other.entrepreneurGender &&
        listEquality.equals(entrepreneur, other.entrepreneur) &&
        isDeal == other.isDeal &&
        askAmt == other.askAmt &&
        askPerc == other.askPerc &&
        askValuation == other.askValuation &&
        askSummary == other.askSummary &&
        dealAmtEquity == other.dealAmtEquity &&
        dealPercEquity == other.dealPercEquity &&
        dealAmtDebt == other.dealAmtDebt &&
        dealValuation == other.dealValuation &&
        dealSummary == other.dealSummary &&
        bite == other.bite &&
        listEquality.equals(investors, other.investors) &&
        listEquality.equals(dealStructure, other.dealStructure) &&
        category == other.category &&
        status == other.status &&
        website == other.website;
  }

  @override
  int get hashCode => const ListEquality().hash([
        pitchId,
        name,
        seasonId,
        episode,
        airDate,
        summary,
        entrepreneurGender,
        entrepreneur,
        isDeal,
        askAmt,
        askPerc,
        askValuation,
        askSummary,
        dealAmtEquity,
        dealPercEquity,
        dealAmtDebt,
        dealValuation,
        dealSummary,
        bite,
        investors,
        dealStructure,
        category,
        status,
        website
      ]);
}

PitchStruct createPitchStruct({
  int? pitchId,
  String? name,
  int? seasonId,
  int? episode,
  String? airDate,
  String? summary,
  String? entrepreneurGender,
  bool? isDeal,
  int? askAmt,
  double? askPerc,
  int? askValuation,
  String? askSummary,
  int? dealAmtEquity,
  double? dealPercEquity,
  int? dealAmtDebt,
  int? dealValuation,
  String? dealSummary,
  int? bite,
  String? category,
  String? status,
  String? website,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PitchStruct(
      pitchId: pitchId,
      name: name,
      seasonId: seasonId,
      episode: episode,
      airDate: airDate,
      summary: summary,
      entrepreneurGender: entrepreneurGender,
      isDeal: isDeal,
      askAmt: askAmt,
      askPerc: askPerc,
      askValuation: askValuation,
      askSummary: askSummary,
      dealAmtEquity: dealAmtEquity,
      dealPercEquity: dealPercEquity,
      dealAmtDebt: dealAmtDebt,
      dealValuation: dealValuation,
      dealSummary: dealSummary,
      bite: bite,
      category: category,
      status: status,
      website: website,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PitchStruct? updatePitchStruct(
  PitchStruct? pitch, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    pitch
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPitchStructData(
  Map<String, dynamic> firestoreData,
  PitchStruct? pitch,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (pitch == null) {
    return;
  }
  if (pitch.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && pitch.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final pitchData = getPitchFirestoreData(pitch, forFieldValue);
  final nestedData = pitchData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = pitch.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPitchFirestoreData(
  PitchStruct? pitch, [
  bool forFieldValue = false,
]) {
  if (pitch == null) {
    return {};
  }
  final firestoreData = mapToFirestore(pitch.toMap());

  // Add any Firestore field values
  mapToFirestore(pitch.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPitchListFirestoreData(
  List<PitchStruct>? pitchs,
) =>
    pitchs?.map((e) => getPitchFirestoreData(e, true)).toList() ?? [];
