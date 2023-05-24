import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecetasRecord extends FirestoreRecord {
  RecetasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "Imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "Titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "Ingredientes" field.
  String? _ingredientes;
  String get ingredientes => _ingredientes ?? '';
  bool hasIngredientes() => _ingredientes != null;

  // "Pasos" field.
  String? _pasos;
  String get pasos => _pasos ?? '';
  bool hasPasos() => _pasos != null;

  // "IconUser" field.
  String? _iconUser;
  String get iconUser => _iconUser ?? '';
  bool hasIconUser() => _iconUser != null;

  // "Categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  // "F_creado" field.
  DateTime? _fCreado;
  DateTime? get fCreado => _fCreado;
  bool hasFCreado() => _fCreado != null;

  // "Usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "Fav" field.
  List<DocumentReference>? _fav;
  List<DocumentReference> get fav => _fav ?? const [];
  bool hasFav() => _fav != null;

  void _initializeFields() {
    _descripcion = snapshotData['Descripcion'] as String?;
    _imagen = snapshotData['Imagen'] as String?;
    _titulo = snapshotData['Titulo'] as String?;
    _ingredientes = snapshotData['Ingredientes'] as String?;
    _pasos = snapshotData['Pasos'] as String?;
    _iconUser = snapshotData['IconUser'] as String?;
    _categoria = snapshotData['Categoria'] as String?;
    _fCreado = snapshotData['F_creado'] as DateTime?;
    _usuario = snapshotData['Usuario'] as DocumentReference?;
    _fav = getDataList(snapshotData['Fav']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Recetas');

  static Stream<RecetasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecetasRecord.fromSnapshot(s));

  static Future<RecetasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecetasRecord.fromSnapshot(s));

  static RecetasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecetasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecetasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecetasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecetasRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createRecetasRecordData({
  String? descripcion,
  String? imagen,
  String? titulo,
  String? ingredientes,
  String? pasos,
  String? iconUser,
  String? categoria,
  DateTime? fCreado,
  DocumentReference? usuario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Descripcion': descripcion,
      'Imagen': imagen,
      'Titulo': titulo,
      'Ingredientes': ingredientes,
      'Pasos': pasos,
      'IconUser': iconUser,
      'Categoria': categoria,
      'F_creado': fCreado,
      'Usuario': usuario,
    }.withoutNulls,
  );

  return firestoreData;
}
