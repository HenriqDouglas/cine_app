import 'package:cine_app/Telas/Tickets.dart';
import 'package:flutter/material.dart';

class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {

  double _espacamentoBotoes = 7.0;

  _abrirTickets(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>Tickets())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(39, 37, 38, 1),
      body: Container(
        padding: EdgeInsets.only(top: 70),
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 30,
                child: GestureDetector(
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 35,
                  ),
                  onTap: ()=>{Navigator.pop(context)},
                ),
            ),
            Positioned.fill(
              top: 40,
                child: Center(
                  child: Column(
                    children: [
                      GestureDetector(
                        child: Container(
                          width: 190.0,
                          height: 190.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('imagens/perfil/foto-perfil.png')
                              )
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 16)),
                      Text(
                          "NOME USUÁRIO",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.bold,
                              fontFamily: "WorkSans"
                          )
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 48),
                        height: 3,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 25),
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.white),
                          ),
                          child: Text(
                              "PERFIL",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "WorkSans"
                              )
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(top: _espacamentoBotoes),
                          alignment: Alignment.center,
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.white),
                          ),
                          child: Text(
                              "TICKETS",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "WorkSans"
                              )
                          ),
                        ),
                        onTap: _abrirTickets,
                      ),
                      GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(top: _espacamentoBotoes),
                          alignment: Alignment.center,
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.white),
                          ),
                          child: Text(
                              "DUVIDAS FREQUENTES",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "WorkSans"
                              )
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(top: _espacamentoBotoes),
                          alignment: Alignment.center,
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.white),
                          ),
                          child: Text(
                              "ATENDIMENTO",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "WorkSans"
                              )
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(top: _espacamentoBotoes),
                          alignment: Alignment.center,
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.white),
                          ),
                          child: Text(
                              "SOBRE O APP",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "WorkSans"
                              )
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(top: _espacamentoBotoes),
                          alignment: Alignment.center,
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.white),
                          ),
                          child: Text(
                              "LOGOUT",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "WorkSans"
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
