import '../database.dart';

class OneSignalTable extends SupabaseTable<OneSignalRow> {
  @override
  String get tableName => 'OneSignal';

  @override
  OneSignalRow createRow(Map<String, dynamic> data) => OneSignalRow(data);
}

class OneSignalRow extends SupabaseDataRow {
  OneSignalRow(super.data);

  @override
  SupabaseTable get table => OneSignalTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get utilsateurKey => getField<String>('Utilsateur Key');
  set utilsateurKey(String? value) => setField<String>('Utilsateur Key', value);

  String? get aPiKey => getField<String>('APi Key');
  set aPiKey(String? value) => setField<String>('APi Key', value);

  String? get key => getField<String>('Key');
  set key(String? value) => setField<String>('Key', value);
}
