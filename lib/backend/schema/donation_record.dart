import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DonationRecord extends FirestoreRecord {
  DonationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "people" field.
  int? _people;
  int get people => _people ?? 0;
  bool hasPeople() => _people != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "Preference" field.
  String? _preference;
  String get preference => _preference ?? '';
  bool hasPreference() => _preference != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "matched" field.
  bool? _matched;
  bool get matched => _matched ?? false;
  bool hasMatched() => _matched != null;

  // "verified" field.
  bool? _verified;
  bool get verified => _verified ?? false;
  bool hasVerified() => _verified != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "dateNeeded" field.
  String? _dateNeeded;
  String get dateNeeded => _dateNeeded ?? '';
  bool hasDateNeeded() => _dateNeeded != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "donerUid" field.
  String? _donerUid;
  String get donerUid => _donerUid ?? '';
  bool hasDonerUid() => _donerUid != null;

  // "recipientUid" field.
  String? _recipientUid;
  String get recipientUid => _recipientUid ?? '';
  bool hasRecipientUid() => _recipientUid != null;

  // "visible" field.
  bool? _visible;
  bool get visible => _visible ?? false;
  bool hasVisible() => _visible != null;

  // "donerEmail" field.
  String? _donerEmail;
  String get donerEmail => _donerEmail ?? '';
  bool hasDonerEmail() => _donerEmail != null;

  // "dateNeedBack" field.
  DateTime? _dateNeedBack;
  DateTime? get dateNeedBack => _dateNeedBack;
  bool hasDateNeedBack() => _dateNeedBack != null;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _people = castToType<int>(snapshotData['people']);
    _address = snapshotData['address'] as String?;
    _preference = snapshotData['Preference'] as String?;
    _status = snapshotData['status'] as String?;
    _matched = snapshotData['matched'] as bool?;
    _verified = snapshotData['verified'] as bool?;
    _phone = snapshotData['phone'] as String?;
    _dateNeeded = snapshotData['dateNeeded'] as String?;
    _name = snapshotData['name'] as String?;
    _donerUid = snapshotData['donerUid'] as String?;
    _recipientUid = snapshotData['recipientUid'] as String?;
    _visible = snapshotData['visible'] as bool?;
    _donerEmail = snapshotData['donerEmail'] as String?;
    _dateNeedBack = snapshotData['dateNeedBack'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('donation');

  static Stream<DonationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DonationRecord.fromSnapshot(s));

  static Future<DonationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DonationRecord.fromSnapshot(s));

  static DonationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DonationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DonationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DonationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DonationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DonationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDonationRecordData({
  DateTime? date,
  int? people,
  String? address,
  String? preference,
  String? status,
  bool? matched,
  bool? verified,
  String? phone,
  String? dateNeeded,
  String? name,
  String? donerUid,
  String? recipientUid,
  bool? visible,
  String? donerEmail,
  DateTime? dateNeedBack,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'people': people,
      'address': address,
      'Preference': preference,
      'status': status,
      'matched': matched,
      'verified': verified,
      'phone': phone,
      'dateNeeded': dateNeeded,
      'name': name,
      'donerUid': donerUid,
      'recipientUid': recipientUid,
      'visible': visible,
      'donerEmail': donerEmail,
      'dateNeedBack': dateNeedBack,
    }.withoutNulls,
  );

  return firestoreData;
}

class DonationRecordDocumentEquality implements Equality<DonationRecord> {
  const DonationRecordDocumentEquality();

  @override
  bool equals(DonationRecord? e1, DonationRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.people == e2?.people &&
        e1?.address == e2?.address &&
        e1?.preference == e2?.preference &&
        e1?.status == e2?.status &&
        e1?.matched == e2?.matched &&
        e1?.verified == e2?.verified &&
        e1?.phone == e2?.phone &&
        e1?.dateNeeded == e2?.dateNeeded &&
        e1?.name == e2?.name &&
        e1?.donerUid == e2?.donerUid &&
        e1?.recipientUid == e2?.recipientUid &&
        e1?.visible == e2?.visible &&
        e1?.donerEmail == e2?.donerEmail &&
        e1?.dateNeedBack == e2?.dateNeedBack;
  }

  @override
  int hash(DonationRecord? e) => const ListEquality().hash([
        e?.date,
        e?.people,
        e?.address,
        e?.preference,
        e?.status,
        e?.matched,
        e?.verified,
        e?.phone,
        e?.dateNeeded,
        e?.name,
        e?.donerUid,
        e?.recipientUid,
        e?.visible,
        e?.donerEmail,
        e?.dateNeedBack
      ]);

  @override
  bool isValidKey(Object? o) => o is DonationRecord;
}
