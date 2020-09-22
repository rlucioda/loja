import 'package:loja/app/shared/db/dao/produto_dao.dart';
import 'package:moor_flutter/moor_flutter.dart';

import 'package:loja/app/shared/db/dao/categoria_dao.dart';

part 'app_database.g.dart';

class Categorias extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nome => text()();
}

class Produtos extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nome => text()();
  RealColumn get preco => real()();
  DateTimeColumn get validade => dateTime().nullable()();
}

class Users extends Table {
  TextColumn get email => text().withLength(min: 1, max: 50)();
  TextColumn get name => text().withLength(min: 1, max: 50)();
  TextColumn get phone => text().nullable().withLength(min: 1, max: 15)();
  TextColumn get profilePicture => text().withLength(min: 1, max: 150)();
  TextColumn get detailPicture => text().withLength(min: 1, max: 150)();
  @override
  Set<Column> get primaryKey => {email};
}

@UseMoor(
    tables: [Categorias, Produtos, Users], daos: [ProdutoDao, CategoriaDao])
class AppDatabase extends _$AppDatabase {
  static final AppDatabase instance = AppDatabase._internal();

  ProdutoDao produtoDao;
  CategoriaDao categoriaDao;

  AppDatabase._internal()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: "db.sqlite", logStatements: true)) {
    produtoDao = ProdutoDao(this);
    categoriaDao = CategoriaDao(this);
  }

  @override
  int get schemaVersion => 1;
}
