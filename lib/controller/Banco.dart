import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as path;

class Banco {

  Banco();

  recuperarBancoDados() async{

    final caminhoBancoDados = getDatabasesPath();
    final localBancoDados = path.join("cine_app.db");

    var db = await openDatabase(
        localBancoDados,
        version: 1,
        onCreate: (db, dbVersaoRecente){
          String sql = "CREATE TABLE usuarios (id INTEGER PRIMARY KEY AUTOINCREMENT, nome VARCHAR, usuario VARCHAR, senha VARCHAR) ";
          db.execute(sql);
        }
    );

    return db;
  }

}