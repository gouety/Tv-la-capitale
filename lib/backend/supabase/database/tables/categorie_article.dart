import '../database.dart';

class CategorieArticleTable extends SupabaseTable<CategorieArticleRow> {
  @override
  String get tableName => 'categorie_article';

  @override
  CategorieArticleRow createRow(Map<String, dynamic> data) =>
      CategorieArticleRow(data);
}

class CategorieArticleRow extends SupabaseDataRow {
  CategorieArticleRow(super.data);

  @override
  SupabaseTable get table => CategorieArticleTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nom => getField<String>('nom');
  set nom(String? value) => setField<String>('nom', value);
}
