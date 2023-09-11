import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamsRecord extends FirestoreRecord {
  TeamsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Members" field.
  List<DocumentReference>? _members;
  List<DocumentReference> get members => _members ?? const [];
  bool hasMembers() => _members != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "Country" field.
  DocumentReference? _country;
  DocumentReference? get country => _country;
  bool hasCountry() => _country != null;

  // "CountryName" field.
  String? _countryName;
  String get countryName => _countryName ?? '';
  bool hasCountryName() => _countryName != null;

  // "CountryFlag" field.
  String? _countryFlag;
  String get countryFlag => _countryFlag ?? '';
  bool hasCountryFlag() => _countryFlag != null;

  // "CountryISO2" field.
  String? _countryISO2;
  String get countryISO2 => _countryISO2 ?? '';
  bool hasCountryISO2() => _countryISO2 != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _members = getDataList(snapshotData['Members']);
    _logo = snapshotData['logo'] as String?;
    _country = snapshotData['Country'] as DocumentReference?;
    _countryName = snapshotData['CountryName'] as String?;
    _countryFlag = snapshotData['CountryFlag'] as String?;
    _countryISO2 = snapshotData['CountryISO2'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('teams');

  static Stream<TeamsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TeamsRecord.fromSnapshot(s));

  static Future<TeamsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TeamsRecord.fromSnapshot(s));

  static TeamsRecord fromSnapshot(DocumentSnapshot snapshot) => TeamsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TeamsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TeamsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TeamsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TeamsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTeamsRecordData({
  String? name,
  String? logo,
  DocumentReference? country,
  String? countryName,
  String? countryFlag,
  String? countryISO2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'logo': logo,
      'Country': country,
      'CountryName': countryName,
      'CountryFlag': countryFlag,
      'CountryISO2': countryISO2,
    }.withoutNulls,
  );

  return firestoreData;
}

class TeamsRecordDocumentEquality implements Equality<TeamsRecord> {
  const TeamsRecordDocumentEquality();

  @override
  bool equals(TeamsRecord? e1, TeamsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        listEquality.equals(e1?.members, e2?.members) &&
        e1?.logo == e2?.logo &&
        e1?.country == e2?.country &&
        e1?.countryName == e2?.countryName &&
        e1?.countryFlag == e2?.countryFlag &&
        e1?.countryISO2 == e2?.countryISO2;
  }

  @override
  int hash(TeamsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.members,
        e?.logo,
        e?.country,
        e?.countryName,
        e?.countryFlag,
        e?.countryISO2
      ]);

  @override
  bool isValidKey(Object? o) => o is TeamsRecord;
}
