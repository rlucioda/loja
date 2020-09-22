import 'package:loja/app/modules/categoria/pages/formCategoria/form_categoria_controller.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'form_categoria_page.dart';

class FormCategoriaModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => FormCategoriaController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => FormCategoriaPage()),
      ];

  static Inject get to => Inject<FormCategoriaModule>.of();
}
