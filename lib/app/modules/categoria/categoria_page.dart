import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:loja/app/shared/db/app_database.dart';
import 'categoria_controller.dart';

class CategoriaPage extends StatefulWidget {
  final String title;
  const CategoriaPage({Key key, this.title = "Categoria"}) : super(key: key);

  @override
  _CategoriaPageState createState() => _CategoriaPageState();
}

class _CategoriaPageState
    extends ModularState<CategoriaPage, CategoriaController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), actions: <Widget>[
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            return Modular.to.pushNamed(
              "/categoria/addCategoria",
            );
          },
        )
      ]),
      body: StreamBuilder<List<Categoria>>(
          stream: AppDatabase.instance.categoriaDao.listAll(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return Container();

            List<Categoria> categorias = snapshot.data;

            return ListView.builder(
              itemCount: categorias.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(title: Text(categorias[index].nome));
              },
            );
          }),
    );
  }
}
