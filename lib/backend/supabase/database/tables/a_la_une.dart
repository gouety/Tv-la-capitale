import '../database.dart';

class ALaUneTable extends SupabaseTable<ALaUneRow> {
  @override
  String get tableName => 'A la Une';

  @override
  ALaUneRow createRow(Map<String, dynamic> data) => ALaUneRow(data);
}

class ALaUneRow extends SupabaseDataRow {
  ALaUneRow(super.data);

  @override
  SupabaseTable get table => ALaUneTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get tire => getField<String>('Tire');
  set tire(String? value) => setField<String>('Tire', value);

  String? get description => getField<String>('Description');
  set description(String? value) => setField<String>('Description', value);

  String? get lieu => getField<String>('Lieu');
  set lieu(String? value) => setField<String>('Lieu', value);

  String? get categorie => getField<String>('categorie');
  set categorie(String? value) => setField<String>('categorie', value);

  String? get lienMedia => getField<String>('Lien Media');
  set lienMedia(String? value) => setField<String>('Lien Media', value);

  String? get image => getField<String>('Image');
  set image(String? value) => setField<String>('Image', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get lienYoutube => getField<String>('lienYoutube');
  set lienYoutube(String? value) => setField<String>('lienYoutube', value);
}
