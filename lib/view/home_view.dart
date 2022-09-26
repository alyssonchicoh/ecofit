import 'dart:ffi';

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color corFundo = const Color.fromARGB(227, 13, 28, 78).withOpacity(0.73);

    return Scaffold(
      body: Container(
        color: corFundo,
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.20,
                  child: Image.network(
                    "https://vejasp.abril.com.br/wp-content/uploads/2017/02/encomenda.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.20,
                  color: corFundo,
                  child: SafeArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            left: 10,
                            top: 10,
                            right: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "images/logo.png",
                                height: 50,
                                width: 50,
                              ),
                              criarTexto("Página Principal", 15, Colors.white),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 10,
                            top: 10,
                            bottom: 20,
                          ),
                          child: Column(
                            children: [
                              Center(
                                child: criarTexto("Olá,", 15, Colors.white),
                              ),
                              Container(
                                height: 10,
                              ),
                              Center(
                                child: criarTexto("Alysson", 30, Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.80,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
              ),
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    criarTexto(
                      "Últimas Encomendas",
                      20,
                      const Color.fromARGB(227, 13, 28, 78),
                    ),
                    Container(
                      height: 20,
                    ),
                    criarEncomenda(),
                    criarSeparador(context),
                    criarEncomenda(),
                    criarSeparador(context),
                    criarEncomenda(),
                    criarSeparador(context),
                    criarEncomenda(),
                    criarSeparador(context),
                    criarEncomenda(),
                    criarSeparador(context),
                    criarEncomenda(),
                    Container(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: criarTexto(
                        "Ver Todas (50)",
                        15,
                        const Color.fromARGB(227, 13, 28, 78),
                      ),
                    ),
                    Container(
                      height: 40,
                    ),
                    criarTexto(
                      "Ações",
                      20,
                      const Color.fromARGB(227, 13, 28, 78),
                    ),
                    Container(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green.withOpacity(0.9),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),
                                  ),
                                  margin: const EdgeInsets.only(
                                    right: 5,
                                  ),
                                  height: 150,
                                  child: Column(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                          top: 10,
                                          right: 10,
                                        ),
                                        child: const Align(
                                          alignment: Alignment.topRight,
                                          child: Icon(
                                            Icons.plus_one_outlined,
                                            size: 45,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                          top: 10,
                                          left: 10,
                                        ),
                                        child: Center(
                                          child: criarTexto(
                                            "Cadastrar Encomenda",
                                            25,
                                            Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey.withOpacity(0.9),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),
                                  ),
                                  margin: const EdgeInsets.only(
                                    left: 5,
                                  ),
                                  height: 150,
                                  child: Column(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                          top: 10,
                                          right: 10,
                                        ),
                                        child: const Align(
                                          alignment: Alignment.topRight,
                                          child: Icon(
                                            Icons.search,
                                            size: 45,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                          top: 10,
                                          left: 10,
                                        ),
                                        child: Center(
                                          child: criarTexto(
                                            "Consultar Encomenda",
                                            25,
                                            Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.brown.withOpacity(0.9),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),
                                  ),
                                  margin: const EdgeInsets.only(
                                    right: 5,
                                  ),
                                  height: 150,
                                  child: Column(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                          top: 10,
                                          right: 10,
                                        ),
                                        child: const Align(
                                          alignment: Alignment.topRight,
                                          child: Icon(
                                            Icons.engineering,
                                            size: 45,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                          top: 10,
                                          left: 10,
                                        ),
                                        child: Center(
                                          child: criarTexto(
                                            "Abrir Configurações",
                                            25,
                                            Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent.withOpacity(0.90),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),
                                  ),
                                  margin: const EdgeInsets.only(
                                    left: 5,
                                  ),
                                  height: 150,
                                  child: Column(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                          top: 10,
                                          right: 10,
                                        ),
                                        child: const Align(
                                          alignment: Alignment.topRight,
                                          child: Icon(
                                            Icons.logout,
                                            size: 45,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                          top: 10,
                                          left: 10,
                                        ),
                                        child: Center(
                                          child: criarTexto(
                                            "Sair do Aplicativo",
                                            25,
                                            Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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

  Widget criarTexto(String texto, double tamanho, Color cor,
      [bool negrito = true]) {
    return Text(
      texto,
      style: TextStyle(
        color: cor,
        fontSize: tamanho,
        fontWeight: negrito ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }

  Widget criarEncomenda() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        criarTexto("Bloco 32 - 402", 15, Colors.blueGrey),
        criarTexto("16/09/2022 17:30", 15, Colors.blueGrey),
        const Icon(
          Icons.keyboard_arrow_right_outlined,
          size: 30,
          color: Color.fromARGB(227, 13, 28, 78),
        ),
      ],
    );
  }

  Widget criarSeparador(context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, bottom: 5),
      height: 1,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey,
    );
  }
}
