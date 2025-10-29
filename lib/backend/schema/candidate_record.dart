import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CandidateRecord extends FirestoreRecord {
  CandidateRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "candidate_name" field.
  String? _candidateName;
  String get candidateName => _candidateName ?? '';
  bool hasCandidateName() => _candidateName != null;

  // "candidate_User" field.
  DocumentReference? _candidateUser;
  DocumentReference? get candidateUser => _candidateUser;
  bool hasCandidateUser() => _candidateUser != null;

  void _initializeFields() {
    _candidateName = snapshotData['candidate_name'] as String?;
    _candidateUser = snapshotData['candidate_User'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('candidate');

  static Stream<CandidateRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CandidateRecord.fromSnapshot(s));

  static Future<CandidateRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CandidateRecord.fromSnapshot(s));

  static CandidateRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CandidateRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CandidateRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CandidateRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CandidateRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CandidateRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCandidateRecordData({
  String? candidateName,
  DocumentReference? candidateUser,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'candidate_name': candidateName,
      'candidate_User': candidateUser,
    }.withoutNulls,
  );

  return firestoreData;
}

class CandidateRecordDocumentEquality implements Equality<CandidateRecord> {
  const CandidateRecordDocumentEquality();

  @override
  bool equals(CandidateRecord? e1, CandidateRecord? e2) {
    return e1?.candidateName == e2?.candidateName &&
        e1?.candidateUser == e2?.candidateUser;
  }

  @override
  int hash(CandidateRecord? e) =>
      const ListEquality().hash([e?.candidateName, e?.candidateUser]);

  @override
  bool isValidKey(Object? o) => o is CandidateRecord;
}
