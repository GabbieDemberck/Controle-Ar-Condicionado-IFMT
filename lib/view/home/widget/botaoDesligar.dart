import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:projeto_ar_condicionad_ifmt2021/controller/desligarTemperaturaController.dart';

class BotaoDeDesligar extends StatelessWidget {
  final BotaoDesligar ligaDesliga = BotaoDesligar();
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return FloatingActionButton(
        backgroundColor:
            (ligaDesliga.ligado ? Colors.greenAccent[700] : Colors.red[400]),
        onPressed: () {
          ligaDesliga.desligar();
        },
        child: Icon(
          Icons.power_settings_new,
        ),
      );
    });
  }
}
