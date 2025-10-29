import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PollRecord extends FirestoreRecord {
  PollRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "poll_name" field.
  String? _pollName;
  String get pollName => _pollName ?? '';
  bool hasPollName() => _pollName != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "is_done" field.
  bool? _isDone;
  bool get isDone => _isDone ?? false;
  bool hasIsDone() => _isDone != null;

  // "date_completed" field.
  DateTime? _dateCompleted;
  DateTime? get dateCompleted => _dateCompleted;
  bool hasDateCompleted() => _dateCompleted != null;

  void _initializeFields() {
    _pollName = snapshotData['poll_name'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _isDone = snapshotData['is_done'] as bool?;
    _dateCompleted = snapshotData['date_completed'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('poll');

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
  DocumentReference? user,
  bool? isDone,
  DateTime? dateCompleted,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'poll_name': pollName,
      'user': user,
      'is_done': isDone,
      'date_completed': dateCompleted,
    }.withoutNulls,
  );

  return firestoreData;
}

class PollRecordDocumentEquality implements Equality<PollRecord> {
  const PollRecordDocumentEquality();

  @override
  bool equals(PollRecord? e1, PollRecord? e2) {
    return e1?.pollName == e2?.pollName &&
        e1?.user == e2?.user &&
        e1?.isDone == e2?.isDone &&
        e1?.dateCompleted == e2?.dateCompleted;
  }

  @override
  int hash(PollRecord? e) => const ListEquality()
      .hash([e?.pollName, e?.user, e?.isDone, e?.dateCompleted]);

  @override
  bool isValidKey(Object? o) => o is PollRecord;
}
