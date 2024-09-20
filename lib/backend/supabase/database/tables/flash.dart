import '../database.dart';

class FlashTable extends SupabaseTable<FlashRow> {
  @override
  String get tableName => 'flash';

  @override
  FlashRow createRow(Map<String, dynamic> data) => FlashRow(data);
}

class FlashRow extends SupabaseDataRow {
  FlashRow(super.data);

  @override
  SupabaseTable get table => FlashTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get titre => getField<String>('titre');
  set titre(String? value) => setField<String>('titre', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get localite => getField<String>('localite');
  set localite(String? value) => setField<String>('localite', value);

  String? get categories => getField<String>('categories');
  set categories(String? value) => setField<String>('categories', value);

  String? get lienImage => getField<String>('lienImage');
  set lienImage(String? value) => setField<String>('lienImage', value);

  String? get lienYoutbe => getField<String>('LienYoutbe');
  set lienYoutbe(String? value) => setField<String>('LienYoutbe', value);
}
