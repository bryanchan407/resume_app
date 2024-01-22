import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
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

  List<EcStruct> _athletics = [];
  List<EcStruct> get athletics => _athletics;
  set athletics(List<EcStruct> _value) {
    _athletics = _value;
  }

  void addToAthletics(EcStruct _value) {
    _athletics.add(_value);
  }

  void removeFromAthletics(EcStruct _value) {
    _athletics.remove(_value);
  }

  void removeAtIndexFromAthletics(int _index) {
    _athletics.removeAt(_index);
  }

  void updateAthleticsAtIndex(
    int _index,
    EcStruct Function(EcStruct) updateFn,
  ) {
    _athletics[_index] = updateFn(_athletics[_index]);
  }

  void insertAtIndexInAthletics(int _index, EcStruct _value) {
    _athletics.insert(_index, _value);
  }

  List<EcStruct> _awards = [];
  List<EcStruct> get awards => _awards;
  set awards(List<EcStruct> _value) {
    _awards = _value;
  }

  void addToAwards(EcStruct _value) {
    _awards.add(_value);
  }

  void removeFromAwards(EcStruct _value) {
    _awards.remove(_value);
  }

  void removeAtIndexFromAwards(int _index) {
    _awards.removeAt(_index);
  }

  void updateAwardsAtIndex(
    int _index,
    EcStruct Function(EcStruct) updateFn,
  ) {
    _awards[_index] = updateFn(_awards[_index]);
  }

  void insertAtIndexInAwards(int _index, EcStruct _value) {
    _awards.insert(_index, _value);
  }

  List<EcStruct> _classes = [];
  List<EcStruct> get classes => _classes;
  set classes(List<EcStruct> _value) {
    _classes = _value;
  }

  void addToClasses(EcStruct _value) {
    _classes.add(_value);
  }

  void removeFromClasses(EcStruct _value) {
    _classes.remove(_value);
  }

  void removeAtIndexFromClasses(int _index) {
    _classes.removeAt(_index);
  }

  void updateClassesAtIndex(
    int _index,
    EcStruct Function(EcStruct) updateFn,
  ) {
    _classes[_index] = updateFn(_classes[_index]);
  }

  void insertAtIndexInClasses(int _index, EcStruct _value) {
    _classes.insert(_index, _value);
  }

  List<EcStruct> _clubs = [];
  List<EcStruct> get clubs => _clubs;
  set clubs(List<EcStruct> _value) {
    _clubs = _value;
  }

  void addToClubs(EcStruct _value) {
    _clubs.add(_value);
  }

  void removeFromClubs(EcStruct _value) {
    _clubs.remove(_value);
  }

  void removeAtIndexFromClubs(int _index) {
    _clubs.removeAt(_index);
  }

  void updateClubsAtIndex(
    int _index,
    EcStruct Function(EcStruct) updateFn,
  ) {
    _clubs[_index] = updateFn(_clubs[_index]);
  }

  void insertAtIndexInClubs(int _index, EcStruct _value) {
    _clubs.insert(_index, _value);
  }

  List<EcStruct> _performingArts = [];
  List<EcStruct> get performingArts => _performingArts;
  set performingArts(List<EcStruct> _value) {
    _performingArts = _value;
  }

  void addToPerformingArts(EcStruct _value) {
    _performingArts.add(_value);
  }

  void removeFromPerformingArts(EcStruct _value) {
    _performingArts.remove(_value);
  }

  void removeAtIndexFromPerformingArts(int _index) {
    _performingArts.removeAt(_index);
  }

  void updatePerformingArtsAtIndex(
    int _index,
    EcStruct Function(EcStruct) updateFn,
  ) {
    _performingArts[_index] = updateFn(_performingArts[_index]);
  }

  void insertAtIndexInPerformingArts(int _index, EcStruct _value) {
    _performingArts.insert(_index, _value);
  }

  List<EcStruct> _communityService = [];
  List<EcStruct> get communityService => _communityService;
  set communityService(List<EcStruct> _value) {
    _communityService = _value;
  }

  void addToCommunityService(EcStruct _value) {
    _communityService.add(_value);
  }

  void removeFromCommunityService(EcStruct _value) {
    _communityService.remove(_value);
  }

  void removeAtIndexFromCommunityService(int _index) {
    _communityService.removeAt(_index);
  }

  void updateCommunityServiceAtIndex(
    int _index,
    EcStruct Function(EcStruct) updateFn,
  ) {
    _communityService[_index] = updateFn(_communityService[_index]);
  }

  void insertAtIndexInCommunityService(int _index, EcStruct _value) {
    _communityService.insert(_index, _value);
  }

  bool _searchActive = false;
  bool get searchActive => _searchActive;
  set searchActive(bool _value) {
    _searchActive = _value;
  }

  final _userDocQueryManager = FutureRequestManager<UsersRecord>();
  Future<UsersRecord> userDocQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<UsersRecord> Function() requestFn,
  }) =>
      _userDocQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserDocQueryCache() => _userDocQueryManager.clear();
  void clearUserDocQueryCacheKey(String? uniqueKey) =>
      _userDocQueryManager.clearRequest(uniqueKey);
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
