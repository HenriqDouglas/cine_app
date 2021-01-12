import 'package:cine_app/controller/Banco.dart';
import 'package:sqflite/sqflite.dart';

class Usuario{

  int _id;
  String _nome;
  String _usuario;
  String _senha;

  Usuario();

  String get senha => _senha;

  set senha(String value) {
    _senha = value;
  }

  String get usuario => _usuario;

  set usuario(String value) {
    _usuario = value;
  }

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  listarUsuarios() async {

    Database db = await Banco().recuperarBancoDados();

    String sql = "SELECT * FROM usuarios";
    List usuarios = await db.rawQuery(sql);

    for(var usuario in usuarios){
      print(
          "item id: " + usuario['id'].toString() +
              " nome: " + usuario['nome'] +
              " usuario: " + usuario['usuario'] +
              " senha: " + usuario['senha']
      );
    }

  }

}