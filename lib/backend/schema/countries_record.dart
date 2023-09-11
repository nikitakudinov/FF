import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CountriesRecord extends FirestoreRecord {
  CountriesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "iso2" field.
  String? _iso2;
  String get iso2 => _iso2 ?? '';
  bool hasIso2() => _iso2 != null;

  // "flag" field.
  String? _flag;
  String get flag => _flag ?? '';
  bool hasFlag() => _flag != null;

  // "iso3" field.
  String? _iso3;
  String get iso3 => _iso3 ?? '';
  bool hasIso3() => _iso3 != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _iso2 = snapshotData['iso2'] as String?;
    _flag = snapshotData['flag'] as String?;
    _iso3 = snapshotData['iso3'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Countries');

  static Stream<CountriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CountriesRecord.fromSnapshot(s));

  static Future<CountriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CountriesRecord.fromSnapshot(s));

  static CountriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CountriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CountriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CountriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CountriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CountriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCountriesRecordData({
  String? name,
  String? iso2,
  String? flag,
  String? iso3,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'iso2': iso2,
      'flag': flag,
      'iso3': iso3,
    }.withoutNulls,
  );

  return firestoreData;
}

class CountriesRecordDocumentEquality implements Equality<CountriesRecord> {
  const CountriesRecordDocumentEquality();

  @override
  bool equals(CountriesRecord? e1, CountriesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.iso2 == e2?.iso2 &&
        e1?.flag == e2?.flag &&
        e1?.iso3 == e2?.iso3;
  }

  @override
  int hash(CountriesRecord? e) =>
      const ListEquality().hash([e?.name, e?.iso2, e?.flag, e?.iso3]);

  @override
  bool isValidKey(Object? o) => o is CountriesRecord;
}
