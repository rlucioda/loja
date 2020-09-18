import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:loja/app/app_widget.dart';

import 'modules/compra/compra_module.dart';
import 'modules/loja/loja_module.dart';
import 'modules/produto/produto_module.dart';

class AppModule extends MainModule {
  // Provide a list of dependencies to inject into your project
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: LojaModule()),
        ModularRouter("/produto", module: ProdutoModule()),
        ModularRouter("/compra", module: CompraModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
