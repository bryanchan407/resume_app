import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "last_active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  bool hasLastActiveTime() => _lastActiveTime != null;

  // "school" field.
  String? _school;
  String get school => _school ?? '';
  bool hasSchool() => _school != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "awards" field.
  List<EcStruct>? _awards;
  List<EcStruct> get awards => _awards ?? const [];
  bool hasAwards() => _awards != null;

  // "athletics" field.
  List<EcStruct>? _athletics;
  List<EcStruct> get athletics => _athletics ?? const [];
  bool hasAthletics() => _athletics != null;

  // "performingArts" field.
  List<EcStruct>? _performingArts;
  List<EcStruct> get performingArts => _performingArts ?? const [];
  bool hasPerformingArts() => _performingArts != null;

  // "clubs" field.
  List<EcStruct>? _clubs;
  List<EcStruct> get clubs => _clubs ?? const [];
  bool hasClubs() => _clubs != null;

  // "communityService" field.
  List<EcStruct>? _communityService;
  List<EcStruct> get communityService => _communityService ?? const [];
  bool hasCommunityService() => _communityService != null;

  // "classes" field.
  List<EcStruct>? _classes;
  List<EcStruct> get classes => _classes ?? const [];
  bool hasClasses() => _classes != null;

  // "major" field.
  String? _major;
  String get major => _major ?? '';
  bool hasMajor() => _major != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "linkedinURL" field.
  String? _linkedinURL;
  String get linkedinURL => _linkedinURL ?? '';
  bool hasLinkedinURL() => _linkedinURL != null;

  // "shortDescription" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _lastActiveTime = snapshotData['last_active_time'] as DateTime?;
    _school = snapshotData['school'] as String?;
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _awards = getStructList(
      snapshotData['awards'],
      EcStruct.fromMap,
    );
    _athletics = getStructList(
      snapshotData['athletics'],
      EcStruct.fromMap,
    );
    _performingArts = getStructList(
      snapshotData['performingArts'],
      EcStruct.fromMap,
    );
    _clubs = getStructList(
      snapshotData['clubs'],
      EcStruct.fromMap,
    );
    _communityService = getStructList(
      snapshotData['communityService'],
      EcStruct.fromMap,
    );
    _classes = getStructList(
      snapshotData['classes'],
      EcStruct.fromMap,
    );
    _major = snapshotData['major'] as String?;
    _description = snapshotData['description'] as String?;
    _linkedinURL = snapshotData['linkedinURL'] as String?;
    _shortDescription = snapshotData['shortDescription'] as String?;
    _role = snapshotData['role'] as String?;
    _title = snapshotData['title'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? lastActiveTime,
  String? school,
  String? city,
  String? state,
  String? major,
  String? description,
  String? linkedinURL,
  String? shortDescription,
  String? role,
  String? title,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'last_active_time': lastActiveTime,
      'school': school,
      'city': city,
      'state': state,
      'major': major,
      'description': description,
      'linkedinURL': linkedinURL,
      'shortDescription': shortDescription,
      'role': role,
      'title': title,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.lastActiveTime == e2?.lastActiveTime &&
        e1?.school == e2?.school &&
        e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        listEquality.equals(e1?.awards, e2?.awards) &&
        listEquality.equals(e1?.athletics, e2?.athletics) &&
        listEquality.equals(e1?.performingArts, e2?.performingArts) &&
        listEquality.equals(e1?.clubs, e2?.clubs) &&
        listEquality.equals(e1?.communityService, e2?.communityService) &&
        listEquality.equals(e1?.classes, e2?.classes) &&
        e1?.major == e2?.major &&
        e1?.description == e2?.description &&
        e1?.linkedinURL == e2?.linkedinURL &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.role == e2?.role &&
        e1?.title == e2?.title;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.lastActiveTime,
        e?.school,
        e?.city,
        e?.state,
        e?.awards,
        e?.athletics,
        e?.performingArts,
        e?.clubs,
        e?.communityService,
        e?.classes,
        e?.major,
        e?.description,
        e?.linkedinURL,
        e?.shortDescription,
        e?.role,
        e?.title
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
