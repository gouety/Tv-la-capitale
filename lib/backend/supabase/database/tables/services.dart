import '../database.dart';

class ServicesTable extends SupabaseTable<ServicesRow> {
  @override
  String get tableName => 'services';

  @override
  ServicesRow createRow(Map<String, dynamic> data) => ServicesRow(data);
}

class ServicesRow extends SupabaseDataRow {
  ServicesRow(super.data);

  @override
  SupabaseTable get table => ServicesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get tire => getField<String>('Tire');
  set tire(String? value) => setField<String>('Tire', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);
}
