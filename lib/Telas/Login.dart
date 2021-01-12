import 'package:cine_app/Telas/Home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  void _fazerLogin(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Home()),
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
              top: 370,
              left: MediaQuery.of(context).size.width/10,
              child: Container(
                width: 310,
                child: TextField(
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
                  onEditingComplete: _fazerLogin,
                ),
              ),
            ),
            Positioned(
              top: 460,
              left: MediaQuery.of(context).size.width/2.2,
              child: GestureDetector(
                child: Text(
                    "ESQUECI A SENHA",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
                      fontFamily: "WorkSans"
                  ),
                ),
              ),
            ),
            Positioned(
              top: 540,
              child: GestureDetector(
              onTap: _fazerLogin,
                child: Container(
                  constraints: BoxConstraints.tightForFinite(
                    width: MediaQuery.of(context).size.width,
                  ),
                  padding: EdgeInsets.only(top: 13, bottom: 13),
                  decoration: BoxDecoration(
                      color: Colors.white
                  ),
                  child: Text(
                    "ENTRAR",
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
              top: 630,
              left: MediaQuery.of(context).size.width/3.7,
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "CONECTAR COM",
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
