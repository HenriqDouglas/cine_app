import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tickets extends StatefulWidget {
  @override
  _TicketsState createState() => _TicketsState();
}

class _TicketsState extends State<Tickets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(39, 37, 38, 1),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Stack(
          children: [
            Positioned(
                left: 50,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('imagens/main/traco-fundo.png'),
                          fit: BoxFit.fill
                      ),
                    )
                )
            ),
            Positioned(
              top: 32,
              left: 75,
              child: GestureDetector(
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 35,
                ),
                onTap: ()=>{Navigator.pop(context)},
              ),
            ),
            Positioned(
              top: 35,
              left: 150,
              child: GestureDetector(
                child: Text(
                  "TICKETS",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold,
                        fontFamily: "WorkSans"
                    )
                ),
                onTap: ()=>{Navigator.pop(context)},
              ),
            ),
            Positioned(
              top: 150,
              width: MediaQuery.of(context).size.width,
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 75,
                          child: Image.asset("imagens/tickets/data-selecionada.png"),
                        ),
                        Container(
                          width: 75,
                          child: Image.asset("imagens/tickets/data-nao-selecionada.png"),
                        ),
                        Container(
                          width: 75,
                          child: Image.asset("imagens/tickets/data-nao-selecionada.png"),
                        ),
                        Container(
                          width: 75,
                          child: Image.asset("imagens/tickets/data-nao-selecionada.png"),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 50)),
                    Text(
                        "NOME DO FILME",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            letterSpacing: 1,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.bold,
                            fontFamily: "BebasNeue"
                        )
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 25),
                      width: 300,
                      child: Image.asset("imagens/tickets/qr-code.png"),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                "HORA",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    letterSpacing: -1,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "WorkSans"
                                )
                            ),
                            Text(
                                "00:00",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    letterSpacing: 2,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "BebasNeue"
                                )
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                "QUANT",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    letterSpacing: -1,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "WorkSans"
                                )
                            ),
                            Text(
                                "00",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    letterSpacing: 2,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "BebasNeue"
                                )
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                "PIPOCA",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    letterSpacing: -1,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "WorkSans"
                                )
                            ),
                            Text(
                                "00",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    letterSpacing: 2,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "BebasNeue"
                                )
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                "BEBIDA",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    letterSpacing: -1,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "WorkSans"
                                )
                            ),
                            Text(
                                "00",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    letterSpacing: 2,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "BebasNeue"
                                )
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ),

          ],
        ),
      ),
    );
  }
}
