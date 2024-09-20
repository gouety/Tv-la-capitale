import '../database.dart';

class DirectTable extends SupabaseTable<DirectRow> {
  @override
  String get tableName => 'direct';

  @override
  DirectRow createRow(Map<String, dynamic> data) => DirectRow(data);
}

class DirectRow extends SupabaseDataRow {
  DirectRow(super.data);

  @override
  SupabaseTable get table => DirectTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get lienDirect => getField<String>('lienDirect');
  set lienDirect(String? value) => setField<String>('lienDirect', value);
}
