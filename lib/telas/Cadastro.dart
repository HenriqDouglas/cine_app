import 'package:cine_app/controller/Banco.dart';
import 'package:cine_app/model/Usuario.dart';
import 'package:cine_app/telas/Login.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {

  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerUsuario = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  String _mensagemErro = "";

  _validarCampos(){

    String nome = _controllerNome.text;
    String usuario = _controllerUsuario.text;
    String senha = _controllerSenha.text;

    if(nome.isNotEmpty){

      if( usuario.isNotEmpty ){

        if ( senha.isNotEmpty ){

          Usuario usu = Usuario();
          usu.nome = nome;
          usu.usuario = usuario;
          usu.senha = senha;

          _validarUsuario ( usu );

        } else {
          setState(() {
            _mensagemErro = "Por favor preencha a senha";
          });
        }

      } else {
        setState(() {
          _mensagemErro = "Por favor preencha o usuário";
        });
      }

    } else {
      setState(() {
        _mensagemErro = "Por favor preencha o nome";
      });
    }

  }

  _validarUsuario(Usuario usu) async{

    String usuario = usu.usuario;

    Database db = await Banco().recuperarBancoDados();

    String sql = "SELECT * FROM usuarios WHERE usuario = '$usuario'";
    List usuarios = await db.rawQuery(sql);

    if(usuarios.isEmpty){

      _cadastrarUsuario(usu);

    } else {
      setState(() {
        _mensagemErro = "Usuário já existe";
      });
    }

  }

  _cadastrarUsuario(Usuario usu) async{

    Database db = await Banco().recuperarBancoDados();

    Map<String, dynamic> dadosUsuario = {
      "nome" : usu.nome.toString(),
      "usuario" : usu.usuario.toString(),
      "senha" : usu.senha.toString()
    };

    db.insert("usuarios", dadosUsuario);

    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (conext)=>Login()),
            (route) => false
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 203, 4, 1),
      body: Container(
        child: Stack(
          children: [
            Positioned(
              left: 110,
              top: 100,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 110,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('imagens/main/traco-fundo.png'),
                        fit: BoxFit.fill
                    ),
                  )
              ),
            ),
            Positioned(
              top: 123,
              left: 87,
              child: Text(
                "CINE",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 25,
                  fontFamily: "BebasNeue",
                ),
              ),
            ),
            Positioned(
              top: 300,
              left: MediaQuery.of(context).size.width/10,
              child: Container(
                width: 310,
                child: TextField(
                  controller: _controllerNome,
                  decoration: InputDecoration(
                    labelText: "NOME",
                    labelStyle: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.normal,
                        fontFamily: "WorkSans"
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 370,
              left: MediaQuery.of(context).size.width/10,
              child: Container(
                width: 310,
                child: TextField(
                  controller: _controllerUsuario,
                  decoration: InputDecoration(
                    labelText: "USUÁRIO",
                    labelStyle: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.normal,
                        fontFamily: "WorkSans"
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 440,
              left: MediaQuery.of(context).size.width/10,
              child: Container(
                width: 310,
                child: TextField(
                  controller: _controllerSenha,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "SENHA",
                    labelStyle: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.normal,
                        fontFamily: "WorkSans"
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 510,
              left: MediaQuery.of(context).size.width/10,
              child: Container(
                height: 50,
                width: 310,
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  _mensagemErro,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
                      fontFamily: "WorkSans"
                  ),
                ),
              ),
            ),
            Positioned(
              top: 570,
              child: GestureDetector(
                child: Container(
                  constraints: BoxConstraints.tightForFinite(
                    width: MediaQuery.of(context).size.width,
                  ),
                  padding: EdgeInsets.only(top: 13, bottom: 13),
                  decoration: BoxDecoration(
                      color: Colors.white
                  ),
                  child: Text(
                    "CADASTRAR",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "WorkSans",
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4,
                        fontSize: 25,
                        color: Colors.black,
                        decoration: TextDecoration.none
                    ),
                  ),
                ),
                onTap: _validarCampos,
              ),
            ),
            Positioned(
              top: 650,
              left: MediaQuery.of(context).size.width/3.7,
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "CADASTRAR COM",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "WorkSans",
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          color: Colors.black.withOpacity(0.5),
                          decoration: TextDecoration.none
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            width: 90,
                            height: 90,
                            child: Image.asset("imagens/main/botao-facebook.png"),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.all(6)
                        ),
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            width: 90,
                            height: 90,
                            child: Image.asset("imagens/main/botao-google-plus.png"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
