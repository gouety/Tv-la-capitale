import '../database.dart';

class NotificationTable extends SupabaseTable<NotificationRow> {
  @override
  String get tableName => 'notification';

  @override
  NotificationRow createRow(Map<String, dynamic> data) => NotificationRow(data);
}

class NotificationRow extends SupabaseDataRow {
  NotificationRow(super.data);

  @override
  SupabaseTable get table => NotificationTable();

  int get notificationId => getField<int>('notification_id')!;
  set notificationId(int value) => setField<int>('notification_id', value);

  DateTime get envoyeA => getField<DateTime>('envoye_a')!;
  set envoyeA(DateTime value) => setField<DateTime>('envoye_a', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  String? get titre => getField<String>('titre');
  set titre(String? value) => setField<String>('titre', value);

  String? get message => getField<String>('message');
  set message(String? value) => setField<String>('message', value);

  String? get lien => getField<String>('lien');
  set lien(String? value) => setField<String>('lien', value);

  List<String> get type => getListField<String>('type');
  set type(List<String>? value) => setListField<String>('type', value);

  bool? get esLu => getField<bool>('es_lu');
  set esLu(bool? value) => setField<bool>('es_lu', value);
}
