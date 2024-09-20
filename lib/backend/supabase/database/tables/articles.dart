import '../database.dart';

class ArticlesTable extends SupabaseTable<ArticlesRow> {
  @override
  String get tableName => 'articles';

  @override
  ArticlesRow createRow(Map<String, dynamic> data) => ArticlesRow(data);
}

class ArticlesRow extends SupabaseDataRow {
  ArticlesRow(super.data);

  @override
  SupabaseTable get table => ArticlesTable();

  int get articleId => getField<int>('article_id')!;
  set articleId(int value) => setField<int>('article_id', value);

  DateTime? get publierAt => getField<DateTime>('publier_at');
  set publierAt(DateTime? value) => setField<DateTime>('publier_at', value);

  String? get titre => getField<String>('titre');
  set titre(String? value) => setField<String>('titre', value);

  String? get slug => getField<String>('slug');
  set slug(String? value) => setField<String>('slug', value);

  String? get contenu => getField<String>('contenu');
  set contenu(String? value) => setField<String>('contenu', value);

  String? get resume => getField<String>('resume');
  set resume(String? value) => setField<String>('resume', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  String? get videoUrl => getField<String>('video_url');
  set videoUrl(String? value) => setField<String>('video_url', value);

  int? get categoryId => getField<int>('category_id');
  set categoryId(int? value) => setField<int>('category_id', value);

  int? get auteurUrl => getField<int>('auteur_url');
  set auteurUrl(int? value) => setField<int>('auteur_url', value);

  double? get nbreVue => getField<double>('nbre_vue');
  set nbreVue(double? value) => setField<double>('nbre_vue', value);

  String? get auteur => getField<String>('auteur');
  set auteur(String? value) => setField<String>('auteur', value);

  int? get live => getField<int>('live');
  set live(int? value) => setField<int>('live', value);
}
