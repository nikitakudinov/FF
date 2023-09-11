import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  DocumentReference? _selectedUser;
  DocumentReference? get selectedUser => _selectedUser;
  set selectedUser(DocumentReference? _value) {
    _selectedUser = _value;
  }

  String _selectedUserImage = '';
  String get selectedUserImage => _selectedUserImage;
  set selectedUserImage(String _value) {
    _selectedUserImage = _value;
  }

  String _selectedUserName = '';
  String get selectedUserName => _selectedUserName;
  set selectedUserName(String _value) {
    _selectedUserName = _value;
  }

  bool _showFullList = true;
  bool get showFullList => _showFullList;
  set showFullList(bool _value) {
    _showFullList = _value;
  }

  String _uploadedLogo =
      'https://png.pngtree.com/png-vector/20220611/ourmid/pngtree-person-gray-photo-placeholder-man-silhouette-on-gray-background-png-image_4826253.png';
  String get uploadedLogo => _uploadedLogo;
  set uploadedLogo(String _value) {
    _uploadedLogo = _value;
  }

  DocumentReference? _selectedCountry;
  DocumentReference? get selectedCountry => _selectedCountry;
  set selectedCountry(DocumentReference? _value) {
    _selectedCountry = _value;
  }

  String _selectedCountryName = '';
  String get selectedCountryName => _selectedCountryName;
  set selectedCountryName(String _value) {
    _selectedCountryName = _value;
  }

  String _selectedCountryFlag = '';
  String get selectedCountryFlag => _selectedCountryFlag;
  set selectedCountryFlag(String _value) {
    _selectedCountryFlag = _value;
  }

  List<CountryStruct> _Countries = [
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Afghanistan\",\"flag\":\"https://upload.wikimedia.org/wikipedia/commons/9/9a/Flag_of_Afghanistan.svg\",\"iso2\":\"AF\",\"Iso3\":\"AFG\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Albania\",\"flag\":\"\\thttps://upload.wikimedia.org/wikipedia/commons/3/36/Flag_of_Albania.svg\",\"iso2\":\"\\tAL\",\"Iso3\":\"ALB\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Algeria\",\"flag\":\"https://upload.wikimedia.org/wikipedia/commons/7/77/Flag_of_Algeria.svg\",\"iso2\":\"DZ\",\"Iso3\":\"DZA\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Andorra\",\"flag\":\"https://upload.wikimedia.org/wikipedia/commons/1/19/Flag_of_Andorra.svg\",\"iso2\":\"AD\",\"Iso3\":\"AND\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Angola\",\"flag\":\"https://upload.wikimedia.org/wikipedia/commons/9/9d/Flag_of_Angola.svg\",\"iso2\":\"AO\",\"Iso3\":\"AGO\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Anguilla\",\"flag\":\"https://upload.wikimedia.org/wikipedia/commons/b/b4/Flag_of_Anguilla.svg\",\"iso2\":\"\\tAI\",\"Iso3\":\"\\tAIA\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Antigua and Barbuda\",\"flag\":\"https://upload.wikimedia.org/wikipedia/commons/8/89/Flag_of_Antigua_and_Barbuda.svg\",\"iso2\":\"AG\",\"Iso3\":\"ATG\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Argentina\",\"flag\":\"https://upload.wikimedia.org/wikipedia/commons/1/1a/Flag_of_Argentina.svg\",\"iso2\":\"AR\",\"Iso3\":\"ARG\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Armenia\",\"flag\":\"https://upload.wikimedia.org/wikipedia/commons/2/2f/Flag_of_Armenia.svg\",\"iso2\":\"AM\",\"Iso3\":\"ARM\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Aruba\",\"flag\":\"https://upload.wikimedia.org/wikipedia/commons/f/f6/Flag_of_Aruba.svg\",\"iso2\":\"AW\",\"Iso3\":\"ABW\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Australia\",\"flag\":\"https://upload.wikimedia.org/wikipedia/commons/8/88/Flag_of_Australia_%28converted%29.svg\",\"iso2\":\"AU\",\"Iso3\":\"AUS\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Austria\",\"flag\":\"https://upload.wikimedia.org/wikipedia/commons/4/41/Flag_of_Austria.svg\",\"iso2\":\"AT\",\"Iso3\":\"AUT\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Azerbaijan\",\"flag\":\"https://upload.wikimedia.org/wikipedia/commons/d/dd/Flag_of_Azerbaijan.svg\",\"iso2\":\"AZ\",\"Iso3\":\"AZE\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Bahamas\",\"flag\":\"https://upload.wikimedia.org/wikipedia/commons/9/93/Flag_of_the_Bahamas.svg\",\"iso2\":\"BS\",\"Iso3\":\"BHS\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Bahrain\",\"flag\":\"https://upload.wikimedia.org/wikipedia/commons/2/2c/Flag_of_Bahrain.svg\",\"iso2\":\"BH\",\"Iso3\":\"BHR\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Bangladesh\",\"flag\":\"https://upload.wikimedia.org/wikipedia/commons/f/f9/Flag_of_Bangladesh.svg\",\"iso2\":\"BD\",\"Iso3\":\"BGD\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Barbados\",\"flag\":\"https://upload.wikimedia.org/wikipedia/commons/e/ef/Flag_of_Barbados.svg\",\"iso2\":\"BB\",\"Iso3\":\"BRB\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Belarus\",\"flag\":\"https://upload.wikimedia.org/wikipedia/commons/8/85/Flag_of_Belarus.svg\",\"iso2\":\"BY\",\"Iso3\":\"BLR\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"name\":\"Belgium\",\"flag\":\"https://upload.wikimedia.org/wikipedia/commons/6/65/Flag_of_Belgium.svg\",\"iso2\":\"BE\",\"Iso3\":\"BEL\"}'))
  ];
  List<CountryStruct> get Countries => _Countries;
  set Countries(List<CountryStruct> _value) {
    _Countries = _value;
  }

  void addToCountries(CountryStruct _value) {
    _Countries.add(_value);
  }

  void removeFromCountries(CountryStruct _value) {
    _Countries.remove(_value);
  }

  void removeAtIndexFromCountries(int _index) {
    _Countries.removeAt(_index);
  }

  void updateCountriesAtIndex(
    int _index,
    CountryStruct Function(CountryStruct) updateFn,
  ) {
    _Countries[_index] = updateFn(_Countries[_index]);
  }

  void insertAtIndexInCountries(int _index, CountryStruct _value) {
    _Countries.insert(_index, _value);
  }

  final _teamsListCacheManager = StreamRequestManager<List<TeamsRecord>>();
  Stream<List<TeamsRecord>> teamsListCache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<TeamsRecord>> Function() requestFn,
  }) =>
      _teamsListCacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearTeamsListCacheCache() => _teamsListCacheManager.clear();
  void clearTeamsListCacheCacheKey(String? uniqueKey) =>
      _teamsListCacheManager.clearRequest(uniqueKey);

  final _countriesListCacheManager =
      StreamRequestManager<List<CountriesRecord>>();
  Stream<List<CountriesRecord>> countriesListCache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<CountriesRecord>> Function() requestFn,
  }) =>
      _countriesListCacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCountriesListCacheCache() => _countriesListCacheManager.clear();
  void clearCountriesListCacheCacheKey(String? uniqueKey) =>
      _countriesListCacheManager.clearRequest(uniqueKey);
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
