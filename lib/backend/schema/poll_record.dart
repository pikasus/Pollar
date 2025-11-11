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

  // "option3" field.
  String? _option3;
  String get option3 => _option3 ?? '';
  bool hasOption3() => _option3 != null;

  // "option4" field.
  String? _option4;
  String get option4 => _option4 ?? '';
  bool hasOption4() => _option4 != null;

  // "option5" field.
  String? _option5;
  String get option5 => _option5 ?? '';
  bool hasOption5() => _option5 != null;

  // "optionList3" field.
  List<DocumentReference>? _optionList3;
  List<DocumentReference> get optionList3 => _optionList3 ?? const [];
  bool hasOptionList3() => _optionList3 != null;

  // "optionList4" field.
  List<DocumentReference>? _optionList4;
  List<DocumentReference> get optionList4 => _optionList4 ?? const [];
  bool hasOptionList4() => _optionList4 != null;

  // "optionList5" field.
  List<DocumentReference>? _optionList5;
  List<DocumentReference> get optionList5 => _optionList5 ?? const [];
  bool hasOptionList5() => _optionList5 != null;

  // "chosenOption" field.
  String? _chosenOption;
  String get chosenOption => _chosenOption ?? '';
  bool hasChosenOption() => _chosenOption != null;

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
    _option3 = snapshotData['option3'] as String?;
    _option4 = snapshotData['option4'] as String?;
    _option5 = snapshotData['option5'] as String?;
    _optionList3 = getDataList(snapshotData['optionList3']);
    _optionList4 = getDataList(snapshotData['optionList4']);
    _optionList5 = getDataList(snapshotData['optionList5']);
    _chosenOption = snapshotData['chosenOption'] as String?;
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
  String? option3,
  String? option4,
  String? option5,
  String? chosenOption,
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
      'option3': option3,
      'option4': option4,
      'option5': option5,
      'chosenOption': chosenOption,
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
        e1?.isDone == e2?.isDone &&
        e1?.option3 == e2?.option3 &&
        e1?.option4 == e2?.option4 &&
        e1?.option5 == e2?.option5 &&
        listEquality.equals(e1?.optionList3, e2?.optionList3) &&
        listEquality.equals(e1?.optionList4, e2?.optionList4) &&
        listEquality.equals(e1?.optionList5, e2?.optionList5) &&
        e1?.chosenOption == e2?.chosenOption;
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
        e?.isDone,
        e?.option3,
        e?.option4,
        e?.option5,
        e?.optionList3,
        e?.optionList4,
        e?.optionList5,
        e?.chosenOption
      ]);

  @override
  bool isValidKey(Object? o) => o is PollRecord;
}
