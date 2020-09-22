import 'package:loja/app/shared/db/app_database.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'categoria_dao.g.dart';

@UseDao(tables: [Categorias])
class CategoriaDao extends DatabaseAccessor<AppDatabase>
    with _$CategoriaDaoMixin {
  CategoriaDao(AppDatabase db) : super(db);

  Stream<List<Categoria>> listAll() {
    return (select(categorias)).watch();
  }

  Future addCategoria(Categoria entity) {
    return into(categorias).insert(entity);
  }

  Future updateCategoria(Categoria entity) {
    return update(categorias).replace(entity);
  }

  Future removeCategoria(id) {
    return (delete(categorias)..where((cat) => cat.id.equals(id))).go();
  }
}
