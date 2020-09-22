import 'package:mobx/mobx.dart';

part 'form_categoria_controller.g.dart';

class FormCategoriaController = _FormCategoriaControllerBase
    with _$FormCategoriaController;

abstract class _FormCategoriaControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
