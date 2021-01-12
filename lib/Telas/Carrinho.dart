import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Carrinho extends StatefulWidget {
  @override
  _CarrinhoState createState() => _CarrinhoState();
}

class _CarrinhoState extends State<Carrinho> {
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
                "SESSÕES",
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
                  //height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [

                          //DATAS
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 60,
                            padding: EdgeInsets.only(left: 20, right: 20),

                            child: ListView (
                              scrollDirection: Axis.horizontal,
                              children: [
                                Container(
                                  width: 60,
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('imagens/carrinho/data-nao-selecionada.png'),
                                          fit: BoxFit.contain
                                      )
                                  ),
                                ),
                                Container(
                                  width: 60,
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('imagens/carrinho/data-nao-selecionada.png'),
                                          fit: BoxFit.contain
                                      )
                                  ),
                                ),
                                Container(
                                  width: 60,
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('imagens/carrinho/data-nao-selecionada.png'),
                                          fit: BoxFit.contain
                                      )
                                  ),
                                ),
                                Container(
                                  width: 60,
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('imagens/carrinho/data-selecionada.png'),
                                          fit: BoxFit.contain
                                      )
                                  ),
                                ),
                                Container(
                                  width: 60,
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('imagens/carrinho/data-nao-selecionada.png'),
                                          fit: BoxFit.contain
                                      )
                                  ),
                                ),
                                Container(
                                  width: 60,
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('imagens/carrinho/data-nao-selecionada.png'),
                                          fit: BoxFit.contain
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //HORÁRIOS
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 80,
                            padding: EdgeInsets.only(left: 20, right: 20),

                            child: ListView (
                              scrollDirection: Axis.horizontal,
                              children: [
                                Container(
                                  width: 80,
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('imagens/carrinho/horario-nao-selecionado.png'),
                                          fit: BoxFit.contain
                                      )
                                  ),
                                ),
                                Container(
                                  width: 80,
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('imagens/carrinho/horario-nao-selecionado.png'),
                                          fit: BoxFit.contain
                                      )
                                  ),
                                ),
                                Container(
                                  width: 80,
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('imagens/carrinho/horario-selecionado.png'),
                                          fit: BoxFit.contain
                                      )
                                  ),
                                ),
                                Container(
                                  width: 80,
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('imagens/carrinho/horario-nao-selecionado.png'),
                                          fit: BoxFit.contain
                                      )
                                  ),
                                ),
                                Container(
                                  width: 80,
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('imagens/carrinho/horario-nao-selecionado.png'),
                                          fit: BoxFit.contain
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //TELA
                          Container(
                            width: 300,
                            margin: EdgeInsets.only(top: 15),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(width: 2, color: Colors.white),
                              ),
                            ),
                            child: Text(
                                "TELA",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 15,
                                  fontFamily: "BebasNeue",
                                )
                            ),
                          ),

                          //ASSENTOS
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 600,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    //ESQUERDO
                                    Container(
                                      width:  MediaQuery.of(context).size.width/2.3,
                                      height: 525,
                                      child: GridView.count(
                                        crossAxisCount: 4,
                                        physics: const NeverScrollableScrollPhysics(),
                                        children: List.generate(40, (index) {
                                          return Center(
                                            child: Container(
                                              margin: EdgeInsets.all(2.5),
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage('imagens/carrinho/assentos/assento-esquerdo-disponivel.png')
                                                  )
                                              ),
                                            ),
                                          );
                                        }),
                                      ),
                                    ),

                                    //DIREITO
                                    Container(
                                      width: MediaQuery.of(context).size.width/2.3,
                                      height: 525,
                                      child: GridView.count(
                                        crossAxisCount: 4,
                                        physics: const NeverScrollableScrollPhysics(),
                                        children: List.generate(40, (index) {
                                          return Center(
                                            child: Container(
                                              margin: EdgeInsets.all(2.5),
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage('imagens/carrinho/assentos/assento-direito-disponivel.png')
                                                  )
                                              ),
                                            ),
                                          );
                                        }),
                                      ),
                                    ),
                                  ],
                                ),

                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('imagens/carrinho/assentos/assento-esquerdo-selecionado.png'),
                                                fit: BoxFit.contain
                                            )
                                        ),
                                      ),
                                      Text(
                                        "SELECIONADO",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          decoration: TextDecoration.none,
                                          fontFamily: "BebasNeue",
                                        ),
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('imagens/carrinho/assentos/assento-esquerdo-reservado.png'),
                                                fit: BoxFit.contain
                                            )
                                        ),
                                      ),
                                      Text(
                                        "RESERVADO",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          decoration: TextDecoration.none,
                                          fontFamily: "BebasNeue",
                                        ),
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('imagens/carrinho/assentos/assento-esquerdo-disponivel.png'),
                                                fit: BoxFit.contain
                                            )
                                        ),
                                      ),
                                      Text(
                                        "DISPONÍVEL",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          decoration: TextDecoration.none,
                                          fontFamily: "BebasNeue",
                                        ),
                                      ),
                                    ],
                                  ),
                                )

                              ],
                            ),
                          ),

                          //PIPOCA E BEBIDA
                          Container(
                            child: Column(
                              children: [

                                //PIPOCA
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "PIPOCA & BEBIDA",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 30,
                                          letterSpacing: 9,
                                          color: Colors.white,
                                          decoration: TextDecoration.none,
                                          fontFamily: "BebasNeue",
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        width: MediaQuery.of(context).size.width/5,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('imagens/carrinho/pipoca-e-bebida/icon-popcorn.png')
                                            )
                                        ),
                                      )
                                    ],
                                  ),
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 30),
                                          padding: EdgeInsets.only(top: 45),
                                          height: 100,
                                          width: MediaQuery.of(context).size.width/5,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage('imagens/carrinho/pipoca-e-bebida/icon-popcorn.png')
                                              )
                                          ),
                                          child: Text(
                                            "P",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 30,
                                              letterSpacing: 0,
                                              color: Colors.white,
                                              decoration: TextDecoration.none,
                                              fontFamily: "BebasNeue",
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 10),
                                          child: Text(
                                            "PEQUENO",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 20,
                                              letterSpacing: 0,
                                              color: Colors.white,
                                              decoration: TextDecoration.none,
                                              fontFamily: "BebasNeue",
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 30),
                                          padding: EdgeInsets.only(top: 45),
                                          height: 100,
                                          width: MediaQuery.of(context).size.width/5,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage('imagens/carrinho/pipoca-e-bebida/icon-popcorn.png')
                                              )
                                          ),
                                          child: Text(
                                            "M",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 30,
                                              letterSpacing: 0,
                                              color: Colors.white,
                                              decoration: TextDecoration.none,
                                              fontFamily: "BebasNeue",
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 10),
                                          child: Text(
                                            "MÉDIO",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 20,
                                              letterSpacing: 0,
                                              color: Colors.white,
                                              decoration: TextDecoration.none,
                                              fontFamily: "BebasNeue",
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 30),
                                          padding: EdgeInsets.only(top: 45),
                                          height: 100,
                                          width: MediaQuery.of(context).size.width/5,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage('imagens/carrinho/pipoca-e-bebida/icon-popcorn.png')
                                              )
                                          ),
                                          child: Text(
                                            "G",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 30,
                                              letterSpacing: 0,
                                              color: Colors.white,
                                              decoration: TextDecoration.none,
                                              fontFamily: "BebasNeue",
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 10),
                                          child: Text(
                                            "GRANDE",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 20,
                                              letterSpacing: 0,
                                              color: Colors.white,
                                              decoration: TextDecoration.none,
                                              fontFamily: "BebasNeue",
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 30),
                                          padding: EdgeInsets.only(top: 45),
                                          height: 100,
                                          width: MediaQuery.of(context).size.width/5,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage('imagens/carrinho/pipoca-e-bebida/icon-popcorn.png')
                                              )
                                          ),
                                          child: Text(
                                            "B",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 30,
                                              letterSpacing: 0,
                                              color: Colors.white,
                                              decoration: TextDecoration.none,
                                              fontFamily: "BebasNeue",
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 10),
                                          child: Text(
                                            "BALDE",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 20,
                                              letterSpacing: 0,
                                              color: Colors.white,
                                              decoration: TextDecoration.none,
                                              fontFamily: "BebasNeue",
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),

                                //BEBIDA
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 30),
                                          padding: EdgeInsets.only(top: 45),
                                          height: 100,
                                          width: MediaQuery.of(context).size.width/4,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage('imagens/carrinho/pipoca-e-bebida/icon-bottle.png'),
                                              )
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 10),
                                          child: Text(
                                            "ÁGUA",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 20,
                                              letterSpacing: 0,
                                              color: Colors.white,
                                              decoration: TextDecoration.none,
                                              fontFamily: "BebasNeue",
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 30),
                                          padding: EdgeInsets.only(top: 45),
                                          height: 100,
                                          width: MediaQuery.of(context).size.width/4,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage('imagens/carrinho/pipoca-e-bebida/icon-bottle.png'),
                                              )
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 10),
                                          child: Text(
                                            "SUCO",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 20,
                                              letterSpacing: 0,
                                              color: Colors.white,
                                              decoration: TextDecoration.none,
                                              fontFamily: "BebasNeue",
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 30),
                                          padding: EdgeInsets.only(top: 45),
                                          height: 100,
                                          width: MediaQuery.of(context).size.width/4,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage('imagens/carrinho/pipoca-e-bebida/icon-bottle.png'),
                                              )
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 10),
                                          child: Text(
                                            "REFRIGERANTE",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 20,
                                              letterSpacing: 0,
                                              color: Colors.white,
                                              decoration: TextDecoration.none,
                                              fontFamily: "BebasNeue",
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                )

                              ],
                            ),
                          )

                        ],
                      )
                  ),
                )
            ),

            //SEU TICKET
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/5,
              decoration: BoxDecoration(
                color: Color.fromRGBO(242, 203, 4, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100)
                )
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 50),
                        child: Container(
                          margin: EdgeInsets.only(left: 75, right: 50),
                          child: Text(
                              "SEU TICKET",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 35,
                                letterSpacing: 5,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(39, 37, 38, 1),
                                decoration: TextDecoration.none,
                                fontFamily: "BebasNeue",
                              )
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          height: 50,
                          width: 70,
                          child: Icon(
                            Icons.close,
                            size: 30,
                          ),
                        ),
                        onTap: (){
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 35, top: 5),
                    child: Row(
                      children: [

                        Container(
                          margin: EdgeInsets.only(left: 15, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "DIA",
                                  style: TextStyle(
                                    fontSize: 20,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromRGBO(39, 37, 38, 1),
                                    decoration: TextDecoration.none,
                                    fontFamily: "BebasNeue",
                                  )
                              ),
                              Text(
                                  "00/00",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(39, 37, 38, 1),
                                    decoration: TextDecoration.none,
                                    fontFamily: "BebasNeue",
                                  )
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "HORA",
                                  style: TextStyle(
                                    fontSize: 20,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromRGBO(39, 37, 38, 1),
                                    decoration: TextDecoration.none,
                                    fontFamily: "BebasNeue",
                                  )
                              ),
                              Text(
                                  "00:00",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(39, 37, 38, 1),
                                    decoration: TextDecoration.none,
                                    fontFamily: "BebasNeue",
                                  )
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "QUANT",
                                  style: TextStyle(
                                    fontSize: 20,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromRGBO(39, 37, 38, 1),
                                    decoration: TextDecoration.none,
                                    fontFamily: "BebasNeue",
                                  )
                              ),
                              Text(
                                  "00",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(39, 37, 38, 1),
                                    decoration: TextDecoration.none,
                                    fontFamily: "BebasNeue",
                                  )
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "PIPOCA",
                                  style: TextStyle(
                                    fontSize: 20,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromRGBO(39, 37, 38, 1),
                                    decoration: TextDecoration.none,
                                    fontFamily: "BebasNeue",
                                  )
                              ),
                              Text(
                                  "00",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(39, 37, 38, 1),
                                    decoration: TextDecoration.none,
                                    fontFamily: "BebasNeue",
                                  )
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "BEBIDA",
                                  style: TextStyle(
                                    fontSize: 20,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromRGBO(39, 37, 38, 1),
                                    decoration: TextDecoration.none,
                                    fontFamily: "BebasNeue",
                                  )
                              ),
                              Text(
                                  "00",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(39, 37, 38, 1),
                                    decoration: TextDecoration.none,
                                    fontFamily: "BebasNeue",
                                  )
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 350,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(39, 37, 38, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)
                      )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                            "R\$ 00,00",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 4,
                              decoration: TextDecoration.none,
                              fontFamily: "BebasNeue",
                            )
                        ),
                        Text(
                            "FINALIZAR",
                            style: TextStyle(
                              fontSize: 22.5,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                              decoration: TextDecoration.none,
                              fontFamily: "WorkSans",
                            )
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
