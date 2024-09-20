import '../database.dart';

class CommentaireTable extends SupabaseTable<CommentaireRow> {
  @override
  String get tableName => 'commentaire';

  @override
  CommentaireRow createRow(Map<String, dynamic> data) => CommentaireRow(data);
}

class CommentaireRow extends SupabaseDataRow {
  CommentaireRow(super.data);

  @override
  SupabaseTable get table => CommentaireTable();

  int get commentId => getField<int>('comment_id')!;
  set commentId(int value) => setField<int>('comment_id', value);

  DateTime? get creeA => getField<DateTime>('cree_a');
  set creeA(DateTime? value) => setField<DateTime>('cree_a', value);

  int? get articleId => getField<int>('article_id');
  set articleId(int? value) => setField<int>('article_id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  String? get contenu => getField<String>('contenu');
  set contenu(String? value) => setField<String>('contenu', value);

  List<String> get status => getListField<String>('status');
  set status(List<String>? value) => setListField<String>('status', value);
}
