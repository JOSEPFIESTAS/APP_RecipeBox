import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ForumRecord extends FirestoreRecord {
  ForumRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "Titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "Imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "Categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  // "Comentarios" field.
  int? _comentarios;
  int get comentarios => _comentarios ?? 0;
  bool hasComentarios() => _comentarios != null;

  // "IconImage" field.
  String? _iconImage;
  String get iconImage => _iconImage ?? '';
  bool hasIconImage() => _iconImage != null;

  // "F_creado" field.
  DateTime? _fCreado;
  DateTime? get fCreado => _fCreado;
  bool hasFCreado() => _fCreado != null;

  // "Usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  void _initializeFields() {
    _descripcion = snapshotData['Descripcion'] as String?;
    _titulo = snapshotData['Titulo'] as String?;
    _imagen = snapshotData['Imagen'] as String?;
    _categoria = snapshotData['Categoria'] as String?;
    _comentarios = snapshotData['Comentarios'] as int?;
    _iconImage = snapshotData['IconImage'] as String?;
    _fCreado = snapshotData['F_creado'] as DateTime?;
    _usuario = snapshotData['Usuario'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Forum');

  static Stream<ForumRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ForumRecord.fromSnapshot(s));

  static Future<ForumRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ForumRecord.fromSnapshot(s));

  static ForumRecord fromSnapshot(DocumentSnapshot snapshot) => ForumRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ForumRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ForumRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ForumRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createForumRecordData({
  String? descripcion,
  String? titulo,
  String? imagen,
  String? categoria,
  int? comentarios,
  String? iconImage,
  DateTime? fCreado,
  DocumentReference? usuario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Descripcion': descripcion,
      'Titulo': titulo,
      'Imagen': imagen,
      'Categoria': categoria,
      'Comentarios': comentarios,
      'IconImage': iconImage,
      'F_creado': fCreado,
      'Usuario': usuario,
    }.withoutNulls,
  );

  return firestoreData;
}
