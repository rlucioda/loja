import 'produto_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'produto_page.dart';

class ProdutoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ProdutoController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter("/:nomeLoja",
            child: (_, args) => ProdutoPage(
                  nomeDaLoja: args.params['nomeLoja'],
                )),
      ];

  static Inject get to => Inject<ProdutoModule>.of();
}
