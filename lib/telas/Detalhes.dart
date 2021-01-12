import 'package:flutter/material.dart';

class Detalhes extends StatefulWidget {
  @override
  _DetalhesState createState() => _DetalhesState();
}

class _DetalhesState extends State<Detalhes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color.fromRGBO(39, 37, 38, 1),
        ),
        child: Column(
          children: [

            //TOPO
            Container(
              margin: EdgeInsets.only(top: 50),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromRGBO(39, 37, 38, 1),
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)
                ),
              ),
              padding: EdgeInsets.only(top: 15, bottom: 30, left: 40),
              child: Text(
                "DETALHES",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 15,
                  fontFamily: "BebasNeue",
                ),
              ),
            ),

            //CORPO
            Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Container(
                          margin: EdgeInsets.only(top: 20),
                          height: 50,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 30),
                                padding: EdgeInsets.only(top: 7),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white
                                ),
                                child: Text(
                                  "00",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.black,
                                      letterSpacing: 2,
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "BebasNeue",
                                    )
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 15),
                                child: Text(
                                    "Classificação Indicativa",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "WorkSans",
                                    )
                                ),
                              )
                            ],
                          ),
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 20, left: 30),
                              child: Text(
                                  "NOME",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "WorkSans",
                                  )
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5, left: 30),
                              child: Text(
                                  "Loren Ipsun Dolor Sit",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "WorkSans",
                                  )
                              ),
                            )
                          ],
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "TRAILER",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "WorkSans",
                                  )
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                height: MediaQuery.of(context).size.width/2.5,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: Colors.white
                                ),
                                child: Icon(
                                  Icons.play_circle_outline,
                                  size: 50,
                                ),
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "DURAÇÃO",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "WorkSans",
                                  )
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                    "00 h e 00 min",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "WorkSans",
                                    )
                                ),
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "ELENCO",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "WorkSans",
                                  )
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5, right: 50),
                                child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "WorkSans",
                                    )
                                ),
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "SINOPSE",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "WorkSans",
                                  )
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                      fontFamily: "WorkSans",
                                    )
                                ),
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "DIREÇÃO",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "WorkSans",
                                  )
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                    "Lorem ipsum dolor",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                      fontFamily: "WorkSans",
                                    )
                                ),
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "DISTRIBUIDOR",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "WorkSans",
                                  )
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                    "Lorem ipsum dolor",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                      fontFamily: "WorkSans",
                                    )
                                ),
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "PAÍS DE ORIGEM",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "WorkSans",
                                  )
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5, bottom: 50),
                                child: Text(
                                    "Lorem ipsum dolor",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                      fontFamily: "WorkSans",
                                    )
                                ),
                              )
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                )
            )

          ],
        ),
      ),
    );
  }
}
