import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:projeto_ar_condicionad_ifmt2021/controller/temperaturaController.dart';

class BotaoTemperatura extends StatelessWidget {
  final Temperatura temp = Temperatura();
  @override
  Widget build(BuildContext context) {
    final tamanhoDaTela = MediaQuery.of(context).size.height -
        (AppBar().preferredSize.height) -
        MediaQuery.of(context).padding.top;
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Temperatura',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.green[400],
                    fontWeight: FontWeight.bold),
              ),
              Observer(
                builder: (_) => Text(
                  '${temp.temperatura}ºC',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          width: MediaQuery.of(context).size.width * 90 / 100,
          height: tamanhoDaTela * 27 / 100,
        ),
        Container(
          padding: EdgeInsets.only(top: 20),
          width: MediaQuery.of(context).size.width * 90 / 100,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    //Botão de Aumentar
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.greenAccent[700],
                            borderRadius: BorderRadius.circular(100)),
                        width: 100,
                        height: 100,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 40,
                        )),
                    onPressed: () {
                      temp.aumentar();
                    },
                  ),
                  TextButton(
                    //Botão de Diminuir
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.greenAccent[700],
                            borderRadius: BorderRadius.circular(100)),
                        width: 100,
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 25),
                          child: Icon(
                            Icons.minimize,
                            color: Colors.white,
                            size: 40,
                          ),
                        )),
                    onPressed: () {
                      temp.diminuir();
                    },
                  ),
                ],
              ),
              Padding(
                //Nomes Dos Botões
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Aumentar',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.greenAccent[700],
                          fontWeight: FontWeight.bold),
                    ),
                    Text('Diminuir',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.greenAccent[700],
                            fontWeight: FontWeight.bold))
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
