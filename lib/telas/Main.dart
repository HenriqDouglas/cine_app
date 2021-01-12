import 'package:cine_app/Telas/Cadastro.dart';
import 'package:cine_app/Telas/Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {

  _abrirLogin(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Login())
    );
  }

  _abrirCadastro(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Cadastro())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromRGBO(242, 203, 4, 1)
      ),
      child: Stack(
        children: [
          Positioned(
            left: 120,
            top: 225,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('imagens/main/traco-fundo.png'),
                  fit: BoxFit.fill
                ),
              )
            ),
          ),
          Positioned(
            top: 270,
            left: 80,
              child: Text(
                "CINE",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 70,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 35,
                    fontFamily: "BebasNeue",
                ),
              ),
          ),
          Positioned(
            top: 460,
            child: GestureDetector(
              onTap: _abrirLogin,
              child: Container(
                constraints: BoxConstraints.tightForFinite(
                  width: MediaQuery.of(context).size.width,
                ),
                padding: EdgeInsets.only(top: 13, bottom: 13),
                decoration: BoxDecoration(
                    color: Colors.white
                ),
                child: Text(
                  "LOGIN",
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
            ),
          ),
          Positioned(
            top: 540,
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
                  "CADASTRO",
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
              onTap: _abrirCadastro,
            ),
          ),
          Positioned(
            top: 630,
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
    );
  }
}
