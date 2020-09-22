import 'package:loja/app/shared/db/app_database.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'produto_dao.g.dart';

@UseDao(tables: [Produtos])
class ProdutoDao extends DatabaseAccessor<AppDatabase> with _$ProdutoDaoMixin {
  ProdutoDao(AppDatabase db) : super(db);

  Stream<List<Produto>> getAllProdutos() {
    return (select(produtos)
          ..orderBy([(t) => OrderingTerm(expression: t.nome)]))
        .watch();
  }

  Future insertProduto(Produto produto) =>
      into(produtos).insert(produto, mode: InsertMode.insertOrReplace);

  Future updateProduto(Produto produto) => update(produtos).replace(produto);
  Future deleteProduto(Produto produto) => delete(produtos).delete(produto);
  Future clearProduto() => delete(produtos).go();
}

@UseDao(tables: [Users])
class UserDao extends DatabaseAccessor<AppDatabase> with _$UserDaoMixin {
  UserDao(AppDatabase db) : super(db);

  Stream<List<User>> watchAllTasks() {
    return (select(users)..orderBy([(t) => OrderingTerm(expression: t.name)]))
        .watch();
  }

  Future insertUser(User user) =>
      into(users).insert(user, mode: InsertMode.insertOrReplace);
  Future updateUser(User user) => update(users).replace(user);
  Future deleteUSer(User user) => delete(users).delete(user);
  Future clearUser() => delete(users).go();
}
