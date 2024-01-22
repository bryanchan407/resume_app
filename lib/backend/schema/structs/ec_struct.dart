// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EcStruct extends FFFirebaseStruct {
  EcStruct({
    String? title,
    String? subtitle,
    bool? group,
    String? photoUrl,
    String? description,
    List<String>? gallery,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _subtitle = subtitle,
        _group = group,
        _photoUrl = photoUrl,
        _description = description,
        _gallery = gallery,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  // "subtitle" field.
  String? _subtitle;
  String get subtitle => _subtitle ?? '';
  set subtitle(String? val) => _subtitle = val;
  bool hasSubtitle() => _subtitle != null;

  // "group" field.
  bool? _group;
  bool get group => _group ?? false;
  set group(bool? val) => _group = val;
  bool hasGroup() => _group != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? 'https://www.ledr.com/colours/white.jpg';
  set photoUrl(String? val) => _photoUrl = val;
  bool hasPhotoUrl() => _photoUrl != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "gallery" field.
  List<String>? _gallery;
  List<String> get gallery => _gallery ?? const [];
  set gallery(List<String>? val) => _gallery = val;
  void updateGallery(Function(List<String>) updateFn) =>
      updateFn(_gallery ??= []);
  bool hasGallery() => _gallery != null;

  static EcStruct fromMap(Map<String, dynamic> data) => EcStruct(
        title: data['title'] as String?,
        subtitle: data['subtitle'] as String?,
        group: data['group'] as bool?,
        photoUrl: data['photo_url'] as String?,
        description: data['description'] as String?,
        gallery: getDataList(data['gallery']),
      );

  static EcStruct? maybeFromMap(dynamic data) =>
      data is Map ? EcStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'subtitle': _subtitle,
        'group': _group,
        'photo_url': _photoUrl,
        'description': _description,
        'gallery': _gallery,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'subtitle': serializeParam(
          _subtitle,
          ParamType.String,
        ),
        'group': serializeParam(
          _group,
          ParamType.bool,
        ),
        'photo_url': serializeParam(
          _photoUrl,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'gallery': serializeParam(
          _gallery,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static EcStruct fromSerializableMap(Map<String, dynamic> data) => EcStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        subtitle: deserializeParam(
          data['subtitle'],
          ParamType.String,
          false,
        ),
        group: deserializeParam(
          data['group'],
          ParamType.bool,
          false,
        ),
        photoUrl: deserializeParam(
          data['photo_url'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        gallery: deserializeParam<String>(
          data['gallery'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'EcStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is EcStruct &&
        title == other.title &&
        subtitle == other.subtitle &&
        group == other.group &&
        photoUrl == other.photoUrl &&
        description == other.description &&
        listEquality.equals(gallery, other.gallery);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([title, subtitle, group, photoUrl, description, gallery]);
}

EcStruct createEcStruct({
  String? title,
  String? subtitle,
  bool? group,
  String? photoUrl,
  String? description,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EcStruct(
      title: title,
      subtitle: subtitle,
      group: group,
      photoUrl: photoUrl,
      description: description,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EcStruct? updateEcStruct(
  EcStruct? ec, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    ec
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEcStructData(
  Map<String, dynamic> firestoreData,
  EcStruct? ec,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (ec == null) {
    return;
  }
  if (ec.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && ec.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final ecData = getEcFirestoreData(ec, forFieldValue);
  final nestedData = ecData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = ec.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEcFirestoreData(
  EcStruct? ec, [
  bool forFieldValue = false,
]) {
  if (ec == null) {
    return {};
  }
  final firestoreData = mapToFirestore(ec.toMap());

  // Add any Firestore field values
  ec.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEcListFirestoreData(
  List<EcStruct>? ecs,
) =>
    ecs?.map((e) => getEcFirestoreData(e, true)).toList() ?? [];
