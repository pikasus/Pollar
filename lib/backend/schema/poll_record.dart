import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PollRecord extends FirestoreRecord {
  PollRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "pollName" field.
  String? _pollName;
  String get pollName => _pollName ?? '';
  bool hasPollName() => _pollName != null;

  // "option1" field.
  String? _option1;
  String get option1 => _option1 ?? '';
  bool hasOption1() => _option1 != null;

  // "option2" field.
  String? _option2;
  String get option2 => _option2 ?? '';
  bool hasOption2() => _option2 != null;

  // "optionList1" field.
  List<DocumentReference>? _optionList1;
  List<DocumentReference> get optionList1 => _optionList1 ?? const [];
  bool hasOptionList1() => _optionList1 != null;

  // "optionList2" field.
  List<DocumentReference>? _optionList2;
  List<DocumentReference> get optionList2 => _optionList2 ?? const [];
  bool hasOptionList2() => _optionList2 != null;

  // "dateCreated" field.
  DateTime? _dateCreated;
  DateTime? get dateCreated => _dateCreated;
  bool hasDateCreated() => _dateCreated != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "chosen" field.
  List<DocumentReference>? _chosen;
  List<DocumentReference> get chosen => _chosen ?? const [];
  bool hasChosen() => _chosen != null;

  // "isDone" field.
  bool? _isDone;
  bool get isDone => _isDone ?? false;
  bool hasIsDone() => _isDone != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _pollName = snapshotData['pollName'] as String?;
    _option1 = snapshotData['option1'] as String?;
    _option2 = snapshotData['option2'] as String?;
    _optionList1 = getDataList(snapshotData['optionList1']);
    _optionList2 = getDataList(snapshotData['optionList2']);
    _dateCreated = snapshotData['dateCreated'] as DateTime?;
    _owner = snapshotData['owner'] as DocumentReference?;
    _description = snapshotData['description'] as String?;
    _chosen = getDataList(snapshotData['chosen']);
    _isDone = snapshotData['isDone'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('poll')
          : FirebaseFirestore.instance.collectionGroup('poll');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('poll').doc(id);

  static Stream<PollRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PollRecord.fromSnapshot(s));

  static Future<PollRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PollRecord.fromSnapshot(s));

  static PollRecord fromSnapshot(DocumentSnapshot snapshot) => PollRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PollRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PollRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PollRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PollRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPollRecordData({
  String? pollName,
  String? option1,
  String? option2,
  DateTime? dateCreated,
  DocumentReference? owner,
  String? description,
  bool? isDone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'pollName': pollName,
      'option1': option1,
      'option2': option2,
      'dateCreated': dateCreated,
      'owner': owner,
      'description': description,
      'isDone': isDone,
    }.withoutNulls,
  );

  return firestoreData;
}

class PollRecordDocumentEquality implements Equality<PollRecord> {
  const PollRecordDocumentEquality();

  @override
  bool equals(PollRecord? e1, PollRecord? e2) {
    const listEquality = ListEquality();
    return e1?.pollName == e2?.pollName &&
        e1?.option1 == e2?.option1 &&
        e1?.option2 == e2?.option2 &&
        listEquality.equals(e1?.optionList1, e2?.optionList1) &&
        listEquality.equals(e1?.optionList2, e2?.optionList2) &&
        e1?.dateCreated == e2?.dateCreated &&
        e1?.owner == e2?.owner &&
        e1?.description == e2?.description &&
        listEquality.equals(e1?.chosen, e2?.chosen) &&
        e1?.isDone == e2?.isDone;
  }

  @override
  int hash(PollRecord? e) => const ListEquality().hash([
        e?.pollName,
        e?.option1,
        e?.option2,
        e?.optionList1,
        e?.optionList2,
        e?.dateCreated,
        e?.owner,
        e?.description,
        e?.chosen,
        e?.isDone
      ]);

  @override
  bool isValidKey(Object? o) => o is PollRecord;
}
