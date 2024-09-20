import '../database.dart';

class CategoriesTable extends SupabaseTable<CategoriesRow> {
  @override
  String get tableName => 'categories';

  @override
  CategoriesRow createRow(Map<String, dynamic> data) => CategoriesRow(data);
}

class CategoriesRow extends SupabaseDataRow {
  CategoriesRow(super.data);

  @override
  SupabaseTable get table => CategoriesTable();

  int get categoryId => getField<int>('category_id')!;
  set categoryId(int value) => setField<int>('category_id', value);

  String? get nomCategory => getField<String>('nom_category');
  set nomCategory(String? value) => setField<String>('nom_category', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get iconeCategory => getField<String>('icone_category');
  set iconeCategory(String? value) => setField<String>('icone_category', value);

  String? get imageCategory => getField<String>('image_category');
  set imageCategory(String? value) => setField<String>('image_category', value);

  int? get rang => getField<int>('rang');
  set rang(int? value) => setField<int>('rang', value);

  String? get couleur => getField<String>('couleur');
  set couleur(String? value) => setField<String>('couleur', value);

  String? get lienPlaylist => getField<String>('lienPlaylist');
  set lienPlaylist(String? value) => setField<String>('lienPlaylist', value);
}
