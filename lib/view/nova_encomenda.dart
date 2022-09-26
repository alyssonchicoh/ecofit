import 'package:flutter/material.dart';

class NovaEncomendaView extends StatelessWidget {
  const NovaEncomendaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String selectedValue = "Bloco";
    String selectedValue2 = "Apartamento";

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Nova Encomenda",
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors

                Row(
                  children: [
                    SizedBox(
                      width: (MediaQuery.of(context).size.width - 30) / 2,
                      child: DropdownButton(
                        itemHeight: 65,
                        isExpanded: true,
                        style: const TextStyle(
                          color: Colors.black, //Font color
                          fontSize: 15, //font size on dropdown button
                        ),
                        value: selectedValue,
                        items: dropdownItems,
                        onChanged: (String? value) {},
                      ),
                    ),
                    Container(
                      width: 10,
                    ),
                    SizedBox(
                      width: (MediaQuery.of(context).size.width - 30) / 2,
                      child: DropdownButton(
                        itemHeight: 65,
                        isExpanded: true,
                        style: const TextStyle(
                          color: Colors.black, //Font color
                          fontSize: 15, //font size on dropdown button
                        ),
                        value: selectedValue2,
                        items: dropdownItems,
                        onChanged: (String? value) {},
                      ),
                    ),
                  ],
                ),

                Container(
                  height: 20,
                ),

                SizedBox(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(
                        left: 10,
                        top: 10,
                      ),
                      border: InputBorder.none,
                      hintText: "Transportadora",
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                    obscureText: false,
                    keyboardType: TextInputType.text,
                  ),
                ),

                Container(
                  height: 20,
                ),

                SizedBox(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(
                        left: 10,
                        top: 10,
                      ),
                      border: InputBorder.none,
                      hintText: "Local de Armazenamento",
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                    obscureText: false,
                    keyboardType: TextInputType.text,
                  ),
                ),
                Container(
                  height: 20,
                ),

                SizedBox(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(
                        bottom: 100,
                        left: 10,
                        top: 10,
                      ),
                      border: InputBorder.none,
                      hintText: "Observações",
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                    obscureText: false,
                    keyboardType: TextInputType.text,
                  ),
                ),

                Container(
                  height: 20,
                ),

                const Text(
                  "Quantidade de Pacotes",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),

                Container(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.blue,
                      child: const Center(
                        child: Text(
                          "1",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      width: 10,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.grey,
                      child: const Center(
                        child: Text(
                          "2",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      width: 10,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.grey,
                      child: const Center(
                        child: Text(
                          "3",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      width: 10,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.grey,
                      child: const Center(
                        child: Text(
                          "4",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      width: 10,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.grey,
                      child: const Center(
                        child: Text(
                          "5",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      width: 10,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.grey,
                      child: const Center(
                        child: Text(
                          "+",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      width: 10,
                    ),
                  ],
                ),
                Container(
                  height: 340,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 20,
                  height: 50,
                  color: Colors.green,
                  child: const Center(
                    child: Text(
                      "Salvar",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(
          child: Text(
            "Bloco",
          ),
          value: "Bloco"),
      DropdownMenuItem(child: Text("Apartamento"), value: "Apartamento"),
      DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
      DropdownMenuItem(child: Text("England"), value: "England"),
    ];
    return menuItems;
  }
}
