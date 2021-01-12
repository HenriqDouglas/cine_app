import 'package:cine_app/Telas/Carrinho.dart';
import 'package:cine_app/Telas/Detalhes.dart';
import 'package:cine_app/Telas/Perfil.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  _abrirPerfil() {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> Perfil())
    );
  }

  _abrirCarrinho(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>Carrinho())
    );
  }

  _abrirDetalhes(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>Detalhes())
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
                top: 50,
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
              top: 70,
              left: 30,
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
              top: 170,
              child: Column(
                children: [
                  Container(
                    height: 450,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: CarouselSlider(
                        options: CarouselOptions(
                          height: 500.0,
                          aspectRatio: 16/9,
                          viewportFraction: 0.60,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 4),
                          autoPlayAnimationDuration: Duration(milliseconds: 1000),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                        ),
                        items: [1,2,3].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                child: Image.asset(
                                  "imagens/home/fundo-imagem.png",
                                  fit: BoxFit.contain,
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),

                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    height: 20,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text(
                          "NOME DO FILME",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.normal,
                              fontFamily: "WorkSans"
                          )
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 32),
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Icon(
                              Icons.person_outlined,
                              size: 40,
                            ),
                          ),
                          onTap: _abrirPerfil,
                        ),
                        GestureDetector(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Icon(
                              Icons.favorite_outline,
                              size: 40,
                            ),
                          ),
                        ),
                        GestureDetector(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Icon(
                              Icons.info_outline_rounded,
                              size: 40,
                            ),
                          ),
                          onTap: _abrirDetalhes,
                        ),
                        GestureDetector(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Icon(
                              Icons.shopping_cart_outlined,
                              size: 40,
                            ),
                          ),
                          onTap: _abrirCarrinho,
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
