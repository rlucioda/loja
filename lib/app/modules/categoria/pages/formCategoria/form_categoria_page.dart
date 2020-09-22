import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:loja/app/shared/db/app_database.dart';
import 'form_categoria_controller.dart';

class FormCategoriaPage extends StatefulWidget {
  final String title;
  const FormCategoriaPage({Key key, this.title = "FormCategoria"})
      : super(key: key);

  @override
  _FormCategoriaPageState createState() => _FormCategoriaPageState();
}

class _FormCategoriaPageState
    extends ModularState<FormCategoriaPage, FormCategoriaController> {
  //use 'controller' variable to access controller
  String categoriaName = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            onChanged: (text) {
              categoriaName = text;
            },
          ),
          RaisedButton(
            child: Text("Adicionar"),
            onPressed: () {
              AppDatabase.instance.categoriaDao
                  .addCategoria(Categoria(nome: categoriaName));
              print(categoriaName);
            },
          )
        ],
      ),
    );
  }
}
