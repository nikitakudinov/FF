// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CountryStruct extends FFFirebaseStruct {
  CountryStruct({
    String? name,
    String? flag,
    String? iso2,
    String? iso3,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _flag = flag,
        _iso2 = iso2,
        _iso3 = iso3,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "flag" field.
  String? _flag;
  String get flag => _flag ?? '';
  set flag(String? val) => _flag = val;
  bool hasFlag() => _flag != null;

  // "iso2" field.
  String? _iso2;
  String get iso2 => _iso2 ?? '';
  set iso2(String? val) => _iso2 = val;
  bool hasIso2() => _iso2 != null;

  // "Iso3" field.
  String? _iso3;
  String get iso3 => _iso3 ?? '';
  set iso3(String? val) => _iso3 = val;
  bool hasIso3() => _iso3 != null;

  static CountryStruct fromMap(Map<String, dynamic> data) => CountryStruct(
        name: data['name'] as String?,
        flag: data['flag'] as String?,
        iso2: data['iso2'] as String?,
        iso3: data['Iso3'] as String?,
      );

  static CountryStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? CountryStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'flag': _flag,
        'iso2': _iso2,
        'Iso3': _iso3,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'flag': serializeParam(
          _flag,
          ParamType.String,
        ),
        'iso2': serializeParam(
          _iso2,
          ParamType.String,
        ),
        'Iso3': serializeParam(
          _iso3,
          ParamType.String,
        ),
      }.withoutNulls;

  static CountryStruct fromSerializableMap(Map<String, dynamic> data) =>
      CountryStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        flag: deserializeParam(
          data['flag'],
          ParamType.String,
          false,
        ),
        iso2: deserializeParam(
          data['iso2'],
          ParamType.String,
          false,
        ),
        iso3: deserializeParam(
          data['Iso3'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CountryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CountryStruct &&
        name == other.name &&
        flag == other.flag &&
        iso2 == other.iso2 &&
        iso3 == other.iso3;
  }

  @override
  int get hashCode => const ListEquality().hash([name, flag, iso2, iso3]);
}

CountryStruct createCountryStruct({
  String? name,
  String? flag,
  String? iso2,
  String? iso3,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CountryStruct(
      name: name,
      flag: flag,
      iso2: iso2,
      iso3: iso3,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CountryStruct? updateCountryStruct(
  CountryStruct? country, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    country
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCountryStructData(
  Map<String, dynamic> firestoreData,
  CountryStruct? country,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (country == null) {
    return;
  }
  if (country.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && country.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final countryData = getCountryFirestoreData(country, forFieldValue);
  final nestedData = countryData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = country.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCountryFirestoreData(
  CountryStruct? country, [
  bool forFieldValue = false,
]) {
  if (country == null) {
    return {};
  }
  final firestoreData = mapToFirestore(country.toMap());

  // Add any Firestore field values
  country.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCountryListFirestoreData(
  List<CountryStruct>? countrys,
) =>
    countrys?.map((e) => getCountryFirestoreData(e, true)).toList() ?? [];
