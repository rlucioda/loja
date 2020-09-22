import 'package:flutter_modular/flutter_modular.dart';
import 'package:loja/app/modules/categoria/pages/formCategoria/form_categoria_module.dart';

import 'categoria_controller.dart';
import 'categoria_page.dart';

class CategoriaModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CategoriaController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => CategoriaPage()),
        ModularRouter("/addCategoria", module: FormCategoriaModule()),
      ];

  static Inject get to => Inject<CategoriaModule>.of();
}
